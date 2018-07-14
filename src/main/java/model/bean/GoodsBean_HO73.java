package model.bean;

import java.sql.Blob;
import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class GoodsBean_HO73 {
	
	Integer							goodsUid;
	String							goodsName;
	Blob							goodsImg;
	String							goodsIntro;
	String							goodsArticle;
	Timestamp						goodsStartTime;
	Timestamp						goodsEndTime;
	Integer							goodsStock;
	Integer							goodsSafeStock;
	String							goodsSize;
	Integer							goodsPrice;
	Integer							goodsState;
	Integer							goodsView;
	Timestamp						insertDate;
	String							goodsImgFileName;
	String      					goodsImgString;
	Set<GoodsImgBean> 				GoodsImgBean = new LinkedHashSet<>();
	transient FoundationBean_HO73 	foundationBean_HO73;
	
	
	public GoodsBean_HO73() {
		super();
	}

	public GoodsBean_HO73(Integer goodsUid, String goodsName, Blob goodsImg, String goodsIntro, String goodsArticle,
			Timestamp goodsStartTime, Timestamp goodsEndTime, Integer goodsStock, Integer goodsSafeStock,
			String goodsSize, Integer goodsPrice, Integer goodsState, Integer goodsView, Timestamp insertDate,
			FoundationBean_HO73 foundationBean_HO73) {
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
		this.goodsView = goodsView;
		this.insertDate = insertDate;
		this.foundationBean_HO73 = foundationBean_HO73;
	}


	public GoodsBean_HO73(Integer goodsUid, String goodsName, Blob goodsImg, String goodsIntro, String goodsArticle,
			Timestamp goodsStartTime, Timestamp goodsEndTime, Integer goodsStock, Integer goodsSafeStock,
			String goodsSize, Integer goodsPrice, Integer goodsState, Integer goodsView, Timestamp insertDate) {
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
		this.goodsView = goodsView;
		this.insertDate = insertDate;
	}
	

	public GoodsBean_HO73(String goodsName, String goodsIntro, String goodsArticle, Integer goodsStock,
			Integer goodsPrice, String goodsImgFileName, Integer goodsView, Timestamp insertDate, Blob goodsImg, FoundationBean_HO73 foundationBean_HO73) {
		super();
		this.goodsName = goodsName;
		this.goodsIntro = goodsIntro;
		this.goodsArticle = goodsArticle;
		this.goodsStock = goodsStock;
		this.goodsPrice = goodsPrice;
		this.goodsImgFileName = goodsImgFileName;
		this.goodsView = goodsView;
		this.insertDate = insertDate;
		this.goodsImg = goodsImg;
		this.foundationBean_HO73 = foundationBean_HO73;
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
	public Integer getGoodsView() {
		return goodsView;
	}
	
	public void setGoodsView(Integer goodsView) {
		this.goodsView = goodsView;
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
	

	public Blob getGoodsImg() {
		return goodsImg;
	}

	public void setGoodsImg(Blob goodsImg) {
		this.goodsImg = goodsImg;
	}

	@Column(length = 5000)
	public String getGoodsArticle() {
		return goodsArticle;
	}

	public void setGoodsArticle(String goodsArticle) {
		this.goodsArticle = goodsArticle;
	}

	@ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
	// @JoinColumn: 定義多方(Items)所對應表格中的外來鍵為何。省略此註釋，
	// Hibernate會自動產生ㄧ個外來鍵，預設名稱為: 此性質名稱_外來鍵對應的主鍵名稱
	@JoinColumn(name="funIdCard")  
	public FoundationBean_HO73 getFoundationBean_HO73() {
		return foundationBean_HO73;
	}


	public String getGoodsImgFileName() {
		return goodsImgFileName;
	}

	public void setGoodsImgFileName(String goodsImgFileName) {
		this.goodsImgFileName = goodsImgFileName;
	}

	public void setFoundationBean_HO73(FoundationBean_HO73 foundationBean_HO73) {
		this.foundationBean_HO73 = foundationBean_HO73;
	}

	public String getGoodsImgString() {
		return goodsImgString;
	}

	public void setGoodsImgString(String goodsImgString) {
		this.goodsImgString = goodsImgString;
	}
	@OneToMany(mappedBy="goodsUid", cascade={CascadeType.ALL}) 
	public Set<GoodsImgBean> getGoodsImgBean() {
		return GoodsImgBean;
	}

	public void setGoodsImgBean(Set<GoodsImgBean> goodsImgBean) {
		GoodsImgBean = goodsImgBean;
	}

	@Override
	public String toString() {
		return "GoodsBean_HO73 [goodsUid=" + goodsUid + ", goodsName=" + goodsName + ", goodsImg=" + goodsImg
				+ ", goodsIntro=" + goodsIntro + ", goodsArticle=" + goodsArticle + ", goodsStartTime=" + goodsStartTime
				+ ", goodsEndTime=" + goodsEndTime + ", goodsStock=" + goodsStock + ", goodsSafeStock=" + goodsSafeStock
				+ ", goodsSize=" + goodsSize + ", goodsPrice=" + goodsPrice + ", goodsState=" + goodsState
				+ ", goodsView=" + goodsView + ", insertDate=" + insertDate + ", foundationBean_HO73="
				+ foundationBean_HO73 + "]";
	}


	
	
}
