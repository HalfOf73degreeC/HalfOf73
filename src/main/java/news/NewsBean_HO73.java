package news;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class NewsBean_HO73 {
	
	Integer		newsUid;
	String		newsName;
	String      newsImg;
	String      newsImgIntro;
	String      newsArticle;;
	Integer		newsView;
	Timestamp	insertDate;
	public NewsBean_HO73() {
		super();
	}
	
	public NewsBean_HO73(String newsName, String newsImg, String newsImgIntro, String newsArticle) {
		super();
		this.newsName = newsName;
		this.newsImg = newsImg;
		this.newsImgIntro = newsImgIntro;
		this.newsArticle = newsArticle;
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
	public Timestamp getInsertDate() {
		return insertDate;
	}
	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}
	

	
	
	
}
