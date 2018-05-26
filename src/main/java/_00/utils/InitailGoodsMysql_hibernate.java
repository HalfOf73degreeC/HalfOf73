package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Timestamp;

import model.GoodsBean_HO73;
import model.repository.GoodsDao;
import model.repository.impl.GoodsDaoImpl;

public class InitailGoodsMysql_hibernate {
	public static void main(String[] args) throws Exception {

		FileInputStream fis = new FileInputStream("data/InputGoods.txt");
		InputStreamReader isr = new InputStreamReader(fis, "utf-8");
		BufferedReader br = new BufferedReader(isr);
		GoodsDao mdao = new GoodsDaoImpl();
		
		String line ="";
		while ((line = br.readLine())!= null) {
			String[] sa = line.split("\\|");
			String goodsName = sa[0].trim();
			String imgPath = sa[1].trim();
			Blob goodsImg = SystemUtils2018.fileToBlob(imgPath);
			String articlePath = sa[2].trim();
			Clob goodsArticle = SystemUtils2018.fileToClob(articlePath);
			String startTime = sa[3].trim();
			Timestamp goodsStartTime = new Timestamp(System.currentTimeMillis());
			goodsStartTime = Timestamp.valueOf(startTime);
			String endTime = sa[4].trim();
			Timestamp goodsEndTime = new Timestamp(System.currentTimeMillis());
			goodsEndTime = Timestamp.valueOf(endTime);
			Integer goodsStock = Integer.parseInt(sa[5].trim());
			Integer goodsSafeStock = Integer.parseInt(sa[6].trim());
			String goodsSize = sa[7].trim();
			Integer goodsState = Integer.parseInt(sa[8].trim());
			Integer funUid = Integer.parseInt(sa[9].trim());
			Integer views = Integer.parseInt(sa[10].trim());
			Timestamp insertDate = new Timestamp(System.currentTimeMillis());
			String goodsIntro = sa[11].trim();
			Integer goodsPrice = ((int)(Math.random()*50))*10;
			GoodsBean_HO73 gb = new GoodsBean_HO73(null, goodsName, goodsImg, goodsIntro, goodsArticle, goodsStartTime, goodsEndTime, 
					goodsStock, goodsSafeStock, goodsSize, goodsPrice, goodsState, funUid, views, insertDate);
			System.out.println(gb);
			mdao.save(gb);
			System.out.println("新增一筆紀錄:" + gb.getGoodsName());
		}
	}
}
