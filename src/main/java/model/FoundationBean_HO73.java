package model;

import java.io.Serializable;
import java.sql.Clob;
import java.sql.Timestamp;
import java.util.Date;

public class FoundationBean_HO73 implements Serializable {
	String    funAccount ;			 
	String    funPassword;				
	String    funName;			
	String    funIdcard;			
	String    funImage;			
	String    funGroup;			
	Clob      funDetail;				
	String    funCeo;			
	String    funContact;			
	String    funTel;
	String    funFax;
	String    funDomain;
	String    funEmail;
	String    funEmail2;
	String    funState;
	String    funAddress;
	String    funFounder;
	Date      funCreateDate;
	String    funAllowOrg;
	Clob      funIntent;
	Clob      funArticle;
	String    funArea;
	String    funServiceUser;
	String    funService;
	Integer   funStatus;			
	Timestamp insertDate;		

	
	
	public FoundationBean_HO73() {
		super();
		
	}

	public FoundationBean_HO73(String funAccount, String funName, String funImage, String funEmail) {
		super();
		this.funAccount = funAccount;
		this.funName = funName;
		this.funImage = funImage;
		this.funEmail = funEmail;
		this.insertDate = new Timestamp(System.currentTimeMillis());
	}


	public FoundationBean_HO73(String funAccount, String funName, String funIdcard, String funImage,
			String funCeo, String funContact, String funTel, String funFax,
			String funDomain, String funEmail, String funEmail2, String funAddress, String funFounder,
			Date funCreateDate, String funAllowOrg, Clob funIntent, Clob funArticle, String[] funArea,
			String[] funServiceUser, String[] funService) {
		super();
		this.funAccount = funAccount;
		this.funName = funName;
		this.funIdcard = funIdcard;
		this.funImage = funImage;
		this.funCeo = funCeo;
		this.funContact = funContact;
		this.funTel = funTel;
		this.funFax = funFax;
		this.funDomain = funDomain;
		this.funEmail = funEmail;
		this.funEmail2 = funEmail2;
		this.funAddress = funAddress;
		this.funFounder = funFounder;
		this.funCreateDate = funCreateDate;
		this.funAllowOrg = funAllowOrg;
		this.funIntent = funIntent;
		this.funArticle = funArticle;
		String funArea_String = "";
		for(String s:funArea) {
			funArea_String += s + ",";
		}
		this.funArea = funArea_String;
		
		String funServiceUser_String = "";
		for(String s:funServiceUser) {
			funServiceUser_String += s + ",";
		}
		this.funArea = funServiceUser_String;
		
		String funService_String = "";
		for(String s:funService) {
			funService_String += s + ",";
		}
		this.funArea = funService_String;
		
		this.insertDate = new Timestamp(System.currentTimeMillis());
	}

	public FoundationBean_HO73(String funAccount, String funPassword, String funName, String funIdcard, String funImage,
			String funGroup, Clob funDetail, String funCeo, String funContact, String funTel, String funFax,
			String funDomain, String funEmail, String funEmail2, String funState, String funAddress, String funFounder,
			Date funCreateDate, String funAllowOrg, Clob funIntent, Clob funArticle, String funArea,
			String funServiceUser, String funService, Integer funStatus, Timestamp insertDate) {
		super();
		this.funAccount = funAccount;
		this.funPassword = funPassword;
		this.funName = funName;
		this.funIdcard = funIdcard;
		this.funImage = funImage;
		this.funGroup = funGroup;
		this.funDetail = funDetail;
		this.funCeo = funCeo;
		this.funContact = funContact;
		this.funTel = funTel;
		this.funFax = funFax;
		this.funDomain = funDomain;
		this.funEmail = funEmail;
		this.funEmail2 = funEmail2;
		this.funState = funState;
		this.funAddress = funAddress;
		this.funFounder = funFounder;
		this.funCreateDate = funCreateDate;
		this.funAllowOrg = funAllowOrg;
		this.funIntent = funIntent;
		this.funArticle = funArticle;
		this.funArea = funArea;
		this.funServiceUser = funServiceUser;
		this.funService = funService;
		this.funStatus = funStatus;
		this.insertDate = insertDate;
	}



