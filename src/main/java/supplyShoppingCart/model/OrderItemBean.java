package supplyShoppingCart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="OrderItems")
public class OrderItemBean {
	Integer seqno;
	Integer orderNo;
	Integer supId;
	String description;
	Integer quantity;
	OrderBean  orderBean;
	
	@ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
	// @JoinColumn: 定義多方(Items)所對應表格中的外來鍵為何。省略此註釋，
	// Hibernate會自動產生ㄧ個外來鍵，預設名稱為: 此性質名稱_外來鍵對應的主鍵名稱
	@JoinColumn(name="fk_Order_no", nullable=false)  
	public OrderBean getOrderBean() {
		return orderBean;
	}
	public void setOrderBean(OrderBean orderBean) {
		this.orderBean = orderBean;
	}
	
	public OrderItemBean(Integer seqno, Integer orderNo, Integer supId, String description, Integer quantity,
			OrderBean orderBean) {
		super();
		this.seqno = seqno;
		this.orderNo = orderNo;
		this.supId = supId;
		this.description = description;
		this.quantity = quantity;
		this.orderBean = orderBean;
	}
	
	public OrderItemBean(Integer orderNo, Integer supId, String description, Integer quantity, OrderBean orderBean) {
		super();
		this.orderNo = orderNo;
		this.supId = supId;
		this.description = description;
		this.quantity = quantity;
		this.orderBean = orderBean;
	}
	
	public OrderItemBean() {
		
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getSeqno() {
		return seqno;
	}

	public void setSeqno(Integer seqno) {
		this.seqno = seqno;
	}
	public Integer getSupId() {
		return supId;
	}
	public void setSupId(Integer supId) {
		this.supId = supId;
	}
	public Integer getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


}