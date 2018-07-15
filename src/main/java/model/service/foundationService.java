package model.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;

import model.bean.FoundationBean_HO73;
import model.bean.FunIdcardBean;
import model.repository.FoundationDao;
import model.repository.FunIdcardDao;
import model.repository.MemberDao;


@Service
@Scope("prototype")
public class foundationService {

	 
	
	@Autowired
	SessionFactory factory;
	@Autowired
	FoundationDao foundationDao;
	@Autowired
	MemberDao memberDao;
	@Autowired
	FunIdcardDao funIdcardDao;
	@Autowired
	Gson gson;
//	
//	查詢所有愛心碼從愛心碼總表
	@Transactional
	public List<FunIdcardBean> getAllFunIdcard() {
		return funIdcardDao.getAllFunIdcard();
	}
	@Transactional
	public String getAllFunIdcard2String() {			
		return gson.toJson(getAllFunIdcard());
	}
		
//	新建基金會帳號(將Member的帳號類型改成2)
	@Transactional
	public int creatOneFoundation(FoundationBean_HO73 fb, int memType, String funIdCard, String memAccount) {		
		
		FunIdcardBean fib = funIdcardDao.getOneFunIdcard(funIdCard);
		System.out.println("funIdCard: "+funIdCard);
		System.out.println("fib.getFunType(): "+fib);
		if(fib.getFunType() == 0) {
			fib.setFunType(1);
			funIdcardDao.saveOrUpdate(fib);
			foundationDao.saveOrUpdate(fb);		
			memberDao.updateMemType(memType, funIdCard, memAccount);
//			MemberBean_HO73 mb = MemberDAO.getOneMember();
//			mb.setMemType(2);
//			MemberDAO.update();
			return 1;
		}else {
			return 0;
		}		
	}
//	更新基金會帳號
	@Transactional
	public int updateOneFoundation(FoundationBean_HO73 fb, int memType, String funIdCard, String memAccount) {		
		
		FunIdcardBean fib = funIdcardDao.getOneFunIdcard(funIdCard);
		System.out.println("fib="+fib);
		fib.setFunType(1);
		funIdcardDao.saveOrUpdate(fib);
		foundationDao.saveOrUpdate(fb);		
		memberDao.updateMemType(memType, funIdCard, memAccount);
//			MemberBean_HO73 mb = MemberDAO.getOneMember();
//			mb.setMemType(2);
//			MemberDAO.update();
		
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
