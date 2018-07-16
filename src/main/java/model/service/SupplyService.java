package model.service;

import java.sql.Blob;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;

import model.bean.FoundationBean_HO73;
import model.bean.SupplyBean_HO73;
import model.bean.SupplyImgBean;
import model.repository.FoundationDao;
import model.repository.SupplyDao;
import model.repository.SupplyImgDao;

@Service
@Scope("prototype")
public class SupplyService {

	@Autowired
    SupplyDao sdao;
	@Autowired
	FoundationDao fdao;		
	@Autowired
	SupplyImgDao sidao;	
	@Autowired
	Gson gson;
    
	public SupplyService() {
		
	}
	
	@Transactional
	public SupplyBean_HO73 getOneSupply(int supUid) {
		return sdao.getOneSupply(supUid);
	}
	@Transactional
	public String getOneGoods2String(Integer supUid) {
		return gson.toJson(getOneSupply(supUid));		
	}

	@Transactional
	public List<SupplyBean_HO73> getAllSupply() {
		return sdao.getAllSupply();
	}
	

	@Transactional
	public String getAllSupply2String() {			
		return gson.toJson(getAllSupply());
	}

	@Transactional
	public int update(SupplyBean_HO73 bean) {
		return sdao.update(bean);
	}


	@Transactional
	public int delete(int no) {
		return sdao.delete(no);
	}

	@Transactional
	public int save(SupplyBean_HO73 bean) {
		return sdao.save(bean);
	}

	@Transactional
	public SupplyBean_HO73 createOneSupply(String supName, String supArticle, String supIntro, String supImgFileName, 
			Integer supNeedStock, String funIdCard, Integer supView, Timestamp insertDate, Blob supImg,  List<Blob> supImgLsit) {
		SupplyBean_HO73 sb = null;
		FoundationBean_HO73 fb = fdao.getOneFoundation(funIdCard); 
		sb = new SupplyBean_HO73(supName, supImg, supImgFileName, supIntro, supArticle, supNeedStock, supView, insertDate, fb);
		sdao.save(sb);
		for(Blob blob:supImgLsit) {
			SupplyImgBean sib = new SupplyImgBean(sb ,blob);
			sidao.save(sib);
		}
		return sb;
	}
	
	@Transactional
	public String createOneSupply2String(String supName, String supArticle, String supIntro, String supImgFileName, 
			Integer supNeedStock, String funIdCard, Integer supView, Timestamp insertDate, Blob supImg, List<Blob> supImgLsit) {
		return gson.toJson(createOneSupply(supName, supArticle, supIntro, supImgFileName, supNeedStock, funIdCard, supView, insertDate, supImg, supImgLsit));
	}

}
