package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
<<<<<<< HEAD

import model.bean.PayBox;
import model.bean.PaymentIn;
import model.bean.PaymentOut;
import model.repository.PaymentInDao;

@Repository("piDao")
=======
import org.springframework.transaction.annotation.Transactional;

import model.bean.PayBox;
import model.bean.PaymentIn;
import model.repository.PaymentInDao;

@Repository("paymentInDao")
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
@Scope("prototype")
public class PaymentInDaoImpl implements PaymentInDao {

	@Autowired
	SessionFactory factory;
	
	@Override
	public boolean isDup(Integer id) {
		boolean result = false;
		String hql = "FROM PaymentIn pi where pi.id = :id";
		Session session = factory.getCurrentSession();
		try {
			PaymentIn pi = (PaymentIn) session.createQuery(hql).setParameter("id", id).getSingleResult();
			result = true;
		} catch (NoResultException e) {
			System.out.println("發生NoResultException...");
			result = false;
		}
		return result;

	}

	@Override
	public int save(PaymentIn pi) {
		int count = 0;
		Session session = factory.getCurrentSession();
		session.save(pi);
		count++;
		return count;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PaymentIn> getAllPaymentIn() {
		String hql = "FROM PaymentIn";
		List<PaymentIn> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public PaymentIn getPaymentIn(Integer pk) {
		PaymentIn pi = null;
		Session session = factory.getCurrentSession();
		pi = session.get(PaymentIn.class, pk);
		return pi;
	}


	@Override
	public int deletePaymentIn(Integer pk) {
		int count = 0;
		Session session = factory.getCurrentSession();
		PaymentIn pi = new PaymentIn();
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
