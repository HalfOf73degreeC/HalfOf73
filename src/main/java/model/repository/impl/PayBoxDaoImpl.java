package model.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import model.bean.PayBox;
import model.repository.PayBoxDao;

@Repository("pbDao")
@Scope("prototype")
public class PayBoxDaoImpl implements PayBoxDao {

	@Autowired
	SessionFactory factory;

	@Override
	public boolean isDup(Integer payBoxNumber) {
		boolean result = false;
		String hql = "FROM PayBox pb where pb.payBoxNumber = :id";
		Session session = factory.getCurrentSession();
		try {
			PayBox pb = (PayBox) session.createQuery(hql).setParameter("id", payBoxNumber).getSingleResult();
			result = true;
		} catch (NoResultException e) {
			System.out.println("發生NoResultException...");
			result = false;
		}
		return result;

	}

	@Override
	public int save(PayBox pb) {
		int count = 0;
		Session session = factory.getCurrentSession();
		session.save(pb);
		count++;
		return count;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PayBox> getAllPayBoxes() {
		String hql = "FROM PayBox";
		List<PayBox> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public PayBox getPayBox(Integer pk) {
		PayBox pb = null;
		Session session = factory.getCurrentSession();
		pb = session.get(PayBox.class, pk);
		return pb;
	}

	@Override
	public int deletePayBox(Integer pk) {
		int count = 0;
		Session session = factory.getCurrentSession();
		PayBox pb = new PayBox();
		pb.setPayBoxNumber(pk);
		session.delete(pb);
		count++;
		return count;
	}

	@Override
	public int updatePayBox(PayBox pb) {
		int count = 0;
		Session session = factory.getCurrentSession();	
		    session.merge(pb);
		    count++;
		return count;
	}

}
