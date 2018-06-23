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
import model.bean.PaymentBean_HO73;
import model.service.DeliveryService;
import model.service.PaymentService;

@WebServlet("/goods/BuyGoodsSend.do")
public class BuyGoodsSend_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		DeliveryService service = ctx.getBean(DeliveryService.class);
		PaymentService pservice = ctx.getBean(PaymentService.class);

		List<DeliveryBean_HO73> list = service.getAllDelivery();
		request.setAttribute("AllDelivery", list);
		

		List<PaymentBean_HO73> payList = pservice.getAllPayment();
		request.setAttribute("AllPayment", payList);
		RequestDispatcher rd = request.getRequestDispatcher("goodsCarts2.jsp");
		rd.forward(request, response);
		return;
	
	}
}
