package news;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import _00.utils.HibernateUtil;
import model.GoodsBean_HO73;

public class NewsDaoImpl implements newsDao {
	SessionFactory factory;
	
	public NewsDaoImpl() {
		factory = HibernateUtil.getSessionFactory();
	}
	
	@Override
	public void save(NewsBean_HO73 nb) {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(nb); // session.update(object), session.delete(object);
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
	public void saveOrUpdate(NewsBean_HO73 nb) {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.saveOrUpdate(nb); // session.update(object), session.delete(object);
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
	public List<NewsBean_HO73> getAllNews() {
		List<NewsBean_HO73> allNews = new ArrayList<NewsBean_HO73>();
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("From NewsBean_HO73");
			allNews = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return allNews;
	}

	@Override
	public NewsBean_HO73 getOneNew(Integer newsUid) {
		Session session = factory.openSession();
		NewsBean_HO73 nb = null;
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			nb = (NewsBean_HO73) session.get(NewsBean_HO73.class, newsUid);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return nb;

	}

	@Override
	public int merge(NewsBean_HO73 nb) {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.merge(nb); // session.update(object), session.delete(object);
			tx.commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			if (tx != null)
				tx.rollback();
		} finally {
			session.close();
		}
		return 0;
	}

	@Override
	public int delete(Integer newsUid) {
		// TODO Auto-generated method stub
		return 0;
	}

}
