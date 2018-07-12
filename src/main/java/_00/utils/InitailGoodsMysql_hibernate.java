package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Timestamp;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.bean.GoodsBean_HO73;

public class InitailGoodsMysql_hibernate {
	public static void main(String[] args) throws Exception {
		System.out.println("Maven + Hibernate + MySQL 新增多筆資料到JSPDB");
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		int count = 0;
		try (
				FileInputStream fis = new FileInputStream("data/InputGoods.txt");
				InputStreamReader isr = new InputStreamReader(fis, "utf-8");
				BufferedReader br = new BufferedReader(isr);){
		
			String line ="";
			while ((line = br.readLine())!= null) {
				tx = session.beginTransaction();
				GoodsBean_HO73 gb = new GoodsBean_HO73();
				String[] sa = line.split("\\|");
				gb.setGoodsName(sa[0].trim());
				
				Blob sb = SystemUtils2018.fileToBlob(sa[1].trim());
				gb.setGoodsImg(sb);

				String imageFileName = sa[1].substring(sa[1]
						.lastIndexOf("/") + 1);
				gb.setGoodsImgFileName(imageFileName);

				Clob clob = SystemUtils2018.fileToClob(sa[2].trim());
//				gb.setGoodsArticle(clob);
				
				String startTime = sa[3].trim();
				Timestamp goodsStartTime = new Timestamp(System.currentTimeMillis());
				goodsStartTime = Timestamp.valueOf(startTime);
				gb.setGoodsStartTime(goodsStartTime);
				String endTime = sa[4].trim();
				Timestamp goodsEndTime = new Timestamp(System.currentTimeMillis());
				goodsEndTime = Timestamp.valueOf(endTime);
				gb.setGoodsEndTime(goodsEndTime);
				gb.setGoodsStock(Integer.parseInt(sa[5].trim()));
				gb.setGoodsSafeStock(Integer.parseInt(sa[6].trim()));
				gb.setGoodsSize(sa[7].trim());
				gb.setGoodsState(Integer.parseInt(sa[8].trim()));
				gb.setGoodsView(Integer.parseInt(sa[10].trim()));
				gb.setInsertDate(new Timestamp(System.currentTimeMillis()));
				gb.setGoodsIntro(sa[11].trim());
				gb.setGoodsPrice(((int)(Math.random()*50))*10);
				System.out.println(gb);
				session.save(gb);
				session.flush();
				tx.commit();
				System.out.println("新增一筆紀錄:" + gb.getGoodsName());
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