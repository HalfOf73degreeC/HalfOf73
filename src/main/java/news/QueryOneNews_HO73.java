package news;

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

@WebServlet("/goods/queryOneNews_HO73.do")
public class QueryOneNews_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		NewsDao ndao = new NewsDaoImpl();
		Integer newsUid = Integer.parseInt(request.getParameter("NewsUid"));
		NewsBean_HO73 nb = ndao.getOneNew(newsUid);
		int viewsCount = nb.getNewsView();
		viewsCount ++;
		nb.setNewsView(viewsCount);
		ndao.saveOrUpdate(nb);
		System.out.println(viewsCount);
		request.setAttribute("newsBean", nb);
		RequestDispatcher rd = request.getRequestDispatcher("/goods/goodsDetail.jsp");
		rd.forward(request, response);
		return;
	}
}
