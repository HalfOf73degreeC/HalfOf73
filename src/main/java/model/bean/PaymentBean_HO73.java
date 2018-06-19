package model.bean;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PaymentBean_HO73 {

	Integer	paymentUid;
	String	paymentName;
	String	paymentImg;
	String	paymentDescription;
	String	paymentATMBankId;
	String	paymentATMAccount;
	Timestamp	insertDate;

	public PaymentBean_HO73() {
		super();
	}
	
	public PaymentBean_HO73(Integer paymentUid, String paymentName, String paymentImg, String paymentDescription,
			String paymentATMBankId, String paymentATMAccount, Timestamp insertDate) {
		super();
		this.paymentUid = paymentUid;
		this.paymentName = paymentName;
		this.paymentImg = paymentImg;
		this.paymentDescription = paymentDescription;
		this.paymentATMBankId = paymentATMBankId;
		this.paymentATMAccount = paymentATMAccount;
		this.insertDate = insertDate;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getPaymentUid() {
		return paymentUid;
	}

	public void setPaymentUid(Integer paymentUid) {
		this.paymentUid = paymentUid;
	}

	public String getPaymentName() {
		return paymentName;
	}

	public void setPaymentName(String paymentName) {
		this.paymentName = paymentName;
	}

	public String getPaymentImg() {
		return paymentImg;
	}

	public void setPaymentImg(String paymentImg) {
		this.paymentImg = paymentImg;
	}

	public String getPaymentDescription() {
		return paymentDescription;
	}

	public void setPaymentDescription(String paymentDescription) {
		this.paymentDescription = paymentDescription;
	}

	public String getPaymentATMBankId() {
		return paymentATMBankId;
	}

	public void setPaymentATMBankId(String paymentATMBankId) {
		this.paymentATMBankId = paymentATMBankId;
	}

	public String getPaymentATMAccount() {
		return paymentATMAccount;
	}

	public void setPaymentATMAccount(String paymentATMAccount) {
		this.paymentATMAccount = paymentATMAccount;
	}

	public Timestamp getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}
	

}
