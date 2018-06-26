package model.bean;

import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "PayBox")
public class PayBox {
	private Integer payBoxNumber;
	private String payBoxName;
	private Integer balance;
	private String payBoxDetail;
	private String payBankId;
	private String payATMAccount;
	private Date insertDate;
	private Integer viewTimes;
	private Integer payBoxType;
	private FoundationBean_HO73 foundationBean;
	private Set<PaymentIn> paymentIn = new LinkedHashSet<>();
	private Set<PaymentOut> paymentOut = new LinkedHashSet<>();
	
	public PayBox() {
		super();
	}

	
	
	public PayBox(Integer payBoxNumber, String payBoxName, FoundationBean_HO73 foundationBean) {
		super();
		this.payBoxNumber = payBoxNumber;
		this.payBoxName = payBoxName;
		this.foundationBean = foundationBean;
	}



	public PayBox(String payBoxName, String payBoxDetail, String payBankId, String payATMAccount, Integer payBoxType,
			FoundationBean_HO73 foundationBean) {
		super();
		this.payBoxName = payBoxName;
		this.payBoxDetail = payBoxDetail;
		this.payBankId = payBankId;
		this.payATMAccount = payATMAccount;
		this.payBoxType = payBoxType;
		this.foundationBean = foundationBean;
		insertDate = new Date();
		viewTimes = 0;
		balance = 0;
	}



	public PayBox(Integer payBoxNumber, String payBoxName, String payBoxDetail, String payBankId,
			String payATMAccount, Date insertDate, Integer viewTimes, Integer payBoxType,
			FoundationBean_HO73 foundationBean) {
		super();
		this.payBoxNumber = payBoxNumber;
		this.payBoxName = payBoxName;
		this.payBoxDetail = payBoxDetail;
		this.payBankId = payBankId;
		this.payATMAccount = payATMAccount;
		this.insertDate = insertDate;
		this.viewTimes = viewTimes;
		this.payBoxType = payBoxType;
		this.foundationBean = foundationBean;
	}



	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getPayBoxNumber() {
		return payBoxNumber;
	}

	public void setPayBoxNumber(Integer payBoxNumber) {
		this.payBoxNumber = payBoxNumber;
	}


	public String getPayBoxName() {
		return payBoxName;
	}

	public void setPayBoxName(String payBoxName) {
		this.payBoxName = payBoxName;
	}


	public Integer getBalance() {
		return balance;
	}

	public void setBalance(Integer balance) {
		this.balance = balance;
	}



	public String getPayBoxDetail() {
		return payBoxDetail;
	}

	public void setPayBoxDetail(String payBoxDetail) {
		this.payBoxDetail = payBoxDetail;
	}

	public String getPayBankId() {
		return payBankId;
	}

	public void setPayBankId(String payBankId) {
		this.payBankId = payBankId;
	}

	public String getPayATMAccount() {
		return payATMAccount;
	}

	public void setPayATMAccount(String payATMAccount) {
		this.payATMAccount = payATMAccount;
	}

	public Date getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}

	public Integer getViewTimes() {
		return viewTimes;
	}

	public void setViewTimes(Integer viewTimes) {
		this.viewTimes = viewTimes;
	}

	public Integer getPayBoxType() {
		return payBoxType;
	}

	public void setPayBoxType(Integer payBoxType) {
		this.payBoxType = payBoxType;
	}
	
	@ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
	// @JoinColumn: 定義多方(Items)所對應表格中的外來鍵為何。省略此註釋，
	// Hibernate會自動產生ㄧ個外來鍵，預設名稱為: 此性質名稱_外來鍵對應的主鍵名稱
	@JoinColumn(name="fk_payIdcard ", nullable=true)  
	public FoundationBean_HO73 getFoundationBean() {
		return foundationBean;
	}

	public void setFoundationBean(FoundationBean_HO73 foundationBean) {
		this.foundationBean = foundationBean;
	}
	

	@OneToMany(mappedBy="payBoxNumber", cascade={CascadeType.ALL}) 
	public Set<PaymentIn> getPaymentIn() {
		return paymentIn;
	}
	public void setPaymentIn(Set<PaymentIn> paymentIn) {
		this.paymentIn = paymentIn;
	}
	@OneToMany(mappedBy="payBoxNumber", cascade={CascadeType.ALL}) 
	public Set<PaymentOut> getPaymentOut() {
		return paymentOut;
	}
	public void setPaymentOut(Set<PaymentOut> paymentOut) {
		this.paymentOut = paymentOut;
	}
}