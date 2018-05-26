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
public class SupplyBean_HO73 {
	
	Integer		supUid;
	String		supName;
	Blob		supImg;
	Clob		supArticle;
	Timestamp	supStartTime;
	Timestamp	supEndTime;
	Integer		supNeedAmt;
	Integer		supFinalAmt;
	String		supSize;
	Integer		supState;
	Integer		funUid;
	Integer		views;
	Timestamp	insertDate;
	
	public SupplyBean_HO73() {
		super();
	}

	public SupplyBean_HO73(Integer supUid, String supName, Blob supImg, Clob supArticle, Timestamp supStartTime,
			Timestamp supEndTime, Integer supNeedAmt, Integer supFinalAmt, String supSize, Integer supState, Integer funUid,
			Integer views, Timestamp insertDate) {
		super();
		this.supUid = supUid;
		this.supName = supName;
		this.supImg = supImg;
		this.supArticle = supArticle;
		this.supStartTime = supStartTime;
		this.supEndTime = supEndTime;
		this.supNeedAmt = supNeedAmt;
		this.supFinalAmt = supFinalAmt;
		this.supSize = supSize;
		this.supState = supState;
		this.funUid = funUid;
		this.views = views;
		this.insertDate = insertDate;
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

	public Integer getSupNeedAmt() {
		return supNeedAmt;
	}

	public void setSupNeedAmt(Integer supNeedAmt) {
		this.supNeedAmt = supNeedAmt;
	}

	public Integer getSupFinalAmt() {
		return supFinalAmt;
	}

	public void setSupFinalAmt(Integer supFinalAmt) {
		this.supFinalAmt = supFinalAmt;
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

	@Override
	public String toString() {
		return "Supply_HO73 [supUid=" + supUid + ", supName=" + supName + ", supImg=" + supImg + ", supArticle="
				+ supArticle + ", supStartTime=" + supStartTime + ", supEndTime=" + supEndTime + ", supNeedAmt=" + supNeedAmt
				+ ", supFinalAmt=" + supFinalAmt + ", supSize=" + supSize + ", supState=" + supState + ", funUid="
				+ funUid + ", views=" + views + ", insertDate=" + insertDate + "]";
	}
	
	
	
	
	

}
