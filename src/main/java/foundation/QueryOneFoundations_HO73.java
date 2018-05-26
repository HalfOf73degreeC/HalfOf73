package foundation;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import model.FoundationBean_HO73;
import model.MemberBean_HO73;



@WebServlet("/foundation/queryOneFoundation_HO73.do")
public class QueryOneFoundations_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		FoundationDAO fdao = new FoundationDAO();
		String funAccount = (String) request.getSession().getAttribute("memAccount");
		System.out.println("funAccount= "+funAccount);
		FoundationBean_HO73 fb;
		if(fdao.getOneFoundation(funAccount).getFunAccount()!=null) {
			fb = fdao.getOneFoundation(funAccount);
		}else{
			MemberDAO mdao = new MemberDAO();			
			MemberBean_HO73 mb = mdao.getOneMember(funAccount);
			String funName=mb.getMemName();
			String funImage=mb.getMemPicUrl();
			String funEmail=mb.getMemEmail();
			fb = new FoundationBean_HO73(funAccount, funName, funImage, funEmail);
//			try {
//				fdao.saveFoundationBean(fb);
//				System.out.println("新建一筆foundation: " + funAccount);
//			} catch (SQLException e) {
//				System.out.println("新建foundation失敗..");
//				e.printStackTrace();
//			}
		}		
		request.setAttribute("foundationBean", fb);
		RequestDispatcher rd = request.getRequestDispatcher("/foundation/foundation_register.jsp");
		rd.forward(request, response);
		return;
	}
}
