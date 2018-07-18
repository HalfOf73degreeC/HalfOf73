package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.LoveSharingBean_HO73;
import model.repository.SharesDao;
@Transactional
@Repository("SharesDao")
@Scope("prototype")
public class SharesDaoImpl implements SharesDao {

	@Autowired
	SessionFactory factory;
	
	public SharesDaoImpl() {
	}
	
	@Override
	public void save(LoveSharingBean_HO73 lb) {
		Session session = factory.getCurrentSession();
		session.save(lb);
	}

	@Override
	public void saveOrUpdate(LoveSharingBean_HO73 lb) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(lb); // session.update(object), session.delete(object);
	}

	@Override
	public List<LoveSharingBean_HO73> getAllShares() {
		List<LoveSharingBean_HO73> allShares = new ArrayList<LoveSharingBean_HO73>();
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("From LoveSharingBean_HO73 Order By insertDate");
		allShares = query.getResultList();
		return allShares;
	}

	@Override
	public LoveSharingBean_HO73 getOneShare(Integer sharesUid) {
		Session session = factory.getCurrentSession();
		LoveSharingBean_HO73 lb = null;
		lb = (LoveSharingBean_HO73) session.get(LoveSharingBean_HO73.class, sharesUid);
		if(lb==null) {
			System.out.println("找不到sharesUid="+sharesUid+"的資訊");
		}
		return lb;

	}

	@Override
	public int merge(LoveSharingBean_HO73 lb) {
		Session session = factory.getCurrentSession();
		session.merge(lb); // session.update(object), session.delete(object);
		return 0;
	}

	@Override
	public int delete(Integer sharesUid) {
		Session session = factory.getCurrentSession();
		session.delete(sharesUid);
		return 0;
	}

}
