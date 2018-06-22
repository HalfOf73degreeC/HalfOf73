package model.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;

import model.bean.NewsBean_HO73;
import model.repository.NewsDao;



@Service
@Scope("prototype")
public class NewsService {

	 
	
	@Autowired
	SessionFactory factory;
	@Autowired
	NewsDao newsDao;
	@Autowired
	Gson gson;
//	
		
//	新建一則新聞
	@Transactional
	public int creatOneNews(NewsBean_HO73 nb) {		
		newsDao.save(nb);
		return 0;
	}
//	查詢所有新聞
	@Transactional
	public List<NewsBean_HO73> getAllNews() {
		
		return newsDao.getAllNews();
	}
	@Transactional
	public String getAllNews2String() {			
		return gson.toJson(getAllNews());
	}
	
//	查詢一則新聞(觀看數+1)
	@Transactional
	public NewsBean_HO73 getOneNews(Integer newsUid) {
		NewsBean_HO73 nb = newsDao.getOneNew(newsUid);	
		nb.setNewsView(nb.getNewsView()+1);
		System.out.println("觀看數+1");
		newsDao.saveOrUpdate(nb);
		return nb;		
	}
	@Transactional
	public String getOneNews2String(Integer newsUid) {
		return gson.toJson(getOneNews(newsUid));		
	}
	
	
//	
//	
//	
//	
//	
	


}
