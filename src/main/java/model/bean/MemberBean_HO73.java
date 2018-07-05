package model.bean;

import java.sql.Blob;
import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Member_HO73")
public class MemberBean_HO73 {
	String memAccount;			//會員帳號
	String memName;				//會員名稱
	String memIdcard;			//身分證字號
	String memEmail;			//會員 E-mail
	String memEmail2;			//備用 E-mail
	String memGender;			//會員性別		"M:男	F:女"
	Date memBirthday;		    //會員生日
	String memTel;				//連絡電話
	String memMobile;			//行動電話
	String memAddress;			//地址
	Integer memType;			//會員類別		"0:系統管理員	1:一般會員	 2:基金會會員"
	String memWhySupply;		//為什麼加入公益
	Timestamp insertDate;		//新增日期
	Integer memStatus;			//狀態		"0:無效		1:有效"
	String memPicUrl;			//會員頭像的URL
	Blob memPhoto;           //更換頭像
	String fileName;            //頭像檔名
	Double unpaidAmount;        //限制購買金額
	FoundationBean_HO73 foundationBean_HO73;
	
	public MemberBean_HO73() {
		super();
	}
//======================================================================
	public MemberBean_HO73(Blob memPhoto, String fileName) {
		super();
		this.memPhoto = memPhoto;
		this.fileName = fileName;
	}

	public Blob getMemPhoto() {
		return memPhoto;
	}

	public void setMemPhoto(Blob memPhoto) {
		this.memPhoto = memPhoto;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
//======================================================================

	public MemberBean_HO73(String memAccount, String memName, String memEmail, String memPicUrl) {
		super();
		this.memAccount = memAccount;
		this.memName = memName;
		this.memEmail = memEmail;
		this.memPicUrl = memPicUrl;
	}
	
	public MemberBean_HO73(String memAccount, String memName, String memIdcard, String memEmail, String memEmail2,
			String memGender, Date memBirthday, String memTel, String memMobile, String memAddress, Integer memType,
			String memWhySupply, Timestamp insertDate, Integer memStatus, String memPicUrl, Blob memPhoto,
			String fileName, Double unpaidAmount, FoundationBean_HO73 foundationBean_HO73) {
		super();
		this.memAccount = memAccount;
		this.memName = memName;
		this.memIdcard = memIdcard;
		this.memEmail = memEmail;
		this.memEmail2 = memEmail2;
		this.memGender = memGender;
		this.memBirthday = memBirthday;
		this.memTel = memTel;
		this.memMobile = memMobile;
		this.memAddress = memAddress;
		this.memType = memType;
		this.memWhySupply = memWhySupply;
		this.insertDate = insertDate;
		this.memStatus = memStatus;
		this.memPicUrl = memPicUrl;
		this.memPhoto = memPhoto;
		this.fileName = fileName;
		this.unpaidAmount = unpaidAmount;
		this.foundationBean_HO73 = foundationBean_HO73;
	}
	@Id
	public String getMemAccount() {
		return memAccount;
	}
	public void setMemAccount(String memAccount) {
		this.memAccount = memAccount;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemIdcard() {
		return memIdcard;
	}
	public void setMemIdcard(String memIdcard) {
		this.memIdcard = memIdcard;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemEmail2() {
		return memEmail2;
	}
	public void setMemEmail2(String memEmail2) {
		this.memEmail2 = memEmail2;
	}
	public String getMemGender() {
		return memGender;
	}
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
	public Date getMemBirthday() {
		return memBirthday;
	}
	public void setMemBirthday(Date memBirthday) {
		this.memBirthday = memBirthday;
	}
	public String getMemTel() {
		return memTel;
	}
	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}
	public String getMemMobile() {
		return memMobile;
	}
	public void setMemMobile(String memMobile) {
		this.memMobile = memMobile;
	}
	public String getMemAddress() {
		return memAddress;
	}
	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}
	public Integer getMemType() {
		return memType;
	}
	public void setMemType(Integer memType) {
		this.memType = memType;
	}
	
	public String getMemWhySupply() {
		return memWhySupply;
	}
	public void setMemWhySupply(String memWhySupply) {
		this.memWhySupply = memWhySupply;
	}
	public Timestamp getInsertDate() {
		return insertDate;
	}
	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}
	public Integer getMemStatus() {
		return memStatus;
	}
	public void setMemStatus(Integer memStatus) {
		this.memStatus = memStatus;
	}
	public String getMemPicUrl() {
		return memPicUrl;
	}
	public void setMemPicUrl(String memPicUrl) {
		this.memPicUrl = memPicUrl;
	}
	public Double getUnpaidAmount() {
		return unpaidAmount;
	}
	public void setUnpaidAmount(Double unpaidAmount) {
		this.unpaidAmount = unpaidAmount;
	}
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="funIdcard") 
	public FoundationBean_HO73 getFoundationBean_HO73() {
		return foundationBean_HO73;
	}
	public void setFoundationBean_HO73(FoundationBean_HO73 foundationBean_HO73) {
		this.foundationBean_HO73 = foundationBean_HO73;
	}
	@Override
	public String toString() {
		return "MemberBean_HO73 [memAccount=" + memAccount + ", memName=" + memName + ", memIdcard=" + memIdcard
				+ ", memEmail=" + memEmail + ", memEmail2=" + memEmail2 + ", memGender=" + memGender + ", memBirthday="
				+ memBirthday + ", memTel=" + memTel + ", memMobile=" + memMobile + ", memAddress=" + memAddress
				+ ", memType=" + memType  + ", memWhySupply=" + memWhySupply
				+ ", insertDate=" + insertDate + ", memStatus=" + memStatus + ", memPicUrl=" + memPicUrl + ", memPhoto="
				+ memPhoto + ", fileName=" + fileName + ", unpaidAmount=" + unpaidAmount + "]";
	}
	
	
	
}
