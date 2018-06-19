package model.bean;

import java.util.Date;

<<<<<<< HEAD
<<<<<<< HEAD
=======
import javax.persistence.Column;
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
import javax.persistence.Column;
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="PaymentIn")
public class PaymentIn {
	Integer 	Id;
<<<<<<< HEAD
<<<<<<< HEAD
	PayBox 		payBoxNumber;
	String 		payIdcard;
	String 		payForName;
	String 		payForDetail;
	Integer 	payForCost;	
	String 		receipt;
	Date 		insertDate;
	
	public PaymentIn(PayBox payBoxNumber, String payForName, Integer payForCost) {
		super();
		this.payBoxNumber = payBoxNumber;
		this.payForName = payForName;
		this.payForCost = payForCost;
	}
	public PaymentIn(Integer id, PayBox payBoxNumber, String payIdcard, String payForName, String payForDetail,
			Integer payForCost, String receipt, Date insertDate) {
		super();
		Id = id;
		this.payBoxNumber = payBoxNumber;
		this.payIdcard = payIdcard;
		this.payForName = payForName;
		this.payForDetail = payForDetail;
		this.payForCost = payForCost;
		this.receipt = receipt;
		this.insertDate = insertDate;
=======
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
	PayBox	 	payBoxNumber;
	String 		MemAccount;
	Integer 	payAmount;
	String 		payMemBankId;
	String 		payMemAccount;
	Date 		payDate;
	
	public PaymentIn(PayBox payBoxNumber, String memAccount, Integer payAmount) {
		super();
		this.payBoxNumber = payBoxNumber;
		MemAccount = memAccount;
		this.payAmount = payAmount;
	}
	
	public PaymentIn(Integer id, PayBox payBoxNumber, String memAccount, Integer payAmount, String payMemBankId,
			String payMemAccount, Date payDate) {
		super();
		Id = id;
		this.payBoxNumber = payBoxNumber;
		MemAccount = memAccount;
		this.payAmount = payAmount;
		this.payMemBankId = payMemBankId;
		this.payMemAccount = payMemAccount;
		this.payDate = payDate;
<<<<<<< HEAD
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
	}
	public PaymentIn() {
		super();
	}
	/**
	 * @return the id
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return Id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		Id = id;
	}
	/**
	 * @return the payBoxNumber
	 */
	@ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
	// @JoinColumn: 定義多方(Items)所對應表格中的外來鍵為何。省略此註釋，
	// Hibernate會自動產生ㄧ個外來鍵，預設名稱為: 此性質名稱_外來鍵對應的主鍵名稱
	@JoinColumn(name="fk_payBoxNumber", nullable=true)  
	public PayBox getPayBoxNumber() {
		return payBoxNumber;
	}
	/**
	 * @param payBoxNumber the payBoxNumber to set
	 */
	public void setPayBoxNumber(PayBox payBoxNumber) {
		this.payBoxNumber = payBoxNumber;
	}
	/**
<<<<<<< HEAD
<<<<<<< HEAD
	 * @return the payIdcard
	 */
	public String getPayIdcard() {
		return payIdcard;
	}
	/**
	 * @param payIdcard the payIdcard to set
	 */
	public void setPayIdcard(String payIdcard) {
		this.payIdcard = payIdcard;
	}
	/**
	 * @return the payForName
	 */
	public String getPayForName() {
		return payForName;
	}
	/**
	 * @param payForName the payForName to set
	 */
	public void setPayForName(String payForName) {
		this.payForName = payForName;
	}
	/**
	 * @return the payForDetail
	 */
	public String getPayForDetail() {
		return payForDetail;
	}
	/**
	 * @param payForDetail the payForDetail to set
	 */
	public void setPayForDetail(String payForDetail) {
		this.payForDetail = payForDetail;
	}
	/**
	 * @return the payForCost
	 */
	public Integer getPayForCost() {
		return payForCost;
	}
	/**
	 * @param payForCost the payForCost to set
	 */
	public void setPayForCost(Integer payForCost) {
		this.payForCost = payForCost;
	}
	/**
	 * @return the receipt
	 */
	public String getReceipt() {
		return receipt;
	}
	/**
	 * @param receipt the receipt to set
	 */
	public void setReceipt(String receipt) {
		this.receipt = receipt;
	}
	/**
	 * @return the insertDate
	 */
	public Date getInsertDate() {
		return insertDate;
	}
	/**
	 * @param insertDate the insertDate to set
	 */
	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}
=======
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
	 * @return the memAccount
	 */
	public String getMemAccount() {
		return MemAccount;
	}
	/**
	 * @param memAccount the memAccount to set
	 */
	public void setMemAccount(String memAccount) {
		MemAccount = memAccount;
	}
	/**
	 * @return the payAmount
	 */
	public Integer getPayAmount() {
		return payAmount;
	}
	/**
	 * @param payAmount the payAmount to set
	 */
	public void setPayAmount(Integer payAmount) {
		this.payAmount = payAmount;
	}
	/**
	 * @return the payMemBankId
	 */
	public String getPayMemBankId() {
		return payMemBankId;
	}
	/**
	 * @param payMemBankId the payMemBankId to set
	 */
	public void setPayMemBankId(String payMemBankId) {
		this.payMemBankId = payMemBankId;
	}
	/**
	 * @return the payMemAccount
	 */
	public String getPayMemAccount() {
		return payMemAccount;
	}
	/**
	 * @param payMemAccount the payMemAccount to set
	 */
	public void setPayMemAccount(String payMemAccount) {
		this.payMemAccount = payMemAccount;
	}
	/**
	 * @return the payDate
	 */
	public Date getPayDate() {
		return payDate;
	}
	/**
	 * @param payDate the payDate to set
	 */
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

<<<<<<< HEAD
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
<<<<<<< HEAD
<<<<<<< HEAD
		return "PaymentCost [payBoxNumber=" + payBoxNumber + ", payForName=" + payForName + ", payForCost=" + payForCost
=======
		return "PaymentDetail [payBoxNumber=" + payBoxNumber + ", MemAccount=" + MemAccount + ", payAmount=" + payAmount
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
		return "PaymentDetail [payBoxNumber=" + payBoxNumber + ", MemAccount=" + MemAccount + ", payAmount=" + payAmount
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
				+ "]";
	}
	
	
<<<<<<< HEAD
<<<<<<< HEAD
=======
	
	
	
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
	
	
	
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
}
