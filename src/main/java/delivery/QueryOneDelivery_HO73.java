package delivery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DeliveryBean_HO73;
import model.repository.DeliveryDao;
import model.repository.impl.DeliveryDaoImpl;

@WebServlet("/delivery/queryOneDelivery_HO73.do")
public class QueryOneDelivery_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DeliveryDao ddao = new DeliveryDaoImpl();
		Integer deliveryUid = Integer.parseInt(request.getParameter("deliveryUid"));
		DeliveryBean_HO73 db = ddao.getOneDelivery(deliveryUid);
		request.setAttribute("DeliveryBean", db);
		RequestDispatcher rd = request.getRequestDispatcher("/shoppingCart/shoppingCart2.jsp");
		rd.forward(request, response);
		return;
	}
}
