package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Timestamp;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.bean.DeliveryBean_HO73;

public class InitailDeliveryMysql_hibernate {
	public static void main(String[] args) throws Exception {
		
		System.out.println("Maven + Hibernate + MySQL 新增多筆資料到JSPDB");
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		int count = 0;
		try (
				FileInputStream fis = new FileInputStream("data/InputDelivery.txt");
				InputStreamReader isr = new InputStreamReader(fis, "utf-8");
				BufferedReader br = new BufferedReader(isr);){
		
			String line ="";
			while ((line = br.readLine())!= null) {
				tx = session.beginTransaction();
				DeliveryBean_HO73 db = new DeliveryBean_HO73();
				String[] sa = line.split("\\|");
				db.setDeliveryName(sa[0].trim());
				db.setDeliveryImg(sa[1].trim());
				db.setDeliveryDescription(sa[2].trim());
				db.setDeliveryAmt(Integer.parseInt(sa[3].trim()));
				db.setInsertDate(new Timestamp(System.currentTimeMillis()));
				System.out.println(db);
				session.save(db);
				session.flush();
				tx.commit();
				System.out.println("新增一筆紀錄:" + db.getDeliveryName());
			}
		} catch (Exception e) {
				e.printStackTrace();
				if (tx != null) {
					tx.rollback();
					System.out.println("Transaction rollback");
				}
			}
		
		
		
		
//		System.out.println("Maven + Hibernate + MySQL 新增多筆資料到JSPDB");
//		Session session = HibernateUtil.getSessionFactory().openSession();
//		Transaction tx = null;
//		int count = 0;
//		try(
//				FileInputStream fis = new FileInputStream("data/InputDelivery.txt");
//				InputStreamReader isr = new InputStreamReader(fis, "utf-8");
//				BufferedReader br = new BufferedReader(isr);) {
//			
//			
//			String line ="";
//			while ((line = br.readLine())!= null) {
//				tx = session.beginTransaction();
//				DeliveryBean_HO73 db = new DeliveryBean_HO73();
//				String[] sa = line.split("\\|");
//				db.setDeliveryName(sa[0].trim());
//				db.setDeliveryImg(sa[1].trim());
//				db.setDeliveryDescription(sa[2].trim());
//				db.setDeliveryAmt(Integer.parseInt(sa[3].trim()));
//				db.setInsertDate(new Timestamp(System.currentTimeMillis()));
//				System.out.println(db);
//				session.save(db);
//				session.flush();
//				tx.commit();
//				System.out.println("新增一筆紀錄:" + db.getDeliveryName());
//			} 
//		}catch (Exception e) {
//			e.printStackTrace();
//			if (tx != null) {
//				tx.rollback();
//				System.out.println("Transaction rollback");
//			}
//		}
	}
}
