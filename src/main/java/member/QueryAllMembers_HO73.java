package member;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.MemberBean_HO73;

@WebServlet("/member/queryAllMembers_HO73.do")
public class QueryAllMembers_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDAO rs = new MemberDAO();
		Collection<MemberBean_HO73> coll = rs.getAllMembers();
		request.setAttribute("AllMembers", coll);
		RequestDispatcher rd = request.getRequestDispatcher("/member/showAllMembers_HO73.jsp");
		rd.forward(request, response);
		return;
	}
}
