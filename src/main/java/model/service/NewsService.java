package model.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;

import model.bean.Message;
import model.bean.NewsBean_HO73;
import model.repository.MessageDao;
import model.repository.NewsDao;



@Service
@Scope("prototype")
public class NewsService {

	 
	
	@Autowired
	SessionFactory factory;
	@Autowired
	NewsDao newsDao;
	@Autowired
	MessageDao messageDao;
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
		System.out.println("nb="+nb);
		nb.setNewsView(nb.getNewsView()+1);
		newsDao.saveOrUpdate(nb);
		return nb;		
	}
	@Transactional
	public String getOneNews2String(Integer newsUid) {
		return gson.toJson(getOneNews(newsUid));		
	}
//	新建一則Message
	@Transactional
	public NewsBean_HO73 creatOneMessage(String talkerID, String memPicUrl, String msg, Integer newsUid) {
		NewsBean_HO73 nb = newsDao.getOneNew(newsUid);
		Message msgBeen = new Message(talkerID, memPicUrl, msg, nb);
		messageDao.save(msgBeen);
		return nb;
	}
	@Transactional
	public String creatOneMessage2String(String talkerID, String memPicUrl, String msg, Integer newsUid) {
		return gson.toJson(creatOneMessage(talkerID, memPicUrl, msg, newsUid));		
	}
//	
//	
//	
//	
//	
	


}
