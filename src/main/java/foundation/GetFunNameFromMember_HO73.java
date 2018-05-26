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

@WebServlet("/foundation/OneFoundation_HO73.do")
public class GetFunNameFromMember_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDAO mdao = new MemberDAO();
		String memAccount = (String) request.getSession().getAttribute("memAccount");
		MemberBean_HO73 mb = mdao.getOneMember(memAccount);
		String funAccount = mb.getMemAccount();
	    String funName = mb.getMemName();
	    String funEmail = mb.getMemEmail();
	    String funImage = mb.getMemPicUrl();
		
        FoundationDAO fdao = new FoundationDAO();
        FoundationBean_HO73 fb = fdao.getOneFoundation(funAccount);
		if (fb.getFunAccount() == null) {
			try {
				FoundationBean_HO73 fun = new FoundationBean_HO73(funAccount, funName, funEmail, funImage);
				fdao.saveFoundationBean(fun);
				System.out.println("資料新增成功");
			} catch (SQLException e) {
				System.out.println("儲存資料時發生錯誤，請檢查，例外=" + e.getMessage());
				e.printStackTrace();
			}
		}
	    response.sendRedirect("queryOneFoundations_HO73.do");
	}
}
