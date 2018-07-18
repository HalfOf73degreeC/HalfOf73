package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.PayBox;
import model.bean.PayBoxIn;
import model.repository.PayBoxInDao;

@Repository("paymentInDao")
@Scope("prototype")
public class PayBoxInDaoImpl implements PayBoxInDao {

	@Autowired
	SessionFactory factory;
	
	@Override
	public boolean isDup(Integer id) {
		boolean result = false;
		String hql = "FROM PaymentIn pi where pi.id = :id";
		Session session = factory.getCurrentSession();
		try {
			PayBoxIn pi = (PayBoxIn) session.createQuery(hql).setParameter("id", id).getSingleResult();
			result = true;
		} catch (NoResultException e) {
			System.out.println("發生NoResultException...");
			result = false;
		}
		return result;

	}

	@Override
	public int save(PayBoxIn pi) {
		int count = 0;
		Session session = factory.getCurrentSession();
		session.save(pi);
		count++;
		return count;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PayBoxIn> getAllPaymentIn() {
		String hql = "FROM PaymentIn Order By payDate desc";
		List<PayBoxIn> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public PayBoxIn getPaymentIn(Integer pk) {
		PayBoxIn pi = null;
		Session session = factory.getCurrentSession();
		pi = session.get(PayBoxIn.class, pk);
		return pi;
	}


	@Override
	public int deletePaymentIn(Integer pk) {
		int count = 0;
		Session session = factory.getCurrentSession();
		PayBoxIn pi = new PayBoxIn();
		pi.setId(pk);
		session.delete(pi);
		count++;
		return count;
	}

	@Override
	public int updatePaymentIn(PayBox pi) {
		int count = 0;
		Session session = factory.getCurrentSession();	
		    session.merge(pi);
		    count++;
		return count;
	}

}
