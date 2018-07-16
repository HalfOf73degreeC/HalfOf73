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


@WebServlet("/goods/getGoodsImgByGoodsUid")
public class getGoodsImgByGoodsUid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer goodsUid = Integer.parseInt(request.getParameter("goodsUid"));
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		GoodsService gs = ctx.getBean(GoodsService.class);
		String gString = gs.getOneGoodsAllImg2String(goodsUid);
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

}
