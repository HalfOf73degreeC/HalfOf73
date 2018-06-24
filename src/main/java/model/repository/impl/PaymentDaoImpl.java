package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import _00.utils.HibernateUtil;
import model.bean.DeliveryBean_HO73;
import model.bean.PaymentBean_HO73;
import model.repository.PaymentDao;

@Repository
public class PaymentDaoImpl implements PaymentDao {
	@Autowired
	SessionFactory factory;

	public PaymentDaoImpl() {
//		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public int save(PaymentBean_HO73 pb) {
		int n = 0;
		Session session = getSession();
		session.save(pb);
		n++;
		return n;

	}

	@Override
	public PaymentBean_HO73 getOnePayment(int paymentUid) {
		PaymentBean_HO73 pb = null;
		Session session = getSession();
		pb = session.get(PaymentBean_HO73.class, paymentUid);
		return pb;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PaymentBean_HO73> getAllPayment() {
		List<PaymentBean_HO73> allPayment = new ArrayList<>();
		String hql = "FROM PaymentBean_HO73";
		Session session = getSession();
		allPayment = (List<PaymentBean_HO73>) session.createQuery(hql)
												 .getResultList();
		if(allPayment.size() > 0) {
		    return allPayment;
		} else {
		    return null;
		}
	}

	@Override
	public int update(PaymentBean_HO73 pb) {
		int n = 0;
		Session session = getSession();
		session.merge(pb);
		n++;
		return n;
	}

	@Override
	public int delete(int paymentUid) {
		int n = 0;
		Session session = getSession();
		PaymentBean_HO73 pb = new PaymentBean_HO73();
		pb.setPaymentUid(paymentUid);
		session.delete(pb);
		return n;
	}
	

	private Session getSession() {
		return factory.getCurrentSession();
	}

}
