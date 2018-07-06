package supplyShoppingCart.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashSet;
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

import model.bean.MemberBean_HO73;
import supply.OrderItem;
import supplyShoppingCart.model.SupplyOrderBean_HO73;
import supplyShoppingCart.model.SupplyOrderItemBean_HO73;
import supplyShoppingCart.model.SupplyShoppingCart;
import supplyShoppingCart.model.service.SupplyOrderService;
// OrderConfirm.jsp 呼叫本程式。
@WebServlet("/supplyShoppingCart/ProcessOrder.do")
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
		System.out.println("Process000001");
		if (session == null) {   // 使用逾時
			response.sendRedirect(getServletContext().getContextPath() + "/index.jsp"  );
			return;
		}
		MemberBean_HO73 mb = (MemberBean_HO73) session.getAttribute("memberBean");
		if (mb == null) {
			System.out.println("Process000002");
			out.println("<script>alert('若需購買義賣商品需登入')</script>");
			out.println("<script>window.location.href='../index.jsp'</script>");
//			response.sendRedirect(getServletContext().getContextPath() + "/index.jsp"  );
			return;
		}
		SupplyShoppingCart sc = (SupplyShoppingCart) session.getAttribute("SupplyShoppingCart");
		if (sc == null) {
			// 處理訂單時如果找不到購物車(通常是Session逾時)，沒有必要往下執行
			// 導向首頁
			System.out.println("Process000003");
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

		String receiptAddress = request.getParameter("address");               //收件地址
		String receiptName = request.getParameter("name");                     //收件姓名
		String receiptPhone = request.getParameter("tel");                     //收件電話
		String funUid = request.getParameter("funUid"); 
		String funName = request.getParameter("funName"); 
		String funAddress = request.getParameter("funAddress"); 
		String funTel = request.getParameter("funTel"); 
		Date today = new Date();   									            // 新增訂單的時間
		
		// 新建訂單物件。OrderBean:封裝一筆訂單資料的容器，包含訂單主檔與訂單明細檔的資料。目前只存放訂單主檔的資料。
		SupplyOrderBean_HO73 sob = new SupplyOrderBean_HO73(null, memAccount, funAddress, funName, funTel, receiptName, receiptAddress, receiptPhone, today, null, null, null, null);
		// 新建一個存放訂單明細的Set物件: items		
		Set<SupplyOrderItemBean_HO73> items = new HashSet<SupplyOrderItemBean_HO73>();
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
			// 由於表格的Primary Key為自動遞增，為了配合Hibernate，在此主鍵設定為null
			// (Hibernate規定：自動遞增的主鍵，其對應之物件的欄位必須是null)，絕對不可以是零。
			SupplyOrderItemBean_HO73 oib = new SupplyOrderItemBean_HO73(null, oi.getSupUid(), oi.getSupName(), oi.getQty());
			oib.setSupplyOrderBean_HO73(sob);
			items.add(oib);
		}
		// 執行到此，購物車內所有購買的商品已經全部轉換為為OrderItemBean物件，並放在Items內
		sob.setItems(items);  
		try {
			WebApplicationContext ctx = 
					WebApplicationContextUtils.getWebApplicationContext(getServletContext());
			SupplyOrderService sos = ctx.getBean(SupplyOrderService.class);
			sos.processOrder(sob);
			session.removeAttribute("SupplyShoppingCart");
			request.setAttribute("funName", funName);
			request.setAttribute("funAddress", funAddress);
			request.setAttribute("funTel", funTel);
			request.setAttribute("memName", memName);

			RequestDispatcher rd = request.getRequestDispatcher("../supply/supplyCarts3.jsp");
			rd.forward(request, response);
//			response.sendRedirect(response.encodeRedirectURL ("../goods/goodsCarts3.jsp"));
			return;
		} catch(RuntimeException ex){
			ex.printStackTrace();
			String message = ex.getMessage();
			String shortMsg = "" ;   
			shortMsg =  message.substring(message.indexOf(":") + 1);
			System.out.println("處理訂單時發生異常: " + shortMsg  + "，請調正訂單內容" );
			session.setAttribute("OrderErrorMessage", "處理訂單時發生異常: " + shortMsg  + "，請調正訂單內容" );
			//System.out.println("處理訂單時發生異常: " + message);
			response.sendRedirect(response.encodeRedirectURL ("../supply/supplyCarts1.jsp"));
			return;
		}
	}
}