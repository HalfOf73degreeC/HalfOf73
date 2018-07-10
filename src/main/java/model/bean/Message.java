package model.bean;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="Message")
public class Message {

	private				Integer			MessageUid;
	private				String			talkerID;
	private				String			msg;
	private transient	NewsBean_HO73	newsBean_HO73;
	private				Date			insertDate;
	public Message() {
		super();
	}
	
	public Message(Integer messageUid, String talkerID, String msg, NewsBean_HO73 newsBean_HO73, Date insertDate) {
		super();
		MessageUid = messageUid;
		this.talkerID = talkerID;
		this.msg = msg;
		this.newsBean_HO73 = newsBean_HO73;
		insertDate = new Date();
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getMessageUid() {
		return MessageUid;
	}
	public void setMessageUid(Integer messageUid) {
		this.MessageUid = messageUid;
	}
	public String getTalkerID() {
		return talkerID;
	}
	public void setTalkerID(String talkerID) {
		this.talkerID = talkerID;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	@ManyToOne  // 多對ㄧ，多方(Item類別)內有個儲存ㄧ方(Cart類別)物件參考的實例變數
	// @JoinColumn: 定義多方(Items)所對應表格中的外來鍵為何。省略此註釋，
	// Hibernate會自動產生ㄧ個外來鍵，預設名稱為: 此性質名稱_外來鍵對應的主鍵名稱
	@JoinColumn(name="fk_NewsUid", nullable=true)  
	public NewsBean_HO73 getNewsBean_HO73() {
		return newsBean_HO73;
	}

	public void setNewsBean_HO73(NewsBean_HO73 newsBean_HO73) {
		this.newsBean_HO73 = newsBean_HO73;
	}

	public Date getInsertDate() {
		return insertDate;
	}
	
	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}	
	
	
	
}
