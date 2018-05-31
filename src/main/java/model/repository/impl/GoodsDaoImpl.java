package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import _00.utils.HibernateUtil;
import model.GoodsBean_HO73;
import model.repository.GoodsDao;

public class GoodsDaoImpl implements GoodsDao {
	SessionFactory factory;

	public GoodsDaoImpl() {
		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public void save(GoodsBean_HO73 gb) {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(gb); // session.update(object), session.delete(object);
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
	public GoodsBean_HO73 getOneGoods(int goodsUid) {
		Session session = factory.openSession();
		GoodsBean_HO73 gb = null;
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			gb = (GoodsBean_HO73) session.get(GoodsBean_HO73.class, goodsUid);
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
	public List<GoodsBean_HO73> getAllGoods() {
		List<GoodsBean_HO73> allGoods = new ArrayList<GoodsBean_HO73>();
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("From GoodsBean_HO73");
			allGoods = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return allGoods;
	}

	@Override
	public int update(GoodsBean_HO73 gb) {
		int count = 0;
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.update("GoodsBean_HO73",gb);
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
	public int delete(int goodsUid) {
		// TODO Auto-generated method stub
		return 0;
	}

}
