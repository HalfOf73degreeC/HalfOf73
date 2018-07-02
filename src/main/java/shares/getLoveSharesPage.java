package shares;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.service.LoveSharingService;


/**
 * Servlet implementation class getMemberPage
 */
@WebServlet("/shares/getLoveSharesPage")
public class getLoveSharesPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		LoveSharingService ls = ctx.getBean(LoveSharingService.class);
		// mdao.setPageNo(pageNo);
		String gString = ls.getAllShares2String(); 
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		LoveSharingService ls = ctx.getBean(LoveSharingService.class);
		String rstring = request.getParameter("sharesUid");
		Integer sharesUid = Integer.valueOf(rstring);
		
		System.out.println("rstring: "+rstring+", sharesUid: " + sharesUid);
		String gString = ls.getOneSharings2String(sharesUid); 
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

}
