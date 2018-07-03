package model.bean;

import java.sql.Blob;
import java.sql.Clob;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
public class SupplyBean_HO73 {
	
	Integer		supUid;
	String		supName;
	Blob		supImg;
	String      supImgFileName;
	String      supIntro;
	Clob		supArticle;
	Timestamp	supStartTime;
	Timestamp	supEndTime;
	Integer		supNeedStock;
	Integer		supFinalStock;
	String		supSize;
	Integer		supState;
	Integer		views;
	Timestamp	insertDate;
	FoundationBean_HO73 foundationBean_HO73;
	
	
	public SupplyBean_HO73() {
		super();
	}


	public SupplyBean_HO73(Integer supUid, String supName, Blob supImg, String supImgFileName, String supIntro,
			Clob supArticle, Timestamp supStartTime, Timestamp supEndTime, Integer supNeedStock, Integer supFinalStock,
			String supSize, Integer supState, Integer views, Timestamp insertDate,
			FoundationBean_HO73 foundationBean_HO73) {
		super();
		this.supUid = supUid;
		this.supName = supName;
		this.supImg = supImg;
		this.supImgFileName = supImgFileName;
		this.supIntro = supIntro;
		this.supArticle = supArticle;
		this.supStartTime = supStartTime;
		this.supEndTime = supEndTime;
		this.supNeedStock = supNeedStock;
		this.supFinalStock = supFinalStock;
		this.supSize = supSize;
		this.supState = supState;
		this.views = views;
		this.insertDate = insertDate;
		this.foundationBean_HO73 = foundationBean_HO73;
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getSupUid() {
		return supUid;
	}

	public void setSupUid(Integer supUid) {
		this.supUid = supUid;
	}

	public String getSupName() {
		return supName;
	}

	public void setSupName(String supName) {
		this.supName = supName;
	}

	public Blob getSupImg() {
		return supImg;
	}

	public void setSupImg(Blob supImg) {
		this.supImg = supImg;
	}

	public Clob getSupArticle() {
		return supArticle;
	}

	public void setSupArticle(Clob supArticle) {
		this.supArticle = supArticle;
	}

	public Timestamp getSupStartTime() {
		return supStartTime;
	}

	public void setSupStartTime(Timestamp supStartTime) {
		this.supStartTime = supStartTime;
	}

	public Timestamp getSupEndTime() {
		return supEndTime;
	}

	public void setSupEndTime(Timestamp supEndTime) {
		this.supEndTime = supEndTime;
	}

	public String getSupSize() {
		return supSize;
	}

	public void setSupSize(String supSize) {
		this.supSize = supSize;
	}

	public Integer getSupState() {
		return supState;
	}

	public void setSupState(Integer supState) {
		this.supState = supState;
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

	public String getSupImgFileName() {
		return supImgFileName;
	}

	public void setSupImgFileName(String supImgFileName) {
		this.supImgFileName = supImgFileName;
	}

	public String getSupIntro() {
		return supIntro;
	}

	public void setSupIntro(String supIntro) {
		this.supIntro = supIntro;
	}

	public Integer getSupNeedStock() {
		return supNeedStock;
	}

	public void setSupNeedStock(Integer supNeedStock) {
		this.supNeedStock = supNeedStock;
	}

	public Integer getSupFinalStock() {
		return supFinalStock;
	}

	public void setSupFinalStock(Integer supFinalStock) {
		this.supFinalStock = supFinalStock;
	}
	
	@ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
	// @JoinColumn: 定義多方(Items)所對應表格中的外來鍵為何。省略此註釋，
	// Hibernate會自動產生ㄧ個外來鍵，預設名稱為: 此性質名稱_外來鍵對應的主鍵名稱
	@JoinColumn(name="funUid")  
	public FoundationBean_HO73 getFoundationBean_HO73() {
		return foundationBean_HO73;
	}

	public void setFoundationBean_HO73(FoundationBean_HO73 foundationBean_HO73) {
		this.foundationBean_HO73 = foundationBean_HO73;
	}

	@Override
	public String toString() {
		return "SupplyBean_HO73 [supUid=" + supUid + ", supName=" + supName + ", supImg=" + supImg + ", supImgFileName="
				+ supImgFileName + ", supIntro=" + supIntro + ", supArticle=" + supArticle + ", supStartTime="
				+ supStartTime + ", supEndTime=" + supEndTime + ", supNeedStock=" + supNeedStock + ", supFinalStock="
				+ supFinalStock + ", supSize=" + supSize + ", supState=" + supState + ", views=" + views
				+ ", insertDate=" + insertDate + ", foundationBean_HO73=" + foundationBean_HO73 + "]";
	}

	
	
	
	
	

}
