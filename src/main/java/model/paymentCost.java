package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="paymenCost_ANNO_BI")
public class paymentCost {
	Integer 	Id;
	String 		payBoxNumber;
	String 		payIdcard;
	String 		payForName;
	String 		payForDetail;
	Integer 	payForCost;	
	String 		receipt;
	Date 		insertDate;
	public paymentCost(Integer id, String payBoxNumber, String payIdcard, String payForName, String payForDetail,
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
	}
	public paymentCost() {
		super();
	}
	/**
	 * @return the id
	 */
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
	public String getPayBoxNumber() {
		return payBoxNumber;
	}
	/**
	 * @param payBoxNumber the payBoxNumber to set
	 */
	public void setPayBoxNumber(String payBoxNumber) {
		this.payBoxNumber = payBoxNumber;
	}
	/**
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
	
	
}
