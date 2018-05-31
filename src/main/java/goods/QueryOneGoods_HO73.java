package goods;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GoodsBean_HO73;
import model.repository.GoodsDao;
import model.repository.impl.GoodsDaoImpl;

@WebServlet("/goods/queryOneGoods_HO73.do")
public class QueryOneGoods_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		GoodsDao gdao = new GoodsDaoImpl();
		Integer goodsUid = Integer.parseInt(request.getParameter("goodsUid"));
		GoodsBean_HO73 gb = gdao.getOneGoods(goodsUid);
		int viewsCount = gb.getGoodsView();
		viewsCount ++;
		gb.setGoodsView(viewsCount);
		gdao.update(gb);
		System.out.println(viewsCount);
		request.setAttribute("goodsBean", gb);
		RequestDispatcher rd = request.getRequestDispatcher("/goods/goodsDetail.jsp");
		rd.forward(request, response);
		return;
	}
}
