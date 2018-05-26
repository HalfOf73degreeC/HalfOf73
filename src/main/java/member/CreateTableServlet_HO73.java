package member;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.sql.*;

import javax.sql.*;

import _00.utils.GlobalService;

import javax.management.RuntimeErrorException;
import javax.naming.*;

@WebServlet("/member/createMember_HO73.do")
public class CreateTableServlet_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String sqlDropBLOBTable = "Drop TABLE Member_HO73";
        // MySQL 
		
		 String sqlCreateBLOBTable =
		 "CREATE TABLE Member_HO73 ("
		 + " memAccount varchar(50) PRIMARY KEY, memName varchar(50), memIdcard varchar(20), memEmail varchar(100), "
		 + " memEmail2 varchar(100), memGender  varchar(2), memBirthday datetime, "
		 + " memTel varchar(20), memMobile  varchar(20), memAddress varchar(225), "
		 + " memType int, memFoundation int, memWhySupply varchar(225), insertDate datetime,"
		 + " memStatus int, memPicUrl varchar(225)) "
		 + " ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci";
		
		 
//		String sqlCreateBLOBTable = "CREATE TABLE MemberExample (PK int PRIMARY KEY identity, "
//				+ " account varchar(32), password varchar(32), name varchar(32), email varchar(64), "
//				+ " tel  varchar(15), experience int) ";
		Statement stmt = null;
		Connection conn = null;

		List<String> errorMsgs = new ArrayList<String>();
		req.setAttribute("errorMsgs", errorMsgs);
		List<String> messages = new ArrayList<String>();
		req.setAttribute("messages", messages);
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context
					.lookup(GlobalService.JNDI_NAME_MySQL);
			conn = ds.getConnection();
			stmt = conn.createStatement();
			stmt.executeUpdate(sqlDropBLOBTable);
			messages.add("刪除表格 MemberExample 成功");
		} catch (NamingException e) {
			throw new ServletException(e);
		} catch (SQLException e) {
			String msg = e.getMessage();
			System.out.println("msg=" + msg);
			if (msg.indexOf("Connection refused") != -1){
				throw new RuntimeException("連線被拒...");
			}
			messages.add("刪除表格 MemberExample 失敗, " + e.getMessage());
			
		}
		try {
			stmt.executeUpdate(sqlCreateBLOBTable);
			messages.add("建立表格 MemberExample 成功");
			RequestDispatcher rd = req
					.getRequestDispatcher("/member/success.jsp");
			rd.forward(req, res);
		} catch (SQLException e) {
			messages.add("刪除表格 MemberExample 失敗");
			errorMsgs.add(e.getMessage());
			RequestDispatcher rd = req
					.getRequestDispatcher("/ch04/ex03/createTable/createTableError.jsp");
			rd.forward(req, res);
			return;
		} finally {
			// 這裡一定要 conn.close();
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					;
				}
			}
		}
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}