package paybox;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.google.gson.Gson;

import model.bean.FoundationBean_HO73;
import model.bean.PayBox;
import model.repository.FoundationDao;
import model.service.payBoxService;

/**
 * Servlet implementation class getMemberPage
 */
@WebServlet("/paybox/getFunPaybox")
public class getFunPaybox extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		payBoxService ps = ctx.getBean(payBoxService.class);
		FoundationDao fdao = ctx.getBean(FoundationDao.class);
		FoundationBean_HO73 fb = fdao.getOneFoundation(request.getParameter("funIdcard"));
		// mdao.setPageNo(pageNo);
		List<PayBox> list = ps.getFunPayBoxes(fb);
		Gson gson = new Gson();
		String gString = gson.toJson(list); 
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
