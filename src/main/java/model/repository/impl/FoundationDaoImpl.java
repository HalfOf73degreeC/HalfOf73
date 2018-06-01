package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import _00.utils.HibernateUtil;
import model.FoundationBean_HO73;
import model.repository.FoundationDao;

public class FoundationDaoImpl implements FoundationDao {
	SessionFactory factory;

	public FoundationDaoImpl() {
		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public void save(FoundationBean_HO73 fb) {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(fb); // session.update(object), session.delete(object);
			tx.commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			if (tx != null)
				tx.rollback();
		} finally {
			session.close();
		}
	}

	// get資料庫單筆資料
	@Override
	public FoundationBean_HO73 getOneFoundation(String funAccount) {
		Session session = factory.openSession();
		FoundationBean_HO73 fb = null;
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			fb = (FoundationBean_HO73) session.get(FoundationBean_HO73.class, funAccount);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return fb;
	}

	// select 全部資料
	@SuppressWarnings("unchecked")
	@Override
	public List<FoundationBean_HO73> getAllFoundation() {
		List<FoundationBean_HO73> allFoundation = new ArrayList<FoundationBean_HO73>();
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("From FoundationBean_HO73");
			allFoundation = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return allFoundation;
	}

	@Override
	public int update(FoundationBean_HO73 fb) {
		int count = 0;
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.update("FoundationBean_HO73",fb);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return count;
	}
	

	@Override
	public int delete(String funAccount) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int saveOrUpdate(FoundationBean_HO73 fb) {
		int count = 0;
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.saveOrUpdate("FoundationBean_HO73",fb);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return count;
	}

}
