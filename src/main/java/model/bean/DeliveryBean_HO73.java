package model.bean;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DeliveryBean_HO73 {
	Integer	deliveryUid;
	String	deliveryName;
	String	deliveryImg;
	String 	deliveryDescription;
	Integer	deliveryAmt;
	Timestamp	insertDate;
	
	public DeliveryBean_HO73() {
		
	}

	public DeliveryBean_HO73(Integer deliveryUid, String deliveryName, String deliveryImg, String deliveryDescription,
			Integer deliveryAmt, Timestamp insertDate) {
		super();
		this.deliveryUid = deliveryUid;
		this.deliveryName = deliveryName;
		this.deliveryImg = deliveryImg;
		this.deliveryDescription = deliveryDescription;
		this.deliveryAmt = deliveryAmt;
		this.insertDate = insertDate;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getDeliveryUid() {
		return deliveryUid;
	}

	public void setDeliveryUid(Integer deliveryUid) {
		this.deliveryUid = deliveryUid;
	}

	public String getDeliveryName() {
		return deliveryName;
	}

	public void setDeliveryName(String deliveryName) {
		this.deliveryName = deliveryName;
	}

	public String getDeliveryImg() {
		return deliveryImg;
	}

	public void setDeliveryImg(String deliveryImg) {
		this.deliveryImg = deliveryImg;
	}

	public String getDeliveryDescription() {
		return deliveryDescription;
	}

	public void setDeliveryDescription(String deliveryDescription) {
		this.deliveryDescription = deliveryDescription;
	}

	public Integer getDeliveryAmt() {
		return deliveryAmt;
	}

	public void setDeliveryAmt(Integer deliveryAmt) {
		this.deliveryAmt = deliveryAmt;
	}

	public Timestamp getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}

	@Override
	public String toString() {
		return "DeliveryBean_HO73 [deliveryUid=" + deliveryUid + ", deliveryName=" + deliveryName + ", deliveryImg="
				+ deliveryImg + ", deliveryDescription=" + deliveryDescription + ", deliveryAmt=" + deliveryAmt
				+ ", insertDate=" + insertDate + "]";
	}

	
	
}