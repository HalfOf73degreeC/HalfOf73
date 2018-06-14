package model.repository;

import java.util.List;

import model.bean.FoundationBean_HO73;

public interface FoundationDao {
	void save(FoundationBean_HO73 fb);
	int saveOrUpdate(FoundationBean_HO73 fb);
	FoundationBean_HO73 getOneFoundation(String funIdcard);
	List<FoundationBean_HO73> getAllFoundation();
	int update(FoundationBean_HO73 fb);
	int delete(String funAccount);
}
