package shoppingCart.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import goods.OrderItem;
import model.bean.MemberBean_HO73;
import model.bean.PaymentBean_HO73;
import model.service.DeliveryService;
import model.service.PaymentService;
import shoppingCart.model.OrderBean_HO73;
import shoppingCart.model.OrderItemBean_HO73;
import shoppingCart.model.ShoppingCart;
import shoppingCart.model.service.OrderService;
import shoppingCart.model.service.impl.OrderServiceImpl;
// OrderConfirm.jsp 呼叫本程式。
@WebServlet("/shoppingCart/ProcessOrder.do")
public class ProcessOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
//		String finalDecision = request.getParameter("finalDecision");		
		HttpSession session = request.getSession(false);
		if (session == null) {   // 使用逾時
			response.sendRedirect(getServletContext().getContextPath() + "/index.jsp"  );
			return;
		}
		MemberBean_HO73 mb = (MemberBean_HO73) session.getAttribute("memberBean");
		if (mb == null) {
			out.println("<script>alert('若需購買義賣商品需登入')</script>");
			out.println("<script>window.location.href='../index.jsp'</script>");
//			response.sendRedirect(getServletContext().getContextPath() + "/index.jsp"  );
			return;
		}
		ShoppingCart sc = (ShoppingCart) session.getAttribute("ShoppingCart");
		if (sc == null) {
			// 處理訂單時如果找不到購物車(通常是Session逾時)，沒有必要往下執行
			// 導向首頁
			response.sendRedirect(getServletContext().getContextPath() + "/index.jsp"  );
			return;
		}
		// 如果使用者取消訂單
//		if  (finalDecision.equals("CANCEL")){
//			session.removeAttribute("ShoppingCart");
//			response.sendRedirect(response.encodeRedirectURL (request.getContextPath()));
//			return;  			// 一定要記得 return 
//		}
		String memAccount = mb.getMemAccount();   						        // 取出會員代號
		String memName =mb.getMemName();

		String totalAmountString = request.getParameter("newSubtotal");
		Double totalAmount = Double.parseDouble(totalAmountString);
//		double totalAmount = Math.round(sc.getSubtotal() * 1.05);  	            // 計算訂單總金額 
		String shippingAddress = request.getParameter("address");               //收件地址
		String shippingName = request.getParameter("name");                     //收件姓名
		String shippingPhone = request.getParameter("tel");                     //收件電話
		String bNO = request.getParameter("BNO");					            // 發票的統一編號  
		String invoiceTitle = request.getParameter("InvoiceTitle");	            // 發票的抬頭
		String paymentName = request.getParameter("paymentName");               //付款名稱
		String paymentATMBankId = request.getParameter("paymentATMBankId");     //付款銀行代號
		String paymentATMAccount = request.getParameter("paymentATMAccount");   //付款銀行帳號
		String paymentUidStr = request.getParameter("paymentUid");              //付款設定編號
		Integer paymentUid = Integer.parseInt(paymentUidStr);  
		Date today = new Date();   									            // 新增訂單的時間
		// 新建訂單物件。OrderBean:封裝一筆訂單資料的容器，包含訂單主檔與訂單明細檔的資料。目前只存放訂單主檔的資料。
		OrderBean_HO73 ob = new OrderBean_HO73
				(null, memAccount, totalAmount, shippingAddress, shippingName, shippingPhone, bNO, invoiceTitle, today, null, null, paymentUid, paymentName, paymentATMAccount, paymentATMBankId, null);
		// 新建一個存放訂單明細的Set物件: items		
		Set<OrderItemBean_HO73> items = new HashSet<OrderItemBean_HO73>();
		// 取出存放在購物車內的商品，放入Map型態的變數cart，準備將其內的商品一個一個轉換為OrderItemBean，
		// 然後存入items。
		Map<Integer, OrderItem> cart = sc.getContent();
		// 呼叫keySet()取出cart內所有的 key，由於Map內的Key不會重複，因此keySet()方法的傳回值為
		// Set物件
		Set<Integer> set = cart.keySet();
		// 使用for敘述將set內所有的元素(這些元素都是Map物件內的Key)逐一取出，然後經由Map物件的
		// get方法取出Key所對應的value物件。這些value物件就是客戶購買的商品。
		for (Integer k : set) {
			OrderItem oi = cart.get(k);   // 經由Map物件的 get方法取出Key所對應的value物件
			String description = oi.getGoodsName();
			// 由於表格的Primary Key為自動遞增，為了配合Hibernate，在此主鍵設定為null
			// (Hibernate規定：自動遞增的主鍵，其對應之物件的欄位必須是null)，絕對不可以是零。
			OrderItemBean_HO73 oib = new OrderItemBean_HO73(null, 0, oi.getGoodsUid(), 
					description, oi.getQty() , oi.getGoodsPrice(), oi.getDiscount(), oi.getFunName());
			items.add(oib);
		}
		// 執行到此，購物車內所有購買的商品已經全部轉換為為OrderItemBean物件，並放在Items內
		ob.setItems(items);  
		try {
			OrderService orderService = new OrderServiceImpl();
			orderService.processOrder(ob);
			session.removeAttribute("ShoppingCart");
			request.setAttribute("paymentATMBankId", paymentATMBankId);
			request.setAttribute("paymentATMAccount", paymentATMAccount);
			request.setAttribute("memName", memName);

			RequestDispatcher rd = request.getRequestDispatcher("../goods/goodsCarts3.jsp");
			rd.forward(request, response);
//			response.sendRedirect(response.encodeRedirectURL ("../goods/goodsCarts3.jsp"));
			return;
		} catch(RuntimeException ex){
			String message = ex.getMessage();
			String shortMsg = "" ;   
			shortMsg =  message.substring(message.indexOf(":") + 1);
			System.out.println(shortMsg);
			session.setAttribute("OrderErrorMessage", "處理訂單時發生異常: " + shortMsg  + "，請調正訂單內容" );
			//System.out.println("處理訂單時發生異常: " + message);
			response.sendRedirect(response.encodeRedirectURL ("../goods/goodsCarts1.jsp"));
			return;
		}
	}
}