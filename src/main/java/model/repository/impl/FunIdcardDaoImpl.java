package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.FunIdcardBean;
import model.bean.PayBox;
import model.repository.FunIdcardDao;
@Transactional
@Repository("funIdcardDao")
@Scope("prototype")
public class FunIdcardDaoImpl implements FunIdcardDao {
	
	@Autowired
	SessionFactory factory;
	
	public FunIdcardDaoImpl(){
		
	}

	@Override
	public void save(FunIdcardBean fb) {
		Session session = factory.getCurrentSession();
		session.save(fb);

	}

	@Override
	public void saveOrUpdate(FunIdcardBean fb) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(fb); // session.update(object), session.delete(object);

	}

	@Override
	public List<FunIdcardBean> getAllFunIdcard() {
		List<FunIdcardBean> allFunIdcards = new ArrayList<FunIdcardBean>();
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("From FunIdcardBean");
		allFunIdcards = query.getResultList();
		return allFunIdcards;
	}

	@Override
	public FunIdcardBean getOneFunId(Integer funId) {
		Session session = factory.getCurrentSession();
		FunIdcardBean fb = null;
		fb = (FunIdcardBean) session.get(FunIdcardBean.class, funId);
		if(fb==null) {
			System.out.println("找不到funId="+funId+"的資訊");
		}
		return fb;
	}

	@Override
	public FunIdcardBean getOneFunIdcard(String funIdcard) {
		FunIdcardBean fib = null;
		String hql = "FROM FunIdcardBean fib where fib.funIdcard = :funIdcard";
		Session session = factory.getCurrentSession();
		try {
			fib = (FunIdcardBean) session.createQuery(hql).setParameter("funIdcard", funIdcard).getSingleResult();
		} catch (NoResultException e) {
			System.out.println("找不到FunIdcard，發生NoResultException...");
		}

		return fib;
	}
	
	@Override
	public int merge(FunIdcardBean fb) {
		Session session = factory.getCurrentSession();
		session.merge(fb); // session.update(object), session.delete(object);
		return 0;
	}

	@Override
	public int delete(Integer funId) {
		Session session = factory.getCurrentSession();
		session.delete(funId);
		return 0;
	}



}
