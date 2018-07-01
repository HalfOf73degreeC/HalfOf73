package model.repository;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;

import model.bean.LoveSharingBean_HO73;
import model.bean.NewsBean_HO73;



public interface SharesDao{ 

	void save(LoveSharingBean_HO73 lb);
	void saveOrUpdate(LoveSharingBean_HO73 lb);
	List<LoveSharingBean_HO73> getAllShares();
	LoveSharingBean_HO73 getOneShare(Integer sharesUid);
	int merge(LoveSharingBean_HO73 lb);
	int delete(Integer sharesUid);
    
	
}
