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
<<<<<<< HEAD
import model.bean.PayBox;
import model.bean.PaymentOut;
import model.repository.PaymentOutDao;

@Repository("poDao")
=======
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
import model.bean.PaymentOut;
import model.repository.PaymentOutDao;

@Repository("paymentOutDao")
<<<<<<< HEAD
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
@Scope("prototype")
public class PaymentOutDaoImpl implements PaymentOutDao {

	@Autowired
	SessionFactory factory;
	
	@Override
	public boolean isDup(Integer id) {
		boolean result = false;
		String hql = "FROM PaymentOut po where pb.id = :id";
		Session session = factory.getCurrentSession();
		try {
			PaymentOut po = (PaymentOut) session.createQuery(hql).setParameter("id", id).getSingleResult();
			result = true;
		} catch (NoResultException e) {
			System.out.println("發生NoResultException...");
			result = false;
		}
		return result;

	}

	@Override
	public int save(PaymentOut po) {
		int count = 0;
		Session session = factory.getCurrentSession();
		session.save(po);
		count++;
		return count;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PaymentOut> getAllPayPaymentOut() {
		String hql = "FROM PaymentOut";
		List<PaymentOut> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public PaymentOut getPaymentOut(Integer pk) {
		PaymentOut po = null;
		Session session = factory.getCurrentSession();
		po = session.get(PaymentOut.class, pk);
		return po;
	}

	@Override
	public int deletePaymentOut(Integer pk) {
		int count = 0;
		Session session = factory.getCurrentSession();
		PaymentOut po = new PaymentOut();
		po.setId(pk);
		session.delete(po);
		count++;
		return count;
	}

	@Override
	public int updatePaymentOut(PaymentOut po) {
		int count = 0;
		Session session = factory.getCurrentSession();	
		    session.merge(po);
		    count++;
		return count;
	}

}
