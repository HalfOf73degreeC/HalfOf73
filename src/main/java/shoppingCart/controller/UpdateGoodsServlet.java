package shoppingCart.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoppingCart.model.ShoppingCart;
// 本類別可修改購物車內的商品資料，包括刪除某項商品，修改某項商品的數量
@WebServlet("/shoppingCart/UpdateItem.do")
public class UpdateGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session = null;
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		session = request.getSession(false);
		PrintWriter out = response.getWriter();
		if (session == null) {  
			out.println("<script>alert('若需購買義賣商品需登入')</script>");
			out.println("<script>window.location.href='../goods/queryAllGoods_HO73.do'</script>");
			return;
		}
		//取出session物件內的ShoppingCart物件
		ShoppingCart sc= (ShoppingCart)session.getAttribute("ShoppingCart");
		System.out.println(sc);
		if (sc.getContent() == null) {
			out.println("<script>alert('無購買義賣商品，請重新選取購買項目')</script>");
			out.println("<script>window.location.href='../goods/queryAllGoods_HO73.do'</script>");
			return;
        }
		// cmd可能是DEL或是MOD
		String cmd = request.getParameter("cmd");
		String goodsUidStr = request.getParameter("goodsUid");
		int goodsUid = Integer.parseInt(goodsUidStr.trim());		
		if (cmd.equalsIgnoreCase("DEL")) {
	        sc.deleteBook(goodsUid); // 刪除購物車內的某項商品
	        RequestDispatcher rd = request.getRequestDispatcher("../goods/goodsCarts1.jsp");
		    rd.forward(request, response);
		    return;
		} else if (cmd.equalsIgnoreCase("MOD")) {
			String newQtyStr = request.getParameter("newQty");
			int newQty = Integer.parseInt(newQtyStr.trim());
			sc.modifyQty(goodsUid, newQty);   // 修改某項商品的數項
	        RequestDispatcher rd = request.getRequestDispatcher("../goods/goodsCarts1.jsp");
		    rd.forward(request, response);
		    return;
		}
	}
}