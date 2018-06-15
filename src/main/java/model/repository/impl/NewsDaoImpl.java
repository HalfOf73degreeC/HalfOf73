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
import model.bean.NewsBean_HO73;
import model.repository.NewsDao;
@Transactional
@Repository("newsDao")
@Scope("prototype")
public class NewsDaoImpl implements NewsDao {

	@Autowired
	SessionFactory factory;
	
	public NewsDaoImpl() {
	}
	
	@Override
	public void save(NewsBean_HO73 nb) {
		Session session = factory.getCurrentSession();
		session.save(nb);
	}

	@Override
	public void saveOrUpdate(NewsBean_HO73 nb) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(nb); // session.update(object), session.delete(object);
	}

	@Override
	public List<NewsBean_HO73> getAllNews() {
		List<NewsBean_HO73> allNews = new ArrayList<NewsBean_HO73>();
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("From NewsBean_HO73");
		allNews = query.getResultList();
		return allNews;
	}

	@Override
	public NewsBean_HO73 getOneNew(Integer newsUid) {
		Session session = factory.getCurrentSession();
		NewsBean_HO73 nb = null;
		nb = (NewsBean_HO73) session.get(NewsBean_HO73.class, newsUid);
		return nb;

	}

	@Override
	public int merge(NewsBean_HO73 nb) {
		Session session = factory.getCurrentSession();
		session.merge(nb); // session.update(object), session.delete(object);
		return 0;
	}

	@Override
	public int delete(Integer newsUid) {
		Session session = factory.getCurrentSession();
		session.delete(newsUid);
		return 0;
	}

}
