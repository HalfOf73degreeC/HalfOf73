package goods;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.GoodsBean_HO73;
import model.service.GoodsService;

@WebServlet("/goods/queryOneGoods_HO73.do")
public class QueryOneGoods_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer goodsUid = Integer.parseInt(request.getParameter("goodsUid"));
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		GoodsService service = ctx.getBean(GoodsService.class);
		GoodsBean_HO73 gb = service.getOneGoods(goodsUid);
		int viewsCount = gb.getGoodsView();
		viewsCount ++;
		gb.setGoodsView(viewsCount);
		service.update(gb);
		request.setAttribute("goodsBean", gb);
		RequestDispatcher rd = request.getRequestDispatcher("goodsDetail.jsp");
		rd.forward(request, response);
		return;
	}
}
