package supplyShoppingCart.model;

import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
// 本類別存放訂單資料
@Entity
public class SupplyOrderBean_HO73 {
	Integer orderNo;
	String 	memAccount;
	String	funAddress; 
	String	funName;
	String  funTel;
	String  receiptName;
	String  receiptAddress;
	String  receiptPhone;
	Date    orderDate;
	Date    sendDate;
	String  sendTag;
	String	cancelTag;
	Set<SupplyOrderItemBean_HO73> items = new LinkedHashSet<>();
	
	public SupplyOrderBean_HO73() {
	}

	public SupplyOrderBean_HO73(Integer orderNo, String memAccount, String funAddress, String funName, String funTel,
			String receiptName, String receiptAddress, String receiptPhone, Date orderDate, Date sendDate,
			String sendTag, String cancelTag, Set<SupplyOrderItemBean_HO73> items) {
		super();
		this.orderNo = orderNo;
		this.memAccount = memAccount;
		this.funAddress = funAddress;
		this.funName = funName;
		this.funTel = funTel;
		this.receiptName = receiptName;
		this.receiptAddress = receiptAddress;
		this.receiptPhone = receiptPhone;
		this.orderDate = orderDate;
		this.sendDate = sendDate;
		this.sendTag = sendTag;
		this.cancelTag = cancelTag;
		this.items = items;
	}





	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getOrderNo() {
		return orderNo;
	}

	@OneToMany(mappedBy="supplyOrderBean_HO73", cascade={CascadeType.ALL})
	// 說明多方表格的orderBean欄位為外鍵欄位，對照的主鍵為一方表格的orderno欄
	public Set<SupplyOrderItemBean_HO73> getItems() {
		return items;
	}

	public void setItems(Set<SupplyOrderItemBean_HO73> items) {
		this.items = items;
	}

	public String getMemAccount() {
		return memAccount;
	}

	public void setMemAccount(String memAccount) {
		this.memAccount = memAccount;
	}

	public String getFunAddress() {
		return funAddress;
	}

	public void setFunAddress(String funAddress) {
		this.funAddress = funAddress;
	}

	public String getReceiptName() {
		return receiptName;
	}

	public void setReceiptName(String receiptName) {
		this.receiptName = receiptName;
	}

	public String getReceiptAddress() {
		return receiptAddress;
	}

	public void setReceiptAddress(String receiptAddress) {
		this.receiptAddress = receiptAddress;
	}

	public String getReceiptPhone() {
		return receiptPhone;
	}

	public void setReceiptPhone(String receiptPhone) {
		this.receiptPhone = receiptPhone;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Date getSendDate() {
		return sendDate;
	}

	public void setSendDate(Date sendDate) {
		this.sendDate = sendDate;
	}

	public String getSendTag() {
		return sendTag;
	}

	public void setSendTag(String sendTag) {
		this.sendTag = sendTag;
	}

	public String getCancelTag() {
		return cancelTag;
	}

	public void setCancelTag(String cancelTag) {
		this.cancelTag = cancelTag;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	public String getFunName() {
		return funName;
	}

	public void setFunName(String funName) {
		this.funName = funName;
	}

	public String getFunTel() {
		return funTel;
	}

	public void setFunTel(String funTel) {
		this.funTel = funTel;
	}

	@Override
	public String toString() {
		return "SupplyOrderBean_HO73 [orderNo=" + orderNo + ", memAccount=" + memAccount + ", funAddress=" + funAddress
				+ ", funName=" + funName + ", funTel=" + funTel + ", receiptName=" + receiptName + ", receiptAddress="
				+ receiptAddress + ", receiptPhone=" + receiptPhone + ", orderDate=" + orderDate + ", sendDate="
				+ sendDate + ", sendTag=" + sendTag + ", cancelTag=" + cancelTag + ", items=" + items + "]";
	}

	
}
