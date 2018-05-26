package model;

import java.sql.Blob;
import java.sql.Clob;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class GoodsBean_HO73 {
	
	Integer		goodsUid;
	String		goodsName;
	Blob		goodsImg;
	String      goodsIntro;
	Clob		goodsArticle;
	Timestamp	goodsStartTime;
	Timestamp	goodsEndTime;
	Integer		goodsStock;
	Integer		goodsSafeStock;
	String		goodsSize;
	Integer     goodsPrice;
	Integer		goodsState;
	Integer		funUid;
	Integer		views;
	Timestamp	insertDate;
	public GoodsBean_HO73() {
		super();
	}

	public GoodsBean_HO73(Integer goodsUid, String goodsName, Blob goodsImg, String goodsIntro, Clob goodsArticle,
			Timestamp goodsStartTime, Timestamp goodsEndTime, Integer goodsStock, Integer goodsSafeStock,
			String goodsSize, Integer goodsPrice, Integer goodsState, Integer funUid, Integer views,
			Timestamp insertDate) {
		super();
		this.goodsUid = goodsUid;
		this.goodsName = goodsName;
		this.goodsImg = goodsImg;
		this.goodsIntro = goodsIntro;
		this.goodsArticle = goodsArticle;
		this.goodsStartTime = goodsStartTime;
		this.goodsEndTime = goodsEndTime;
		this.goodsStock = goodsStock;
		this.goodsSafeStock = goodsSafeStock;
		this.goodsSize = goodsSize;
		this.goodsPrice = goodsPrice;
		this.goodsState = goodsState;
		this.funUid = funUid;
		this.views = views;
		this.insertDate = insertDate;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getGoodsUid() {
		return goodsUid;
	}
	public void setGoodsUid(Integer goodsUid) {
		this.goodsUid = goodsUid;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Blob getGoodsImg() {
		return goodsImg;
	}
	public void setGoodsImg(Blob goodsImg) {
		this.goodsImg = goodsImg;
	}
	public Clob getGoodsArticle() {
		return goodsArticle;
	}
	public void setGoodsArticle(Clob goodsArticle) {
		this.goodsArticle = goodsArticle;
	}
	public Timestamp getGoodsStartTime() {
		return goodsStartTime;
	}
	public void setGoodsStartTime(Timestamp goodsStartTime) {
		this.goodsStartTime = goodsStartTime;
	}
	public Timestamp getGoodsEndTime() {
		return goodsEndTime;
	}
	public void setGoodsEndTime(Timestamp goodsEndTime) {
		this.goodsEndTime = goodsEndTime;
	}
	public Integer getGoodsStock() {
		return goodsStock;
	}
	public void setGoodsStock(Integer goodsStock) {
		this.goodsStock = goodsStock;
	}
	public Integer getGoodsSafeStock() {
		return goodsSafeStock;
	}
	public void setGoodsSafeStock(Integer goodsSafeStock) {
		this.goodsSafeStock = goodsSafeStock;
	}
	public String getGoodsSize() {
		return goodsSize;
	}
	public void setGoodsSize(String goodsSize) {
		this.goodsSize = goodsSize;
	}
	public Integer getGoodsState() {
		return goodsState;
	}
	public void setGoodsState(Integer goodsState) {
		this.goodsState = goodsState;
	}
	public Integer getFunUid() {
		return funUid;
	}
	public void setFunUid(Integer funUid) {
		this.funUid = funUid;
	}
	public Integer getViews() {
		return views;
	}
	public void setViews(Integer views) {
		this.views = views;
	}
	public Timestamp getInsertDate() {
		return insertDate;
	}
	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}

	public String getGoodsIntro() {
		return goodsIntro;
	}

	public void setGoodsIntro(String goodsIntro) {
		this.goodsIntro = goodsIntro;
	}

	public Integer getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	@Override
	public String toString() {
		return "GoodsBean_HO73 [goodsUid=" + goodsUid + ", goodsName=" + goodsName + ", goodsImg=" + goodsImg
				+ ", goodsIntro=" + goodsIntro + ", goodsArticle=" + goodsArticle + ", goodsStartTime=" + goodsStartTime
				+ ", goodsEndTime=" + goodsEndTime + ", goodsStock=" + goodsStock + ", goodsSafeStock=" + goodsSafeStock
				+ ", goodsSize=" + goodsSize + ", goodsPrice=" + goodsPrice + ", goodsState=" + goodsState + ", funUid="
				+ funUid + ", views=" + views + ", insertDate=" + insertDate + "]";
	}


	
	
}
