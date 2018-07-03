package supply;
//本類別封裝單筆訂單資料
public class OrderItem {
	String supName;
	String funName;
	Integer qty = 0 ; 
	Integer supUid = 0 ;
	
	public OrderItem() {
	}

	public OrderItem(String supName, String funName, Integer qty, Integer supUid) {
		super();
		this.supName = supName;
		this.funName = funName;
		this.qty = qty;
		this.supUid = supUid;
	}

	public String getSupName() {
		return supName;
	}

	public void setSupName(String supName) {
		this.supName = supName;
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

	public Integer getSupUid() {
		return supUid;
	}

	public void setSupUid(Integer supUid) {
		this.supUid = supUid;
	}

	@Override
	public String toString() {
		return "OrderItem [supName=" + supName + ", funName=" + funName + ", qty=" + qty + ", supUid=" + supUid + "]";
	}
	

}
