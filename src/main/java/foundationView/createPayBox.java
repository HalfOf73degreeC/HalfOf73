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
@WebServlet("/foundationView/createPayBox")
public class createPayBox extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		payBoxService pbs = ctx.getBean(payBoxService.class);
		// mdao.setPageNo(pageNo);
		String gString = pbs.getAllPayBoxes2String(); 
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
		payBoxService pbs = ctx.getBean(payBoxService.class);
		String payATMAccount = request.getParameter("payATMAccount");
		String payBankId = request.getParameter("payBankId");
		String payBoxDetail = request.getParameter("payBoxDetail");
		String payBoxName = request.getParameter("payBoxName");
		Integer payBoxType = Integer.parseInt(request.getParameter("payBoxType"));
		String fk_payIdcard = "1235";
//		String fk_payIdcard = request.getParameter("fk_payIdcard");
		String gString = pbs.creatOnePayBox2String(payBoxName, payBoxDetail, payBankId, payATMAccount, payBoxType, fk_payIdcard); 
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

}
