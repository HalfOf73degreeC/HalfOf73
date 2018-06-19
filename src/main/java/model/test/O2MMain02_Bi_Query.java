package model.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import _00.utils.HibernateUtil;
import model.bean.FoundationBean_HO73;
import model.bean.PayBox;

public class O2MMain02_Bi_Query {

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
		System.out.println("查詢特定的Foundation物件，在找出其內所有payBox:");
		FoundationBean_HO73 fb = session.get(FoundationBean_HO73.class,"499"); 
		for(PayBox payBox: fb.getPayBox()){
			System.out.println("發現ㄧ個payBox，id=" + payBox.getPayBoxNumber());
		}
		System.out.println("================================");
		// 查詢特定的Item物件，由它找出對應的Cart
		System.out.println("查詢特定的payBox物件，由它找出對應的Foundation:");
		int payBoxKey = 1;
		PayBox pb = session.get(PayBox.class, payBoxKey); 
		String foundationName = pb.getFoundationBean().getFunName();
		System.out.println("payBox id=" + payBoxKey + "的購物車為" + foundationName);
		
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