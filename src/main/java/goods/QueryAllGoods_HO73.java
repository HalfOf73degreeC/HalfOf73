package goods;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

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

@WebServlet("/goods/queryAllGoods_HO73.do")
public class QueryAllGoods_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		GoodsService service = ctx.getBean(GoodsService.class);
		List<GoodsBean_HO73> allGoods = service.getAllGoods();
		request.setAttribute("AllGoods", allGoods);
		RequestDispatcher rd = request.getRequestDispatcher("goods.jsp");
		rd.forward(request, response);
		return;
	}
}
