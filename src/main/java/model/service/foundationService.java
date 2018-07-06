package model.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.google.gson.JsonElement;

import member.MemberDAO;
import model.bean.FoundationBean_HO73;
import model.bean.MemberBean_HO73;
import model.bean.PayBox;
import model.bean.PayBoxIn;
import model.bean.PayBoxOut;
import model.repository.FoundationDao;
import model.repository.PayBoxDao;
import model.repository.PayBoxInDao;
import model.repository.PayBoxOutDao;


@Service
@Scope("prototype")
public class foundationService {

	 
	
	@Autowired
	SessionFactory factory;
	@Autowired
	FoundationDao foundationDao;
	@Autowired
	Gson gson;
//	
		
//	新建基金會帳號(將Member的帳號類型改成2)
	@Transactional
	public int creatOneFoundation(FoundationBean_HO73 fb) {		
		foundationDao.save(fb);		
//		MemberBean_HO73 mb = MemberDAO.getOneMember();
//		mb.setMemType(2);
//		MemberDAO.update();
		return 0;
	}
//	查詢所有基金會
	@Transactional
	public List<FoundationBean_HO73> getAllFoundations() {
		
		return foundationDao.getAllFoundation();
	}
	@Transactional
	public String getAllFoundations2String() {			
		return gson.toJson(getAllFoundations());
	}
	
//	查詢一筆基金會
	@Transactional
	public FoundationBean_HO73 getOneFoundation(String funIdcard) {
		FoundationBean_HO73 fb = foundationDao.getOneFoundation(funIdcard);		
		return fb;		
	}
	@Transactional
	public String getOneFoundation2String(String funIdcard) {	
		return gson.toJson(getOneFoundation(funIdcard));		
	}
	
	
	
//	
//	
//	
//	
//	
	


}
