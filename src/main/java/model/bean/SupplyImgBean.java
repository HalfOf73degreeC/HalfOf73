package model.bean;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class SupplyImgBean {

	Integer						supImgUid;
	transient SupplyBean_HO73	supUid;
	Blob        				supImg;
	
	
	public SupplyImgBean() {
		super();
	}


	public SupplyImgBean(SupplyBean_HO73 supUid, Blob supImg) {
		super();
		this.supUid = supUid;
		this.supImg = supImg;
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getSupImgUid() {
		return supImgUid;
	}


	public void setSupImgUid(Integer supImgUid) {
		this.supImgUid = supImgUid;
	}

	
	@ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
	// @JoinColumn: 定義多方(Items)所對應表格中的外來鍵為何。省略此註釋，
	// Hibernate會自動產生ㄧ個外來鍵，預設名稱為: 此性質名稱_外來鍵對應的主鍵名稱
	@JoinColumn(name="supUid ", nullable=true)  
	public SupplyBean_HO73 getSupUid() {
		return supUid;
	}


	public void setSupUid(SupplyBean_HO73 supUid) {
		this.supUid = supUid;
	}


	public Blob getSupImg() {
		return supImg;
	}


	public void setSupImg(Blob supImg) {
		this.supImg = supImg;
	}
	
	
	
}
