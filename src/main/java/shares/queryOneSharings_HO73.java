package shares;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.GoodsBean_HO73;
import model.bean.LoveSharingBean_HO73;
import model.repository.GoodsDao;
import model.repository.SharesDao;
import model.repository.impl.GoodsDaoImpl;
import model.service.LoveSharingService;

@WebServlet("/shares/queryOneSharings")
public class queryOneSharings_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		LoveSharingService ls = ctx.getBean(LoveSharingService.class);
		Integer sharesUid = (Integer) request.getAttribute("sharesUid");
		String gString = ls.getOneSharings2String(sharesUid); 
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}
	
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
}
