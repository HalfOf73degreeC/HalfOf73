package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Timestamp;

import model.SupplyBean_HO73;
import model.repository.SupplyDao;
import model.repository.impl.SupplyDaoImpl;

public class InitailSupplyMysql_hibernate {
	public static void main(String[] args) throws Exception {

		FileInputStream fis = new FileInputStream("data/InputSupply.txt");
		InputStreamReader isr = new InputStreamReader(fis, "utf-8");
		BufferedReader br = new BufferedReader(isr);
		SupplyDao mdao = new SupplyDaoImpl();
		
		String line ="";
		while ((line = br.readLine())!= null) {
			String[] sa = line.split("\\|");
			String supName = sa[0].trim();
			String imgPath = sa[1].trim();
			Blob supImg = SystemUtils2018.fileToBlob(imgPath);
			String articlePath = sa[2].trim();
			Clob supArticle = SystemUtils2018.fileToClob(articlePath);
			String startTime = sa[3].trim();
			Timestamp supStartTime = new Timestamp(System.currentTimeMillis());
			supStartTime = Timestamp.valueOf(startTime);
			String endTime = sa[4].trim();
			Timestamp supEndTime = new Timestamp(System.currentTimeMillis());
			supEndTime = Timestamp.valueOf(endTime);
			Integer supNeedAmt = Integer.parseInt(sa[5].trim());
			Integer supFinalAmt = Integer.parseInt(sa[6].trim());
			String supSize = sa[7].trim();
			Integer supState = Integer.parseInt(sa[8].trim());
			Integer funUid = Integer.parseInt(sa[9].trim());
			Integer views = Integer.parseInt(sa[10].trim());
			Timestamp insertDate = new Timestamp(System.currentTimeMillis());
			SupplyBean_HO73 mb = new SupplyBean_HO73(null, supName, supImg, supArticle, supStartTime, supEndTime, supNeedAmt, 
					supFinalAmt, supSize, supState, funUid, views, insertDate);
			System.out.println(mb);
			mdao.save(mb);
			System.out.println("新增一筆紀錄:" + mb.getSupName());
		}
	}
}
