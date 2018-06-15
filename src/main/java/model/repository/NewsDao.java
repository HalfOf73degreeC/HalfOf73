package model.repository;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;

import model.bean.NewsBean_HO73;



public interface NewsDao{

	void save(NewsBean_HO73 nb);
	void saveOrUpdate(NewsBean_HO73 nb);
	List<NewsBean_HO73> getAllNews();
	NewsBean_HO73 getOneNew(Integer newsUid);
	int merge(NewsBean_HO73 nb);
	int delete(Integer newsUid);
    
	
}
