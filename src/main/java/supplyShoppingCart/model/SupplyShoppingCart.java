package supplyShoppingCart.model;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

import supply.OrderItem;
public class SupplyShoppingCart {   
	private Map<Integer, OrderItem> cart = new LinkedHashMap< >();
	public SupplyShoppingCart() {
	}
	public Map<Integer, OrderItem>  getContent() { // ${ShoppingCart.content}
		return cart;
	}
	public void addToCart(int supUid, OrderItem  oi) {
		if (oi.getQty() <= 0 ) {
			return;
		}
		// 如果客戶在伺服器端沒有此項商品的資料，則客戶第一次購買此項商品
		if ( cart.get(supUid) == null ) {
		    cart.put(supUid, oi);
		} else {
	        // 如果客戶在伺服器端已有此項商品的資料，則客戶『加購』此項商品
			OrderItem oib = cart.get(supUid);
			// 加購的數量：oi.getQty()
			// 原有的數量：oib.getQty()			
			oib.setQty(oi.getQty() + oib.getQty());
		}
	}
	public void oneToCart(int supUid, OrderItem  oi) {
		if (oi.getQty() <= 0 ) {
			return;
		}
		// 如果客戶在伺服器端沒有此項商品的資料，則客戶第一次購買此項商品
		if ( cart.get(supUid) == null && cart.size() < 1) {
		    cart.put(supUid, oi);
		}
	}
	// 修改商品的數量
//	public boolean modifyQty(int bookID, OrderItem  oi) {
//		if ( cart.get(bookID) != null && oi.getQty() > 0 ) {
//	       cart.put(bookID, oi);
//	       return true;
//		} else {
//		   return false;
//		}
//	}
	public boolean modifyQty(int supUid, int  newQty) {
		if ( cart.get(supUid) != null ) {
			OrderItem  oi = cart.get(supUid);
		   oi.setQty(newQty);
	       //cart.put(bookID, oi);
	       return true;
		} else {
		   return false;
		}
	}
	// 刪除某項商品
	public int deleteBook(int supUid) {
		if ( cart.get(supUid) != null ) {
	       cart.remove(supUid);  // Map介面的remove()方法
	       return 1;
		} else {
		   return 0;
		}
	}
	public int getItemNumber(){   // ShoppingCart.itemNumber
		return cart.size();
	}
//	//計算購物車內所有商品的合計金額(每項商品的單價*數量的總和)
//	public double getSubtotal(){
//		double subTotal = 0 ;
//		Set<Integer> set = cart.keySet();
//		for(int n : set){
//			double goodsPrice    = cart.get(n).getGoodsPrice();
//			double discount = cart.get(n).getDiscount();
//			int    qty      = cart.get(n).getQty();
//			subTotal +=  goodsPrice * discount * qty;
//		}
//		return subTotal;
//	}
	
//	public double getNewSubTotal() {
//		OrderItem oi = new OrderItem();
//		double newSubTotal = 0 ;
//		double dad = 0.0;
//		newSubTotal = getSubtotal()+dad;
//		return newSubTotal;
//	}
	public void listCart() {
		Set<Integer> set = cart.keySet();
		for(Integer k : set){
			System.out.printf("goodsUid=%3d,  Qty=%3d" , k , cart.get(k).getQty());
		}
		System.out.println("------------------");
	}
}
