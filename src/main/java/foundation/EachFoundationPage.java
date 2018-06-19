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

import model.bean.FoundationBean_HO73;
import model.repository.FoundationDao;
import model.repository.impl.FoundationDaoImpl;


@WebServlet("/foundation/eachFoundationPage.do")
public class EachFoundationPage extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebApplicationContext ctx = 
			WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		FoundationDao foundationDao = ctx.getBean(FoundationDao.class);

		String funIdcard = request.getParameter("funIdcard");
		FoundationBean_HO73 fb = foundationDao.getOneFoundation(funIdcard);

		System.out.println("愛心碼: " + funIdcard);
		System.out.println("基金會帳號"+fb.getFunAccount());
		request.setAttribute("foundationBean", fb);
		RequestDispatcher rd = request.getRequestDispatcher("/foundation/foundation_detail.jsp");
		rd.forward(request, response);
		return;
	}
}
