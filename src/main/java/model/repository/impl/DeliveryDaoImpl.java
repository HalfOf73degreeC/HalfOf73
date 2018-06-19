package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import _00.utils.HibernateUtil;
import model.bean.DeliveryBean_HO73;
import model.repository.DeliveryDao;

public class DeliveryDaoImpl implements DeliveryDao {
	SessionFactory factory;

	public DeliveryDaoImpl() {
		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public void save(DeliveryBean_HO73 db) {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(db); // session.update(object), session.delete(object);
			tx.commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			if (tx != null)
				tx.rollback();
		} finally {
			session.close();
		}

	}

	@Override
	public DeliveryBean_HO73 getOneDelivery(int deliveryUid) {
		Session session = factory.openSession();
		DeliveryBean_HO73 db = null;
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			db = (DeliveryBean_HO73) session.get(DeliveryBean_HO73.class, deliveryUid);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return db;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DeliveryBean_HO73> getAllDelivery() {
		List<DeliveryBean_HO73> allDelivery = new ArrayList<DeliveryBean_HO73>();
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("From DeliveryBean_HO73");
			allDelivery = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return allDelivery;
	}

	@Override
	public int update(DeliveryBean_HO73 db) {
		int count = 0;
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.update("DeliveryBean_HO73",db);
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
	public int delete(int deliveryUid) {
		// TODO Auto-generated method stub
		return 0;
	}

}
