package model.test;

import java.util.LinkedHashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import _00.utils.HibernateUtil;
import model.bean.FoundationBean_HO73;
import model.bean.PayBox;
import model.bean.PaymentOut;
import model.bean.PaymentIn;

//雙向一對多: 由購物車(Cart)來找出其內所有商品項目(Item)，也可以由商品項目(Item)
//           找到購物車(Cart)。
//口訣: 一對多，一方有個儲存多方物件參考的List/Set物件，簡稱『ㄧ方有個多』
//
//只要購物車類別內含有一個能儲存多方物件(商品項目類別)的List/Set物件，
//程式就可以由購物車找到其內所有商品項目。
//以資料庫的觀點而言就是在Item類別對應的表格內增加一個外鍵欄位，此欄位(指Item物件的欄位)
//儲存該Item物件所屬之購物車的物件參考，Hibernate就可以由購物車(Cart)來找出其內所有商品
//項目(Item)。

//Step 0: 為Cart類別、Item類別加上應有的註釋(@Entity, @Table, @Id, ....)
//Step 1: Cart類別 
//		    由於程式的需求為『由購物車(Cart)來找出其內的商品項目(Item)』，
//		    因此在Cart類別內定義一個儲存Item(多方)物件參考的List/Set物件。
//Step 2: 在此Set物件對應的getter前加上
//        @OneToMany(mappedBy="cartAnno")，"One"代表本類別(Cart), "Many"代表
//        對照類別(Item)。mappedBy的屬性值指對方類別的性質。該性質含有表示關聯的外鍵 。
//        mappedBy屬性表示本類別(Cart)對應之表格並未含有可以表示記錄關聯的外鍵，
//        但是在對照類別(Item)內的cartAnno屬性中有外鍵的相關資訊，即下面的
//        @JoinColumn(name="fk_cart_id", nullable=false)中的
//        fk_cart_id就是Item類別所對應之表格的外鍵欄位。
//        // 下面五行敘述屬於Item類別
//        @ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
//        @JoinColumn(name="cart_id", nullable=false)  
//        public Cart getCartAnno() {
//	         return cart;
//        }
//Step 3: Item類別  
//        在Item類別內定義一個儲存Cart(ㄧ方)物件參考的實例變數。
//        private Cart cart;
//Step 4: cart屬性對應的getter前加上@ManyToOne，"Many"代表本類別(Item), "One"代表
//        對照類別(Cart)。
//Step 5: 再加上@JoinColumn(name="FK_cart_id", nullable=false)說明本類別(Item)
//        對應之表格內的外鍵名稱為何。

public class O2MMain02_Bi_Insert__PayBox {

	public static void main(String[] args) {
		FoundationBean_HO73 fb= new FoundationBean_HO73(); 
		FoundationBean_HO73 fb2= new FoundationBean_HO73(); 
		fb.setFunName("測試基金會");fb.setFunIdcard("501"); 
		fb2.setFunName("測試爽基金會");fb2.setFunIdcard("5000");
		PayBox pb = new PayBox();
		pb.setPayBoxName("範例捐款箱");pb.setFoundationBean(fb);
		
		PaymentIn 	pD1 = new PaymentIn(pb, "高國華", 500000);
		PaymentIn 	pD2 = new PaymentIn(pb, "高嘉瑜", 250000);
		PaymentIn 	pD3 = new PaymentIn(pb, "明明是矮冬瓜", 5000);
		PaymentOut		pC1 = new PaymentOut(pb, "高國華花", 100000);
		PaymentOut 	pC2 = new PaymentOut(pb, "高嘉瑜花", 150000);
		PaymentOut 	pC3 = new PaymentOut(pb, "明明是矮冬花", 500000);
		Set<PaymentIn> PaymentInSet = new LinkedHashSet<PaymentIn>();
		PaymentInSet.add(pD1); PaymentInSet.add(pD2);PaymentInSet.add(pD3);
		Set<PaymentOut> PaymentOutSet = new LinkedHashSet<PaymentOut>();
		PaymentOutSet.add(pC1);PaymentOutSet.add(pC2);PaymentOutSet.add(pC3);
		
		
		pb.setPaymentIn(PaymentInSet);
		pb.setPaymentOut(PaymentOutSet);
		
		//------------------------------------
		PayBox pb2 = new PayBox();
		pb2.setPayBoxName("範例捐款箱2");pb2.setFoundationBean(fb);
		PaymentIn 	pD4 = new PaymentIn(pb2, "黃", 1500000);
		PaymentIn 	pD5 = new PaymentIn(pb2, "安", 255555);
		PaymentIn 	pD6 = new PaymentIn(pb2, "正", 499);
		PaymentOut	pC4 = new PaymentOut(pb2, "高國華花", 9999);
		PaymentOut 	pC5 = new PaymentOut(pb2, "高嘉瑜花", 14999);
		PaymentOut 	pC6 = new PaymentOut(pb2, "明明是矮冬花", 499999);
		Set<PaymentIn> PaymentInSet2 = new LinkedHashSet<PaymentIn>();
		PaymentInSet2.add(pD4); PaymentInSet2.add(pD5);PaymentInSet2.add(pD6);
		Set<PaymentOut> PaymentOutSet2 = new LinkedHashSet<PaymentOut>();
		PaymentOutSet2.add(pC4);PaymentOutSet2.add(pC5);PaymentOutSet2.add(pC6);
		
		pb2.setPaymentIn(PaymentInSet2);
		pb2.setPaymentOut(PaymentOutSet2);
		
		
		
	}
}

