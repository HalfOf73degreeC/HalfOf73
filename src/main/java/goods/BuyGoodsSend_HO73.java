package goods;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.DeliveryBean_HO73;
import model.bean.PaymentBean_HO73;
import model.repository.DeliveryDao;
import model.repository.PaymentDao;
import model.repository.impl.DeliveryDaoImpl;
import model.repository.impl.PaymentDaoImpl;

@WebServlet("/goods/BuyGoodsSend.do")
public class BuyGoodsSend_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DeliveryDao ddao = new DeliveryDaoImpl();
		Collection<DeliveryBean_HO73> coll = ddao.getAllDelivery();
		request.setAttribute("AllDelivery", coll);
		
		PaymentDao pdao = new PaymentDaoImpl();
		Collection<PaymentBean_HO73> collPay = pdao.getAllPayment();
		request.setAttribute("AllPayment", collPay);
		RequestDispatcher rd = request.getRequestDispatcher("goodsCarts2.jsp");
		rd.forward(request, response);
		return;
	
	}
}
