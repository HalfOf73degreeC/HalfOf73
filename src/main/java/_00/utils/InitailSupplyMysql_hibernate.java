package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Timestamp;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.bean.FoundationBean_HO73;
import model.bean.SupplyBean_HO73;

public class InitailSupplyMysql_hibernate {
	public static void main(String[] args) throws Exception {
		System.out.println("Maven + Hibernate + MySQL 新增多筆資料到JSPDB");
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		int count = 0;
		try (
		FileInputStream fis = new FileInputStream("data/InputSupply.txt");
		InputStreamReader isr = new InputStreamReader(fis, "utf-8");
		BufferedReader br = new BufferedReader(isr);){
		
			String line ="";
			while ((line = br.readLine())!= null) {
				tx = session.beginTransaction();
				SupplyBean_HO73 sb = new SupplyBean_HO73();
				String[] sa = line.split("\\|");
				sb.setSupName(sa[0].trim());
				String imgPath = sa[1].trim();
				sb.setSupImgFileName(imgPath);
				sb.setSupImg(SystemUtils2018.fileToBlob(imgPath));
				String articlePath = sa[2].trim();
				sb.setSupArticle(SystemUtils2018.fileToClob(articlePath));
				String startTime = sa[3].trim();
				Timestamp supStartTime = new Timestamp(System.currentTimeMillis());
				supStartTime = Timestamp.valueOf(startTime);
				sb.setSupStartTime(supStartTime);
				String endTime = sa[4].trim();
				Timestamp supEndTime = new Timestamp(System.currentTimeMillis());
				supEndTime = Timestamp.valueOf(endTime);
				sb.setSupEndTime(supEndTime);
				sb.setSupNeedStock(Integer.parseInt(sa[5].trim()));
				sb.setSupFinalStock(Integer.parseInt(sa[6].trim()));
				sb.setSupSize(sa[7].trim());
				sb.setSupState(Integer.parseInt(sa[8].trim()));
				String funUid = sa[9].trim();
				FoundationBean_HO73 fb = new FoundationBean_HO73();
				fb.setFunIdcard(funUid);

				sb.setInsertDate(new Timestamp(System.currentTimeMillis()));
				System.out.println(sb);
				session.save(sb);
				session.flush();
				tx.commit();
				System.out.println("新增一筆紀錄:" + sb.getSupName());
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
