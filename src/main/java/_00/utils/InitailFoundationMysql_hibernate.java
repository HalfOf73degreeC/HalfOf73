package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Date;
import java.sql.Timestamp;

import model.bean.FoundationBean_HO73;
import model.repository.FoundationDao;
import model.repository.impl.FoundationDaoImpl;

public class InitailFoundationMysql_hibernate {
	public static void main(String[] args) throws Exception {

		FileInputStream fis = new FileInputStream("data/InputFoundation.txt");
		InputStreamReader isr = new InputStreamReader(fis, "utf-8");
		BufferedReader br = new BufferedReader(isr);
		FoundationDao fdao = new FoundationDaoImpl();

		String line = "";
		while ((line = br.readLine()) != null) {
			String[] sa = line.split("\\|");
			String funAccount = (sa[0]);
			String funName = (sa[2]);
			String funIdcard = (sa[3]);
			String funImage = (sa[4]);
			String funGroup = (sa[5]);
			String funDetail = (sa[6]);
			String funCeo = (sa[7]);
			String funContact = (sa[8]);
			String funTel = (sa[9]);
			String funFax = (sa[10]);
			String funDomain = (sa[11]);
			String funEmail = (sa[12]);
			String funEmail2 = (sa[13]);
			String funState = (sa[14]);
			String funAddress = (sa[15]);
			String funFounder = (sa[16]);
			Date funCreateDate = Date.valueOf(sa[17].trim());
			String funAllowOrg = (sa[18]);
			String funIntent = (sa[19]);
			String funArticle = (sa[20]);
			String funArea = (sa[21]);
			String funServiceUser = (sa[22]);
			String funService = (sa[23]);
			Integer funStatus = Integer.valueOf(sa[24]);
			Timestamp insertDate = new Timestamp(System.currentTimeMillis());

			FoundationBean_HO73 fb = new FoundationBean_HO73(funAccount, funName, funIdcard, funImage,
					funGroup, funDetail, funCeo, funContact, funTel, funFax, funDomain, funEmail, funEmail2, funState,
					funAddress, funFounder, funCreateDate, funAllowOrg, funIntent, funArticle, funArea, funServiceUser,
					funService, funStatus, insertDate);
			System.out.println(fb);
			fdao.save(fb);
			System.out.println("新增一筆紀錄:" + fb.getFunAccount());
		}
	}
}
