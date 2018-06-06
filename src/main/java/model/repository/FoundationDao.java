package model.repository;

import java.util.List;

import model.FoundationBean_HO73;

public interface FoundationDao {
	void save(FoundationBean_HO73 fb);
	int saveOrUpdate(FoundationBean_HO73 fb);
	FoundationBean_HO73 getOneFunId(String funIdcard);
	FoundationBean_HO73 getOneFoundation(String funAccount);
	List<FoundationBean_HO73> getAllFoundation();
	int update(FoundationBean_HO73 fb);
	int delete(String funAccount);
}
