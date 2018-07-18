package shoppingCart.model.service.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import _00.utils.GlobalService;
import member.MemberDAO;
import model.bean.FoundationBean_HO73;
import model.bean.GoodsBean_HO73;
import model.bean.MemberBean_HO73;
import model.mail.JavaMailUtil;
import model.repository.GoodsDao;
import model.repository.impl.GoodsDaoImpl;
import shoppingCart.model.OrderBean_HO73;
import shoppingCart.model.OrderItemBean_HO73;
import shoppingCart.model.dao.OrderDao;
import shoppingCart.model.dao.OrderItemDao;
import shoppingCart.model.dao.impl.OrderDaoImpl;
import shoppingCart.model.dao.impl.OrderItemDaoImpl;
import shoppingCart.model.service.OrderService;

public class OrderServiceImpl implements OrderService {

	private DataSource ds;
	private OrderItemDao oidao;
	private OrderDao odao;
	private MemberDAO mdao;

	public OrderServiceImpl() {
		try {
			Context ctx = new InitialContext();
			ds 	  = (DataSource) ctx.lookup(GlobalService.JNDI_NAME_MySQL);
			oidao = new OrderItemDaoImpl();
			odao  = new OrderDaoImpl();
			mdao  = new MemberDAO();
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	}

	@Override
	// 這是一個交易
	public void processOrder(OrderBean_HO73 ob) {
		Connection con = null;
		try {
			con = ds.getConnection();
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new RuntimeException(ex.getMessage());
		}
		try {
			// 交易開始
			con.setAutoCommit(false);
			
			// 檢查未付款餘額是否超過限額，並更新未付款餘額
			mdao.setConnection(con);
			mdao.updateUnpaidOrderAmount(ob);
			
			// 檢查所有訂單明細所訂購之商品的庫存數量是否足夠
			checkStock(ob, con);
			
			// 儲存訂單
			odao.setConnection(con);
			odao.insertOrder(ob);
			System.out.println("ob :" + ob);
			System.out.println(ob.getMemAccount());
			//E-mail送回訂單資料
			MemberBean_HO73 mb = mdao.getOneMemberDetail(ob.getMemAccount());
			List<String> to = new ArrayList<>();
			to.add(mb.getMemEmail2());	
			System.out.println("1");
			String shoppingcart="";
			String shoppingcartfun="";
			Integer goodsUid = ob.getItems().iterator().next().getGoodsUid();
			System.out.println("2");
			for (OrderItemBean_HO73 oib : ob.getItems()) {		
				int i = 1; i++;
				String goodsName = oib.getDescription();	
				String funName = oib.getFunName();	
				System.out.println("3");
				String splitString="、";
				if(i<ob.getItems().size()) {
					splitString="、";
				}else {
					splitString=" ";
				}
				shoppingcart += (goodsName + splitString);
				if(!shoppingcartfun.contains(funName)) {
					shoppingcartfun += (funName + splitString);
				}
			}	
			System.out.println("4");
			String subject = "Half Of 73°C already got you order." ;
			System.out.println("5");
			
			String text = mb.getMemName()+"您好:<br>" + 
					"購買品項: " + shoppingcart + "<br>" + 
					"購買總額: " + ob.getTotalAmount() + "<br>" +
					"匯款銀行代碼: " + ob.getPaymentATMBankId() + "<br>" + 
					"匯款銀行帳號: " + ob.getPaymentATMAccount() + "<br>" + 
					"感謝您對"+shoppingcartfun+"的付出與關懷。<br><br>"+
					"<font color='blue'>請於三日內匯款，若未匯款將自動取消訂單</font>";
			System.out.println("6");
			List<String> attachment = Arrays.asList(new String[] {
					// "D:\\images\\photo02.jpg"
			});
			System.out.println("7");
			JavaMailUtil javaMail = new JavaMailUtil(to,subject,text,attachment);
			System.out.println("8");
			javaMail.send();
			System.out.println("9");
			con.commit();
		} catch (Exception e) {
			try {
				con.rollback();
				System.out.println("發生異常，交易回滾.....,原因: " + e.getMessage());
			} catch (SQLException e1) {
				throw new RuntimeException(e1);
			}
			throw new RuntimeException(e);
		} finally {
			try {
				con.setAutoCommit(true);
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e.getMessage());
			}
		}

	}

	public void checkStock(OrderBean_HO73 ob, Connection con) {
		Set<OrderItemBean_HO73> items = ob.getItems();
		oidao.setConnection(con);
		for (OrderItemBean_HO73 oib : items) {
			oidao.updateProductStock(oib);
		}
	}

	/**
	 * ** 計算一張訂單的總金額。
	 * 由OrderBean的getItems()取出Set<OrderItemBean>物件，經由迴圈計算每項商品的小計金額，
	 * 加總這些金額後得到總金額。
	 */
//	@Override
//	// 10-23 21:36
//	public double findTotalOrderAmount(OrderBean ob) {
//		double total = 0;
////		Set<OrderItemBean> items = ob.getItems();
////		for (OrderItemBean oib : items) {
////			double subtotal = oib.getQuantity() * oib.getUnitPrice() * oib.getDiscount();
////			total += subtotal;
////		}
//		if (5 > 3)
//		throw new RuntimeException("Unused function: findTotalOrderAmount()");
//		return total;
//	}

	public OrderDao getOdao() {
		return odao;
	}

	public void setOdao(OrderDao odao) {
		this.odao = odao;
	}

	@Override
	public OrderBean_HO73 getOrder(int orderNo) {
		return odao.getOrder(orderNo);
	}

}
