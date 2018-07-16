package supply;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.service.SupplyService;


@WebServlet("/supply/getSupplyImgBySupUid")
public class getSupplyImgBySupUid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer supUid = Integer.parseInt(request.getParameter("supUid"));
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		SupplyService ss = ctx.getBean(SupplyService.class);
		String gString = ss.getOneSupplyAllImg2String(supUid);
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

}
