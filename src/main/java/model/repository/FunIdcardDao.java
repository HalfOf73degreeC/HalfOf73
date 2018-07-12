package model.repository;

import java.util.List;

import model.bean.FunIdcardBean;



public interface FunIdcardDao{

	void save(FunIdcardBean fb);
	void saveOrUpdate(FunIdcardBean fb);
	List<FunIdcardBean> getAllFunIdcard();
	FunIdcardBean getOneFunIdcard(Integer funId);
	int merge(FunIdcardBean fb);
	int delete(Integer funId);
    
	
}