	public String getFunAccount() {
		return funAccount;
	}



	public void setFunAccount(String funAccount) {
		this.funAccount = funAccount;
	}



	public String getFunPassword() {
		return funPassword;
	}



	public void setFunPassword(String funPassword) {
		this.funPassword = funPassword;
	}



	public String getFunName() {
		return funName;
	}



	public void setFunName(String funName) {
		this.funName = funName;
	}



	public String getFunIdcard() {
		return funIdcard;
	}



	public void setFunIdcard(String funIdcard) {
		this.funIdcard = funIdcard;
	}



	public String getFunImage() {
		return funImage;
	}



	public void setFunImage(String funImage) {
		this.funImage = funImage;
	}



	public String getFunGroup() {
		return funGroup;
	}



	public void setFunGroup(String funGroup) {
		this.funGroup = funGroup;
	}



	public Clob getFunDetail() {
		return funDetail;
	}



	public void setFunDetail(Clob funDetail) {
		this.funDetail = funDetail;
	}



	public String getFunCeo() {
		return funCeo;
	}



	public void setFunCeo(String funCeo) {
		this.funCeo = funCeo;
	}



	public String getFunContact() {
		return funContact;
	}



	public void setFunContact(String funContact) {
		this.funContact = funContact;
	}



	public String getFunTel() {
		return funTel;
	}



	public void setFunTel(String funTel) {
		this.funTel = funTel;
	}



	public String getFunFax() {
		return funFax;
	}



	public void setFunFax(String funFax) {
		this.funFax = funFax;
	}



	public String getFunDomain() {
		return funDomain;
	}



	public void setFunDomain(String funDomain) {
		this.funDomain = funDomain;
	}



	public String getFunEmail() {
		return funEmail;
	}



	public void setFunEmail(String funEmail) {
		this.funEmail = funEmail;
	}



	public String getFunEmail2() {
		return funEmail2;
	}



	public void setFunEmail2(String funEmail2) {
		this.funEmail2 = funEmail2;
	}



	public String getFunState() {
		return funState;
	}



	public void setFunState(String funState) {
		this.funState = funState;
	}



	public String getFunAddress() {
		return funAddress;
	}



	public void setFunAddress(String funAddress) {
		this.funAddress = funAddress;
	}



	public String getFunFounder() {
		return funFounder;
	}



	public void setFunFounder(String funFounder) {
		this.funFounder = funFounder;
	}



	public Date getFunCreateDate() {
		return funCreateDate;
	}



	public void setFunCreateDate(Date funCreateDate) {
		this.funCreateDate = funCreateDate;
	}



	public String getFunAllowOrg() {
		return funAllowOrg;
	}



	public void setFunAllowOrg(String funAllowOrg) {
		this.funAllowOrg = funAllowOrg;
	}



	public Clob getFunIntent() {
		return funIntent;
	}



	public void setFunIntent(Clob funIntent) {
		this.funIntent = funIntent;
	}



	public Clob getFunArticle() {
		return funArticle;
	}



	public void setFunArticle(Clob funArticle) {
		this.funArticle = funArticle;
	}



	public String getFunArea() {
		return funArea;
	}



	public void setFunArea(String funArea) {
		this.funArea = funArea;
	}



	public String getFunServiceUser() {
		return funServiceUser;
	}



	public void setFunServiceUser(String funServiceUser) {
		this.funServiceUser = funServiceUser;
	}



	public String getFunService() {
		return funService;
	}



	public void setFunService(String funService) {
		this.funService = funService;
	}



	public Integer getFunStatus() {
		return funStatus;
	}



	public void setFunStatus(Integer funStatus) {
		this.funStatus = funStatus;
	}



	public Timestamp getInsertDate() {
		return insertDate;
	}



	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}
    
	
	
	
}
