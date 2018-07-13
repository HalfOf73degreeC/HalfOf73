package goods;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.DeliveryBean_HO73;
import model.bean.GoodsBean_HO73;
import model.bean.PaymentBean_HO73;
import model.service.DeliveryService;
import model.service.GoodsService;
import model.service.PaymentService;

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
		

		DeliveryService ds = ctx.getBean(DeliveryService.class);
		PaymentService ps = ctx.getBean(PaymentService.class);
		List<DeliveryBean_HO73> list = ds.getAllDelivery();
		request.setAttribute("AllDelivery", list);
		List<PaymentBean_HO73> payList = ps.getAllPayment();
		request.setAttribute("AllPayment", payList);
		
		RequestDispatcher rd = request.getRequestDispatcher("goodsDetail.jsp");
		rd.forward(request, response);
		return;
	}
}
