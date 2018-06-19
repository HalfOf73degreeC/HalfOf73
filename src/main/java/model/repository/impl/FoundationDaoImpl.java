package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import _00.utils.HibernateUtil;
import model.bean.FoundationBean_HO73;
import model.repository.FoundationDao;
@Transactional
@Repository("foundationDao")
@Scope("prototype")
public class FoundationDaoImpl implements FoundationDao {
	@Autowired
	SessionFactory factory;

	public FoundationDaoImpl() {
	}

	@Override
	public void save(FoundationBean_HO73 fb) {
		Session session = factory.getCurrentSession();
		session.save(fb); // session.update(object), session.delete(object);
		
	}

	// get資料庫單筆資料
	@Override
	public FoundationBean_HO73 getOneFoundation(String funIdcard) {
		Session session = factory.getCurrentSession();
		FoundationBean_HO73 fb = null;
		fb = (FoundationBean_HO73) session.get(FoundationBean_HO73.class, funIdcard);
		
		return fb;
	}

	// select 全部資料
	@SuppressWarnings("unchecked")
	@Override
	public List<FoundationBean_HO73> getAllFoundation() {
		List<FoundationBean_HO73> allFoundation = new ArrayList<FoundationBean_HO73>();
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("From FoundationBean_HO73");
		allFoundation = query.getResultList();
		
		return allFoundation;
	}

	@Override
	public int update(FoundationBean_HO73 fb) {
		int count = 0;
		Session session = factory.getCurrentSession();
		session.update("FoundationBean_HO73",fb);
		
		return count;
	}
	

	@Override
	public int delete(String funAccount) {
		Session session = factory.getCurrentSession();
		session.delete(funAccount);
		return 0;
	}

	@Override
	public int saveOrUpdate(FoundationBean_HO73 fb) {
		int count = 0;
		Session session = factory.getCurrentSession();
		session.saveOrUpdate("FoundationBean_HO73",fb);
		
		return count;
	}


}
