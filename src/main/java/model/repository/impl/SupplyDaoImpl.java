package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import _00.utils.HibernateUtil;
import model.GoodsBean_HO73;
import model.SupplyBean_HO73;
import model.repository.SupplyDao;

public class SupplyDaoImpl implements SupplyDao {
	SessionFactory factory;

	public SupplyDaoImpl() {
		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public void save(SupplyBean_HO73 sb) {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(sb); // session.update(object), session.delete(object);
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
	public SupplyBean_HO73 getSupplyBean(int supUid) {
		Session session = factory.openSession();
		SupplyBean_HO73 gb = null;
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			gb = (SupplyBean_HO73) session.get(SupplyBean_HO73.class, supUid);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return gb;
	}

	// select 全部資料
	@SuppressWarnings("unchecked")
	@Override
	public List<SupplyBean_HO73> getAllSupply() {
		List<SupplyBean_HO73> allSupply= new ArrayList<SupplyBean_HO73>();
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("From SupplyBean_HO73");
			allSupply = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return allSupply;
	}
}
