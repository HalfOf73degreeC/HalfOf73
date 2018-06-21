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
	public int creatOneFoundation(NewsBean_HO73 fb) {		
		newsDao.save(fb);		

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
	
//	查詢一筆基金會
//	@Transactional
//	public NewsBean getOneFoundation(String funIdcard) {
//		NewsBean nb = newsDao.getOneFoundation(funIdcard);		
//		return nb;		
//	}
	
	
	
//	
//	
//	
//	
//	
	


}
