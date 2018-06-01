package news;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;



public interface newsDao{

	void save(NewsBean_HO73 nb);
	void saveOrUpdate(NewsBean_HO73 nb);
	List<NewsBean_HO73> getAllNews();
	NewsBean_HO73 getOneNew(Integer newsUid);
	int merge(NewsBean_HO73 nb);
	int delete(Integer newsUid);
    
	
}
