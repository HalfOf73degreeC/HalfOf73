package news;

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
import model.bean.NewsBean_HO73;
import model.repository.GoodsDao;
import model.repository.NewsDao;
import model.repository.impl.GoodsDaoImpl;
import model.service.NewsService;

@WebServlet("/goods/queryOneNews")
public class queryOneNews_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		NewsService ns = ctx.getBean(NewsService.class);
		Integer newsUid = (Integer) request.getAttribute("newsUid");
		String gString = ns.getOneNews2String(newsUid); 
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
		NewsService ns = ctx.getBean(NewsService.class);
		// mdao.setPageNo(pageNo);
		String gString = ns.getAllNews2String(); 
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}
}
