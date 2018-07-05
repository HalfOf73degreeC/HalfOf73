package foundationView;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.service.payBoxService;

/**
 * Servlet implementation class getMemberPage
 */
@WebServlet("/foundationView/addOnePayBoxOut")
public class addOnePayBoxOut extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		WebApplicationContext ctx = 
//				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
//		payBoxService pbs = ctx.getBean(payBoxService.class);
//		// mdao.setPageNo(pageNo);
//		String gString = pbs.getAllPayBoxes2String(); 
//		response.setContentType("application/json; charset=UTF8");
//		try (PrintWriter out = response.getWriter();) {
//			out.println(gString);
//		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		payBoxService fs = ctx.getBean(payBoxService.class);
		Integer payBoxNumber = Integer.valueOf(request.getParameter("payBoxNumber"));
		String fk_payIdcard = request.getParameter("fk_payIdcard");
		String payForName = request.getParameter("payForName");
		String payForDetail = request.getParameter("payForDetail");
		Integer payForCost = Integer.valueOf(request.getParameter("payForCost"));
		String receipt = request.getParameter("receipt");		
		fs.addOnePayBoxOut2String(payBoxNumber, fk_payIdcard, payForName, payForDetail, payForCost, receipt);
		String gString = fs.queryOnePaybox2String(payBoxNumber);
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

}
