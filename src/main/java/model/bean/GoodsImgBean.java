package model.bean;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class GoodsImgBean {

	Integer						goodsImgUid;
	transient GoodsBean_HO73	goodsUid;
	Blob        				goodsImg;
	
	
	public GoodsImgBean() {
		super();
	}
	public GoodsImgBean(GoodsBean_HO73 goodsUid, Blob goodsImg) {
		super();
		this.goodsUid = goodsUid;
		this.goodsImg = goodsImg;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getGoodsImgUid() {
		return goodsImgUid;
	}
	public void setGoodsImgUid(Integer goodsImgUid) {
		this.goodsImgUid = goodsImgUid;
	}
	
	@ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
	// @JoinColumn: 定義多方(Items)所對應表格中的外來鍵為何。省略此註釋，
	// Hibernate會自動產生ㄧ個外來鍵，預設名稱為: 此性質名稱_外來鍵對應的主鍵名稱
	@JoinColumn(name="goodsUid ", nullable=true)  
	public GoodsBean_HO73 getGoodsUid() {
		return goodsUid;
	}
	public void setGoodsUid(GoodsBean_HO73 goodsUid) {
		this.goodsUid = goodsUid;
	}
	public Blob getGoodsImg() {
		return goodsImg;
	}
	public void setGoodsImg(Blob goodsImg) {
		this.goodsImg = goodsImg;
	}
	
	
	
	
}
