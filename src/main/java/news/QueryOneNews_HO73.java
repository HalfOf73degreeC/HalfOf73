package news;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
<<<<<<< HEAD
import model.bean.GoodsBean_HO73;
=======
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.GoodsBean_HO73;
import model.bean.NewsBean_HO73;
<<<<<<< HEAD
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
import model.repository.GoodsDao;
import model.repository.NewsDao;
import model.repository.impl.GoodsDaoImpl;

@WebServlet("/goods/queryOneNews_HO73.do")
public class QueryOneNews_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebApplicationContext ctx = 
			WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		NewsDao ndao = ctx.getBean(NewsDao.class);
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
