package supply;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.DeliveryBean_HO73;
import model.bean.MemberBean_HO73;
import model.service.DeliveryService;
import supplyShoppingCart.model.SupplyShoppingCart;

@WebServlet("/supply/BuySupplySend.do")
public class BuySupplySend_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		HttpSession session = request.getSession(false); 
		PrintWriter out = response.getWriter();
		if (session == null) {      
			// 如果傳回值為null，表示找不到舊的Session物件，請瀏覽器對首頁發出請求
			response.sendRedirect(getServletContext().getContextPath() + "/index.jsp");
			return;
		}
		MemberBean_HO73 mb = (MemberBean_HO73) session.getAttribute("memberBean");
		if (mb == null) {
			out.println("<script>alert('若需捐贈物資需登入')</script>");
			out.println("<script>window.location.href='../supply/queryAllSupply_HO73.do'</script>");
//			response.sendRedirect(getServletContext().getContextPath() + "/index.jsp"  );
			return;
		}
		
		// 取出存放在session物件內的ShoppingCart物件
		SupplyShoppingCart cart = (SupplyShoppingCart)session.getAttribute("SupplyShoppingCart");
		System.out.println("cart="+cart);
		// 如果找不到ShoppingCart物件
		if (cart == null) {
			out.println("<script>alert('無捐贈物品，請重新選取捐贈物品')</script>");
			out.println("<script>window.location.href='../supply/queryAllSupply_HO73.do'</script>");
			return;
		}

		DeliveryService service = ctx.getBean(DeliveryService.class);
		List<DeliveryBean_HO73> list = service.getAllDelivery();
		request.setAttribute("AllDelivery", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("supplyCarts2.jsp");
		rd.forward(request, response);
	
	}
}
