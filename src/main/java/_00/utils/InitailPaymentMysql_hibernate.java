package _00.utils;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Timestamp;

import model.bean.DeliveryBean_HO73;
import model.bean.PaymentBean_HO73;
import model.repository.PaymentDao;
import model.repository.impl.PaymentDaoImpl;

public class InitailPaymentMysql_hibernate {
	public static void main(String[] args) throws Exception {

		FileInputStream fis = new FileInputStream("data/InputPayment.txt");
		InputStreamReader isr = new InputStreamReader(fis, "utf-8");
		BufferedReader br = new BufferedReader(isr);
		PaymentDao pdao = new PaymentDaoImpl();
		
		String line ="";
		while ((line = br.readLine())!= null) {
			String[] sa = line.split("\\|");
			String paymentName = sa[0].trim();
			String paymentImg = sa[1].trim();
			String paymentDescription = sa[2].trim();
			String paymentATMBankId = sa[3].trim();
			String paymentATMAccount = sa[4].trim();
			Timestamp insertDate = new Timestamp(System.currentTimeMillis());
			PaymentBean_HO73 pb = new PaymentBean_HO73(null, paymentName, paymentImg, paymentDescription, paymentATMBankId, paymentATMAccount, insertDate);
			System.out.println(pb);
			pdao.save(pb);
			System.out.println("新增一筆紀錄:" + pb.getPaymentName());
		}
	}
}
