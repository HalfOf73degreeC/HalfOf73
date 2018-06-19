package model.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import _00.utils.HibernateUtil;
import model.bean.PayBox;
<<<<<<< HEAD
<<<<<<< HEAD
import model.bean.PaymentIn;
import model.bean.PaymentOut;
=======
import model.bean.PaymentOut;
import model.bean.PaymentIn;
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
import model.bean.PaymentOut;
import model.bean.PaymentIn;
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d


public class O2MMain02_Bi_Query_PatBox {

	public static void main(String[] args) {
		
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
		// 查詢特定的Cart物件，在找出其內所有Items
		System.out.println("查詢特定的PayBox物件，在找出其內所有 捐款:");
		PayBox pb = session.get(PayBox.class, 1); 
		for(PaymentIn PaymentIn: pb.getPaymentIn()){
			System.out.println("發現ㄧ筆捐款: " + PaymentIn.toString());
		}
		System.out.println("查詢特定的PayBox物件，在找出其內所有 花費:");
		for(PaymentOut PaymentOut: pb.getPaymentOut()){
			System.out.println("發現ㄧ筆花費: " + PaymentOut.toString());
		}
		System.out.println("================================");
		// 查詢特定的Item物件，由它找出對應的Cart
		System.out.println("查詢特定的Item物件，由它找出對應的Cart:");
		Integer itemKey = 3;
<<<<<<< HEAD
<<<<<<< HEAD
		PaymentIn PaymentIn = session.get(PaymentIn.class, itemKey); 
=======
		PaymentOut PaymentIn = session.get(PaymentOut.class, itemKey); 
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
		PaymentOut PaymentIn = session.get(PaymentOut.class, itemKey); 
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
		PayBox pbfind = PaymentIn.getPayBoxNumber();
		System.out.println("捐款id=" + itemKey + "的捐款箱為" + pbfind.toString());
		
		tx.commit();
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