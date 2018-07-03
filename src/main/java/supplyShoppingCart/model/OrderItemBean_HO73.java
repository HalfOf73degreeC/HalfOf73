package supplyShoppingCart.model;

public class OrderItemBean_HO73 {
	Integer seqno;
	Integer orderNo;
	Integer goodsUid;
	String description;
	Integer quantity;
	Double unitPrice;
	Double discount;

	public OrderItemBean_HO73(Integer seqno, Integer orderNo, Integer goodsUid, String description, Integer quantity,
			Double unitPrice, Double discount) {
		super();
		this.seqno = seqno;
		this.orderNo = orderNo;
		this.goodsUid = goodsUid;
		this.description = description;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.discount = discount;
	}

	public OrderItemBean_HO73(Integer orderNo, Integer goodsUid, String description, Integer quantity, Double unitPrice,
			Double discount) {
		super();
		this.orderNo = orderNo;
		this.goodsUid = goodsUid;
		this.description = description;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.discount = discount;
	}


	public OrderItemBean_HO73() {
		
	}

	public Integer getSeqno() {
		return seqno;
	}

	public void setSeqno(Integer seqno) {
		this.seqno = seqno;
	}

	public Integer getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	public Integer getGoodsUid() {
		return goodsUid;
	}

	public void setGoodsUid(Integer goodsUid) {
		this.goodsUid = goodsUid;
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

	public Double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	
}