package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import _00.utils.HibernateUtil;
import model.DeliveryBean_HO73;
import model.PaymentBean_HO73;
import model.repository.PaymentDao;

public class PaymentDaoImpl implements PaymentDao {
	SessionFactory factory;

	public PaymentDaoImpl() {
		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public void save(PaymentBean_HO73 pb) {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(pb); // session.update(object), session.delete(object);
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
	public PaymentBean_HO73 getOnePayment(int paymentUid) {
		Session session = factory.openSession();
		PaymentBean_HO73 pb = null;
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			pb = (PaymentBean_HO73) session.get(PaymentBean_HO73.class, paymentUid);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return pb;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PaymentBean_HO73> getAllPayment() {
		List<PaymentBean_HO73> allPayment = new ArrayList<PaymentBean_HO73>();
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("From PaymentBean_HO73");
			allPayment = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			System.out.println(e.getMessage());
		} finally {
			session.close();
		}
		return allPayment;
	}

	@Override
	public int update(PaymentBean_HO73 pb) {
		int count = 0;
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.update("PaymentBean_HO73",pb);
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
	public int delete(int deliveryUid) {
		// TODO Auto-generated method stub
		return 0;
	}

}
