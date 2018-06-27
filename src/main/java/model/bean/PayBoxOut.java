package model.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="PaymentOut")
public class PayBoxOut {
	private 			Integer 	Id;
	private transient 	PayBox 		payBoxNumber;
	private 			String 		payIdcard;
	private 			String 		payForName;
	private 			String 		payForDetail;
	private 			Integer 	payForCost;	
	private 			String 		receipt;
	private 			Date 		insertDate;
	
	public PayBoxOut(PayBox payBoxNumber, String payForName, Integer payForCost) {
		super();
		this.payBoxNumber = payBoxNumber;
		this.payForName = payForName;
		this.payForCost = payForCost;
	}
	public PayBoxOut(Integer id, PayBox payBoxNumber, String payIdcard, String payForName, String payForDetail,
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
	public PayBoxOut() {
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
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "PaymentCost [payBoxNumber=" + payBoxNumber + ", payForName=" + payForName + ", payForCost=" + payForCost
				+ "]";
	}
	
	
}
