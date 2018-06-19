package shoppingCart.model;

import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;
// 本類別存放訂單資料
public class OrderBean_HO73 {
	Integer orderNo;
	String 	memAccount;
	Double	totalAmount;
	String	shippingAddress; 
	String  bno;
	String  invoiceTitle;
	Date  orderDate;
	Date  shippingDate;
	String	cancelTag;
	Set<OrderItemBean_HO73> items = new LinkedHashSet<>();
	
	public OrderBean_HO73() {
		
	}

	
	public OrderBean_HO73(Integer orderNo, String memAccount, Double totalAmount, String shippingAddress, String bno,
			String invoiceTitle, Date orderDate, Date shippingDate, String cancelTag, Set<OrderItemBean_HO73> items) {
		super();
		this.orderNo = orderNo;
		this.memAccount = memAccount;
		this.totalAmount = totalAmount;
		this.shippingAddress = shippingAddress;
		this.bno = bno;
		this.invoiceTitle = invoiceTitle;
		this.orderDate = orderDate;
		this.shippingDate = shippingDate;
		this.cancelTag = cancelTag;
		this.items = items;
	}


	public Integer getOrderNo() {
		return orderNo;
	}

	// 說明多方表格的orderBean欄位為外鍵欄位，對照的主鍵為一方表格的orderno欄
	public Set<OrderItemBean_HO73> getItems() {
		return items;
	}

	public void setItems(Set<OrderItemBean_HO73> items) {
		this.items = items;
	}
	
	
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	
	

	public String getMemAccount() {
		return memAccount;
	}


	public void setMemAccount(String memAccount) {
		this.memAccount = memAccount;
	}


	public Double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(Double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}

	public String getInvoiceTitle() {
		return invoiceTitle;
	}

	public void setInvoiceTitle(String invoiceTitle) {
		this.invoiceTitle = invoiceTitle;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Date getShippingDate() {
		return shippingDate;
	}

	public void setShippingDate(Date shippingDate) {
		this.shippingDate = shippingDate;
	}

	public String getCancelTag() {
		return cancelTag;
	}

	public void setCancelTag(String cancelTag) {
		this.cancelTag = cancelTag;
	}
	
}
