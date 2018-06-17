package goods;
//本類別封裝單筆訂單資料
public class OrderItem {
	String goodsName;
	String funName;
	Integer qty = 0 ; 
	Integer goodsUid = 0 ;
	Double goodsPrice = 0.0 ; 
	Double discount = 1.0 ;
	Double deliveryAmt = 0.0;

	public OrderItem(String goodsName, String funName, Integer qty, Integer goodsUid, Double goodsPrice,
			Double discount, Double deliveryAmt) {
		super();
		this.goodsName = goodsName;
		this.funName = funName;
		this.qty = qty;
		this.goodsUid = goodsUid;
		this.goodsPrice = goodsPrice;
		this.discount = discount;
		this.deliveryAmt = deliveryAmt;
	}
	

	public OrderItem() {
	}


	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getFunName() {
		return funName;
	}

	public void setFunName(String funName) {
		this.funName = funName;
	}

	public Integer getQty() {
		return qty;
	}

	public void setQty(Integer qty) {
		this.qty = qty;
	}

	public Integer getGoodsUid() {
		return goodsUid;
	}

	public void setGoodsUid(Integer goodsUid) {
		this.goodsUid = goodsUid;
	}


	public Double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(Double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public Double getDeliveryAmt() {
		return deliveryAmt;
	}

	public void setDeliveryAmt(Double deliveryAmt) {
		this.deliveryAmt = deliveryAmt;
	}


}