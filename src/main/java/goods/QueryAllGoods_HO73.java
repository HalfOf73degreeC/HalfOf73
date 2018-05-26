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

import model.GoodsBean_HO73;
import model.repository.GoodsDao;
import model.repository.impl.GoodsDaoImpl;

@WebServlet("/goods/queryAllGoods_HO73.do")
public class QueryAllGoods_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		GoodsDao gdao = new GoodsDaoImpl();
		Collection<GoodsBean_HO73> coll = gdao.getAllGoods();
		request.setAttribute("AllGoods", coll);
		RequestDispatcher rd = request.getRequestDispatcher("/goods/goods.jsp");
		rd.forward(request, response);
		return;
	}
}
