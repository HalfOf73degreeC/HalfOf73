package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import model.bean.PayBoxOut;
import model.repository.PayBoxOutDao;

@Repository("PayBoxOutDao")
@Scope("prototype")
public class PayBoxOutDaoImpl implements PayBoxOutDao {

	@Autowired
	SessionFactory factory;
	
	@Override
	public boolean isDup(Integer id) {
		boolean result = false;
		String hql = "FROM PayBoxOut po where pb.id = :id";
		Session session = factory.getCurrentSession();
		try {
			PayBoxOut po = (PayBoxOut) session.createQuery(hql).setParameter("id", id).getSingleResult();
			result = true;
		} catch (NoResultException e) {
			System.out.println("發生NoResultException...");
			result = false;
		}
		return result;

	}

	@Override
	public int save(PayBoxOut po) {
		int count = 0;
		Session session = factory.getCurrentSession();
		session.save(po);
		count++;
		return count;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PayBoxOut> getAllPayBoxOut() {
		String hql = "FROM PayBoxOut Order By insertDate";
		List<PayBoxOut> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public PayBoxOut getPayBoxOut(Integer pk) {
		PayBoxOut po = null;
		Session session = factory.getCurrentSession();
		po = session.get(PayBoxOut.class, pk);
		return po;
	}

	@Override
	public int deletePayBoxOut(Integer pk) {
		int count = 0;
		Session session = factory.getCurrentSession();
		PayBoxOut po = new PayBoxOut();
		po.setId(pk);
		session.delete(po);
		count++;
		return count;
	}

	@Override
	public int updatePayBoxOut(PayBoxOut po) {
		int count = 0;
		Session session = factory.getCurrentSession();	
		    session.merge(po);
		    count++;
		return count;
	}

}
