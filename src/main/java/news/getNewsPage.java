package news;

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

import model.bean.NewsBean_HO73;
import model.repository.NewsDao;
import model.service.NewsService;

/**
 * Servlet implementation class getMemberPage
 */
@WebServlet("/news/getNewsPage")
public class getNewsPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		NewsService ns = ctx.getBean(NewsService.class);
		// mdao.setPageNo(pageNo);
		String gString = ns.getAllNews2String(); 
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
		NewsService ns = ctx.getBean(NewsService.class);
		String rstring = request.getParameter("newsUid");
		Integer newsUid = Integer.valueOf(rstring);
		
		System.out.println("rstring: "+rstring+", newsUid: "+newsUid);
		String gString = ns.getOneNews2String(newsUid); 
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

}
