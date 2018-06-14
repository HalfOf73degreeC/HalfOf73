package model.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="PaymentOut")
public class PaymentOut {
	Integer 	Id;
	PayBox	 	payBoxNumber;
	String 		MemAccount;
	Integer 	payAmount;
	String 		payMemBankId;
	String 		payMemAccount;
	Date 		payDate;
	
	public PaymentOut(PayBox payBoxNumber, String memAccount, Integer payAmount) {
		super();
		this.payBoxNumber = payBoxNumber;
		MemAccount = memAccount;
		this.payAmount = payAmount;
	}
	
	public PaymentOut(Integer id, PayBox payBoxNumber, String memAccount, Integer payAmount, String payMemBankId,
			String payMemAccount, Date payDate) {
		super();
		Id = id;
		this.payBoxNumber = payBoxNumber;
		MemAccount = memAccount;
		this.payAmount = payAmount;
		this.payMemBankId = payMemBankId;
		this.payMemAccount = payMemAccount;
		this.payDate = payDate;
	}
	public PaymentOut() {
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

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "PaymentDetail [payBoxNumber=" + payBoxNumber + ", MemAccount=" + MemAccount + ", payAmount=" + payAmount
				+ "]";
	}
	
	
	
	
	
}
