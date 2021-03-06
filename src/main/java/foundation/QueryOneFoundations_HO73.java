package foundation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import member.MemberDAO;
import model.bean.FoundationBean_HO73;
import model.bean.MemberBean_HO73;
import model.repository.FoundationDao;
import model.repository.impl.FoundationDaoImpl;



@WebServlet("/foundation/queryOneFoundation_HO73.do")
public class QueryOneFoundations_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		FoundationDao foundationDao = ctx.getBean(FoundationDao.class);
		String funIdcard = request.getParameter("funIdcard");
		String funAccount = request.getParameter("funAccount");
		FoundationBean_HO73 fb;
		if(foundationDao.getOneFoundation(funIdcard) !=null) {
			fb = foundationDao.getOneFoundation(funIdcard);
			System.out.println("funIdcard= "+funIdcard);
			System.out.println("funArea= "+fb.getFunArea());
		}else{
			MemberDAO mdao = new MemberDAO();			
			MemberBean_HO73 mb = mdao.getOneMember(funAccount);
			String funName=mb.getMemName();
			String funImage=mb.getMemPicUrl();
			String funEmail=mb.getMemEmail();
			fb = new FoundationBean_HO73(funIdcard, funName, funImage, funEmail);
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
