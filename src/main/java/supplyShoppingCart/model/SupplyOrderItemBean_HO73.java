package supplyShoppingCart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class SupplyOrderItemBean_HO73 {
	Integer seqno;
	Integer supId;
	String description;
	Integer quantity;
	transient SupplyOrderBean_HO73  supplyOrderBean_HO73;
	
	public SupplyOrderItemBean_HO73(Integer seqno, Integer supId, String description, Integer quantity,
			SupplyOrderBean_HO73 supplyOrderBean_HO73) {
		super();
		this.seqno = seqno;
		this.supId = supId;
		this.description = description;
		this.quantity = quantity;
		this.supplyOrderBean_HO73 = supplyOrderBean_HO73;
	}

	public SupplyOrderItemBean_HO73(Integer seqno, Integer supId, String description, Integer quantity) {
		super();
		this.seqno = seqno;
		this.supId = supId;
		this.description = description;
		this.quantity = quantity;
	}

	public SupplyOrderItemBean_HO73(Integer supId, String description, Integer quantity,
			SupplyOrderBean_HO73 supplyOrderBean_HO73) {
		super();
		this.supId = supId;
		this.description = description;
		this.quantity = quantity;
		this.supplyOrderBean_HO73 = supplyOrderBean_HO73;
	}

	@ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
	// @JoinColumn: 定義多方(Items)所對應表格中的外來鍵為何。省略此註釋，
	// Hibernate會自動產生ㄧ個外來鍵，預設名稱為: 此性質名稱_外來鍵對應的主鍵名稱
	@JoinColumn(name="orderNo", nullable=true)  
	public SupplyOrderBean_HO73 getSupplyOrderBean_HO73() {
		return supplyOrderBean_HO73;
	}

	public void setSupplyOrderBean_HO73(SupplyOrderBean_HO73 supplyOrderBean_HO73) {
		this.supplyOrderBean_HO73 = supplyOrderBean_HO73;
	}
	
	
	public SupplyOrderItemBean_HO73() {
		
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