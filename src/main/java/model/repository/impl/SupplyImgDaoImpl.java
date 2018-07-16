package model.repository.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.GoodsImgBean;
import model.bean.SupplyImgBean;
import model.repository.SupplyImgDao;

@Repository
public class SupplyImgDaoImpl implements Serializable, SupplyImgDao {

	private static final long serialVersionUID = 1L;
	@Autowired
	SessionFactory factory;

	public SupplyImgDaoImpl() {
//		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public int save(SupplyImgBean sib) {
		int n = 0;
		Session session = getSession();
		session.save(sib);
		n++;
		return n;
	}

	// get資料庫單筆資料
	@Override
	public SupplyImgBean getOneSupply(int supImgUid) {
		SupplyImgBean sb = null;
		Session session = getSession();
		sb = session.get(SupplyImgBean.class, supImgUid);
		return sb;
	}

	// select 全部資料
	@SuppressWarnings("unchecked")
	@Override
	public List<SupplyImgBean> getAllSupply() {

		List<SupplyImgBean> allSupply = new ArrayList<>();
		String hql = "FROM SupplyImgBean";
		Session session = getSession();
		allSupply = (List<SupplyImgBean>) session.createQuery(hql)
												 .getResultList();
		if(allSupply.size() > 0) {
		    return allSupply;
		} else {
		    return null;
		}
	}

	@Override
	public int update(SupplyImgBean sib) {
		int n = 0;
		Session session = getSession();
		session.merge(sib);
		n++;
		return n;
	}

	@Override
	public int delete(int supImgUid) {
		int n = 0;
		Session session = getSession();
		SupplyImgBean sib = new SupplyImgBean();
		sib.setSupImgUid(supImgUid);
		session.delete(sib);
		return n;
	}

	private Session getSession() {
		return factory.getCurrentSession();
	}

}
