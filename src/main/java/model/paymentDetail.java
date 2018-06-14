package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="paymentDetail_ANNO_BI")
public class paymentDetail {
	Integer 	Id;
	Integer 	payBoxNumber;
	String 		MemAccount;
	Integer 	payAmount;
	String 		payMemBankId;
	String 		payMemAccount;
	Date 		payDate;
	public paymentDetail(Integer id, Integer payBoxNumber, String memAccount, Integer payAmount, String payMemBankId,
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
	public paymentDetail() {
		super();
	}
	/**
	 * @return the id
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="cart_id")
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
	public Integer getPayBoxNumber() {
		return payBoxNumber;
	}
	/**
	 * @param payBoxNumber the payBoxNumber to set
	 */
	public void setPayBoxNumber(Integer payBoxNumber) {
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
	
	
	
	
	
}
