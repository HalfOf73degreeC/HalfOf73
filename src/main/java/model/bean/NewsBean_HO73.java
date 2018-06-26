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
@Table(name="NewsBean_HO73")
public class NewsBean_HO73 {
	
	Integer		newsUid;
	String		newsName;
	String      newsImg;
	String      newsImgIntro;
	String      newsArticle;;
	Integer		newsView;
	Date		insertDate;
	String  	insertMonth;
	String 		insertDay;
	public NewsBean_HO73() {
		super();
	}
	
	public NewsBean_HO73(String newsName, String newsImg, String newsImgIntro, String newsArticle) {
		super();
		this.newsName = newsName;
		this.newsImg = newsImg;
		this.newsImgIntro = newsImgIntro;
		this.newsArticle = newsArticle;
		insertDate = new Date();
		SimpleDateFormat dateFormatMonth = new SimpleDateFormat("MMM");
		insertMonth = dateFormatMonth.format(insertDate);
		SimpleDateFormat dateFormatDay = new SimpleDateFormat("d");
		insertDay = dateFormatDay.format(insertDate);
		newsView = 0;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getNewsUid() {
		return newsUid;
	}
	public void setNewsUid(Integer newsUid) {
		this.newsUid = newsUid;
	}
	public String getNewsName() {
		return newsName;
	}
	public void setNewsName(String newsName) {
		this.newsName = newsName;
	}
	
	public String getNewsImg() {
		return newsImg;
	}
	public void setNewsImg(String newsImg) {
		this.newsImg = newsImg;
	}
	public String getNewsImgIntro() {
		return newsImgIntro;
	}
	public void setNewsImgIntro(String newsImgIntro) {
		this.newsImgIntro = newsImgIntro;
	}
	
	@Column(length = 5000)
	public String getNewsArticle() {
		return newsArticle;
	}
	public void setNewsArticle(String newsArticle) {
		this.newsArticle = newsArticle;
	}
	public Integer getNewsView() {
		return newsView;
	}
	public void setNewsView(Integer newsView) {
		this.newsView = newsView;
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
