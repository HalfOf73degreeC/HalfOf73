package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Timestamp;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.bean.PaymentBean_HO73;

public class InitailPaymentMysql_hibernate {
	public static void main(String[] args) throws Exception {

		System.out.println("Maven + Hibernate + MySQL 新增多筆資料到JSPDB");
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		int count = 0;
		try (
			FileInputStream fis = new FileInputStream("data/InputPayment.txt");
			InputStreamReader isr = new InputStreamReader(fis, "utf-8");
			BufferedReader br = new BufferedReader(isr);){
			
				String line ="";
				while ((line = br.readLine())!= null) {
					tx = session.beginTransaction();
					PaymentBean_HO73 pb = new PaymentBean_HO73();
					String[] sa = line.split("\\|");
					pb.setPaymentName(sa[0].trim());
					pb.setPaymentImg(sa[1].trim());
					pb.setPaymentDescription(sa[2].trim());
					pb.setPaymentATMBankId(sa[3].trim());
					pb.setPaymentATMAccount(sa[4].trim());
					pb.setInsertDate(new Timestamp(System.currentTimeMillis()));
					System.out.println(pb);
					session.save(pb);session.flush();
					tx.commit();
					System.out.println("新增一筆紀錄:" + pb.getPaymentName());
				}
			} catch (Exception e) {
					e.printStackTrace();
					if (tx != null) {
						tx.rollback();
						System.out.println("Transaction rollback");
					}
			}
					
	}
}
