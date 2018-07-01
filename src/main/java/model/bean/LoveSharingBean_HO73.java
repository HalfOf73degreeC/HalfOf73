package model.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LoveSharingBean_HO73")
public class LoveSharingBean_HO73 {
	
	Integer		sharesUid;
	String		sharesName;
	String      sharesImg;
	String      sharesImgIntro;
	String      sharesArticle;;
	Integer		sharesView;
	Date		insertDate;
	String  	insertMonth;
	String 		insertDay;
	public LoveSharingBean_HO73() {
		super();
	}
	
	public LoveSharingBean_HO73(String sharesName, String sharesImg, String sharesImgIntro, String sharesArticle) {
		super();
		this.sharesName = sharesName;
		this.sharesImg = sharesImg;
		this.sharesImgIntro = sharesImgIntro;
		this.sharesArticle = sharesArticle;
		insertDate = new Date();
		SimpleDateFormat dateFormatMonth = new SimpleDateFormat("MMM");
		insertMonth = dateFormatMonth.format(insertDate);
		SimpleDateFormat dateFormatDay = new SimpleDateFormat("d");
		insertDay = dateFormatDay.format(insertDate);
		sharesView = 0;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getsharesUid() {
		return sharesUid;
	}
	public void setsharesUid(Integer sharesUid) {
		this.sharesUid = sharesUid;
	}
	public String getsharesName() {
		return sharesName;
	}
	public void setsharesName(String sharesName) {
		this.sharesName = sharesName;
	}
	
	public String getsharesImg() {
		return sharesImg;
	}
	public void setsharesImg(String sharesImg) {
		this.sharesImg = sharesImg;
	}
	public String getsharesImgIntro() {
		return sharesImgIntro;
	}
	public void setsharesImgIntro(String sharesImgIntro) {
		this.sharesImgIntro = sharesImgIntro;
	}
	
	@Column(length = 5000)
	public String getsharesArticle() {
		return sharesArticle;
	}
	public void setsharesArticle(String sharesArticle) {
		this.sharesArticle = sharesArticle;
	}
	public Integer getsharesView() {
		return sharesView;
	}
	public void setsharesView(Integer sharesView) {
		this.sharesView = sharesView;
	}
	public Date getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}
	public String getInsertMonth() {
		return insertMonth;
	}

	public void setInsertMonth(String insertMonth) {
		this.insertMonth = insertMonth;
	}

	public String getInsertDay() {
		return insertDay;
	}

	public void setInsertDay(String insertDay) {
		this.insertDay = insertDay;
	}	
	

	
	
	
}
