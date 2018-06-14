package model.test;

import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item;

import _00.utils.HibernateUtil;
//雙向一對多: 由購物車(Cart)來找出其內所有商品項目(Item)，也可以由商品項目(Item)
//           找到購物車(Cart)。
//口訣: 一對多，一方有個儲存多方物件參考的List/Set物件，簡稱『ㄧ方有個多』
//
//只要購物車類別內含有一個能儲存多方物件(商品項目類別)的List/Set物件，
//程式就可以由購物車找到其內所有商品項目。
//以資料庫的觀點而言就是在Item類別對應的表格內增加一個外鍵欄位，此欄位(指Item物件的欄位)
//儲存該Item物件所屬之購物車的物件參考，Hibernate就可以由購物車(Cart)來找出其內所有商品
//項目(Item)。
import model.FoundationBean_HO73;
import model.PayBox;

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

public class O2MMain02_Bi_Insert {
	
	public static void main(String[] args) {
		FoundationBean_HO73 fb= new FoundationBean_HO73(); 
		fb.setFunName("測試基金會");
		fb.setFunIdcard("499");
		PayBox pb1 = new PayBox(1, "payBoxName1", fb);
		PayBox pb2 = new PayBox(2, "payBoxName2", fb);
		PayBox pb3 = new PayBox(3, "payBoxName3", fb);
		Set<PayBox> payBoxSet = new LinkedHashSet<PayBox>();
		payBoxSet.add(pb1); payBoxSet.add(pb2);payBoxSet.add(pb3);
	
		//------------------------------------
		FoundationBean_HO73 fb2= new FoundationBean_HO73(); 
		fb2.setFunName("測試基金會2");
		fb2.setFunIdcard("599");
		PayBox pb4 = new PayBox(4, "payBoxName4", fb2);
		PayBox pb5 = new PayBox(5, "payBoxName5", fb2);
		PayBox pb6 = new PayBox(6, "payBoxName6", fb2);
		Set<PayBox> payBoxSet2 = new LinkedHashSet<PayBox>();
		payBoxSet2.add(pb4); payBoxSet2.add(pb5);payBoxSet2.add(pb6);
		
		SessionFactory sessionFactory = null;
		Session session = null;
		Transaction tx = null;
		try{
		// 建立SessionFactory物件
		sessionFactory = HibernateUtil.getSessionFactory();
		// 取出Session物件
		session = sessionFactory.getCurrentSession();
		System.out.println("得到Session物件");
		//開啟交易
		tx = session.beginTransaction();
		
		//Save the Model objects
		session.save(fb);
		session.save(fb2); 
		
		for(PayBox payBox: payBoxSet){
			session.save(payBox);
		}
		for(PayBox payBox: payBoxSet2){
			session.save(payBox);
		}
		//Commit transaction
		tx.commit();
		System.out.println("測試基金會ID="+fb.getFunIdcard());
		
		}catch(Exception e){
			System.out.println("發生例外: "+e.getMessage());
			e.printStackTrace();
		}finally{
			if(!sessionFactory.isClosed()){
				System.out.println("關閉SessionFactory");
				sessionFactory.close();
			}
		}
	}
}

