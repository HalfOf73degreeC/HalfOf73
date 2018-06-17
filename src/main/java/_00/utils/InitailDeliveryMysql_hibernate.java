package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Timestamp;

import model.DeliveryBean_HO73;
import model.repository.DeliveryDao;
import model.repository.impl.DeliveryDaoImpl;

public class InitailDeliveryMysql_hibernate {
	public static void main(String[] args) throws Exception {

		FileInputStream fis = new FileInputStream("data/InputDelivery.txt");
		InputStreamReader isr = new InputStreamReader(fis, "utf-8");
		BufferedReader br = new BufferedReader(isr);
		DeliveryDao ddao = new DeliveryDaoImpl();
		
		String line ="";
		while ((line = br.readLine())!= null) {
			String[] sa = line.split("\\|");
			String deliveryName = sa[0].trim();
			String deliveryImg = sa[1].trim();
			String deliveryDescription = sa[2].trim();
			Integer deliveryAmt = Integer.parseInt(sa[3].trim());
			Timestamp insertDate = new Timestamp(System.currentTimeMillis());
			DeliveryBean_HO73 db = new DeliveryBean_HO73(null, deliveryName, deliveryImg, deliveryDescription, deliveryAmt, insertDate);
			System.out.println(db);
			ddao.save(db);
			System.out.println("新增一筆紀錄:" + db.getDeliveryName());
		}
	}
}
