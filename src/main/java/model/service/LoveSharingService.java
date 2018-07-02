package model.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;

import model.bean.LoveSharingBean_HO73;
import model.repository.SharesDao;



@Service
@Scope("prototype")
public class LoveSharingService {

	 
	
	@Autowired
	SessionFactory factory;
	@Autowired
	SharesDao sharesDao;
	@Autowired
	Gson gson;
//	
		
//	新建一則新聞
	@Transactional
	public int creatOneShares(LoveSharingBean_HO73 lb) {		
		sharesDao.save(lb);
		return 0;
	}
//	查詢所有新聞
	@Transactional
	public List<LoveSharingBean_HO73> getAllShares() {
		
		return sharesDao.getAllShares();
	}
	@Transactional
	public String getAllShares2String() {			
		return gson.toJson(getAllShares());
	}
	
//	查詢一則新聞(觀看數+1)
	@Transactional
	public LoveSharingBean_HO73 getOneShares(Integer sharesUid) {
		LoveSharingBean_HO73 lb = sharesDao.getOneShare(sharesUid);
		System.out.println("lb="+lb);
		lb.setsharesView(lb.getsharesView()+1);
		sharesDao.saveOrUpdate(lb);
		return lb;		
	}
	@Transactional
	public String getOneSharings2String(Integer sharesUid) {
		return gson.toJson(getOneShares(sharesUid));		
	}
	
	
//	
//	
//	
//	
//	
	


}
