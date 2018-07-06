package goods;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import goods.OrderItem;
import model.bean.MemberBean_HO73;
import shoppingCart.model.ShoppingCart;

// 當使用者按下『加入購物車』時，瀏覽器會送出請求到本程式
@WebServlet("/goods/BuyGoods.do")
public class BuyGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 只要舊的Session物件，如果找不到，不要建立新的Session物件，直接傳回 null
		HttpSession session = request.getSession(false); 
		PrintWriter out = response.getWriter();
		if (session == null) {      
			// 如果傳回值為null，表示找不到舊的Session物件，請瀏覽器對首頁發出請求
			response.sendRedirect(getServletContext().getContextPath() + "/index.jsp");
			return;
		}
		MemberBean_HO73 mb = (MemberBean_HO73) session.getAttribute("memberBean");
		if (mb == null) {
			out.println("<script>alert('若需購買義賣商品需登入')</script>");
			out.println("<script>window.location.href='../goods/queryAllGoods_HO73.do'</script>");
//			response.sendRedirect(getServletContext().getContextPath() + "/index.jsp"  );
			return;
		}
		
		// 取出存放在session物件內的ShoppingCart物件
		ShoppingCart cart = (ShoppingCart)session.getAttribute("ShoppingCart");
		// 如果找不到ShoppingCart物件
		if (cart == null) {
			// 就新建ShoppingCart物件
			cart = new ShoppingCart();
			// 並將此新建ShoppingCart的物件放到session物件內，成為它的屬性物件
			session.setAttribute("ShoppingCart", cart);   
		}
		String goodsName 	= request.getParameter("goodsName");
		String funName  	= request.getParameter("funUid");
		String pageNo 		= request.getParameter("pageNo");
		String qtyStr 		= request.getParameter("qty");
		String idStr 		= request.getParameter("goodsUid");
		String priceStr 	= request.getParameter("goodsPrice");
		//String discountStr 	= request.getParameter("discount");
		double deliveryAmt    = 0;
		if (pageNo == null){
			pageNo = "1";
		}
		int qty = 0 ; 
		int goodsUid = 0 ;
		double goodsPrice = 0 ; 
		double discount = 1 ; //目前資料庫未開此欄位先暫時預設1
		
		try{
			// 進行資料型態的轉換
			System.out.println("qtyStr="+ qtyStr);
			qty = Integer.parseInt(qtyStr.trim());
			System.out.println("qty="+qty);
			goodsUid = Integer.parseInt(idStr.trim());
			goodsPrice = Double.parseDouble(priceStr.trim());
			//discount = Double.parseDouble(discountStr.trim());
		} catch(NumberFormatException e){
			throw new ServletException(e); 
		}
		// 將訂單資料封裝到OrderItem物件內
		OrderItem oi = new OrderItem(goodsName, funName, qty, goodsUid, goodsPrice, discount, deliveryAmt);
		// 將OrderItem物件內加入ShoppingCart的物件內
		cart.addToCart(goodsUid, oi);
		RequestDispatcher rd = request.getRequestDispatcher("../goods/goodsCarts1.jsp");
		rd.forward(request, response);
	}
}