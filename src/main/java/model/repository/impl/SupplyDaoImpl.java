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
import model.bean.GoodsBean_HO73;
import model.bean.SupplyBean_HO73;
import model.repository.SupplyDao;

@Repository
public class SupplyDaoImpl implements SupplyDao {
	
	@Autowired
	SessionFactory factory;

	public SupplyDaoImpl() {
//		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public int save(SupplyBean_HO73 sb) {
		int n = 0;
		Session session = getSession();
		session.save(sb);
		n++;
		return n;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SupplyBean_HO73> getAllSupply() {
		List<SupplyBean_HO73> allSupply = new ArrayList<>();
		String hql = "FROM SupplyBean_HO73 Order By insertDate desc";
		Session session = getSession();
		allSupply = (List<SupplyBean_HO73>) session.createQuery(hql)
												   .getResultList();
		if(allSupply.size() > 0) {
		    return allSupply;
		} else {
		    return null;
		}
	}

	@Override
	public int update(SupplyBean_HO73 sb) {
		int n = 0;
		Session session = getSession();
		session.merge(sb);
		n++;
		return n;
	}

	@Override
	public int delete(int supUid) {
		int n = 0;
		Session session = getSession();
		SupplyBean_HO73 sb = new SupplyBean_HO73();
		sb.setSupUid(supUid);
		session.delete(sb);
		return n;
	}

	@Override
	public SupplyBean_HO73 getOneSupply(int supUid) {
		SupplyBean_HO73 sb = null;
		Session session = getSession();
		sb = session.get(SupplyBean_HO73.class, supUid);
		return sb;
	}
	
	private Session getSession() {
		return factory.getCurrentSession();
	}


}
