package supply;
//本類別封裝單筆訂單資料
public class OrderItem {
	String supName;
	String funName;
	String funAddress;
	String funTel;
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

	

	public OrderItem(String supName, String funName, String funAddress, String funTel, Integer qty, Integer supUid) {
		super();
		this.supName = supName;
		this.funName = funName;
		this.funAddress = funAddress;
		this.funTel = funTel;
		this.qty = qty;
		this.supUid = supUid;
	}

	public String getFunAddress() {
		return funAddress;
	}

	public void setFunAddress(String funAddress) {
		this.funAddress = funAddress;
	}


	public String getFunTel() {
		return funTel;
	}

	public void setFunTel(String funTel) {
		this.funTel = funTel;
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
