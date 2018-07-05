package shares;

import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import model.bean.LoveSharingBean_HO73;
import model.repository.SharesDao;
import model.repository.impl.SharesDaoImpl;

public class init_loveSharigs {
	public static void main(String[] args) {
		
		//NewsBean_HO73(String newsName, String newsImg, String newsImgIntro, String newsArticle)
		String[] sharesName = {
				"",
				"", 
				"",
				"",
				"",
				"",
				"",
				"",
				"",
				};
		
		String[] sharesImg = {
				"http://www.17885.com.tw/upload/story_photo/content/20180629103414_63.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103403_87.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103327_49.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103316_88.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103240_60.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103141_87.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103111_25.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103010_27.jpg",
				"http://www.17885.com.tw/upload/story_photo/content/20180629103111_25.jpg"};
		
		String[] sharesImgIntro = {
				"感謝信1","感謝信2","感謝信3",
				"感謝信4","感謝信5","感謝信6",
				"感謝信7","感謝信8","感謝信9"};
		
		String[] sharesArticle = {
				"", 
				"",  
				"",
				"",
				"",
				"",
				"",
				"",
				"",
				};
		ApplicationContext context = 
    			new ClassPathXmlApplicationContext("shares/applicationContext.xml");
		SharesDao sharesdao = context.getBean(SharesDao.class);
		for(int i = 0 ; i<sharesName.length ; i++) {
			LoveSharingBean_HO73 lb = new LoveSharingBean_HO73(sharesName[i], sharesImg[i], sharesImgIntro[i], sharesArticle[i]);
			sharesdao.saveOrUpdate(lb);
		}
		
    	((ConfigurableApplicationContext)context).close();
	}
}
