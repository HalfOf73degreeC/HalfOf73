package goods;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.service.GoodsService;
import model.service.NewsService;


@WebServlet("/goods/getGoodsPage")
public class getGoodsPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		GoodsService gs = ctx.getBean(GoodsService.class);
		// mdao.setPageNo(pageNo);
		String gString = gs.getAllGoods2String();
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		GoodsService gs = ctx.getBean(GoodsService.class);
		String rstring = request.getParameter("goodsUid");
		Integer goodsUid = Integer.valueOf(rstring);
		
		System.out.println("rstring: "+rstring+", newsUid: "+goodsUid);
		String gString = gs.getOneGoods2String(goodsUid); 
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

}
