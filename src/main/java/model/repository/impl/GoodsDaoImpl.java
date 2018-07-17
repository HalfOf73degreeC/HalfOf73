package model.repository.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.GoodsBean_HO73;
import model.repository.GoodsDao;

@Repository
public class GoodsDaoImpl implements Serializable, GoodsDao {

	private static final long serialVersionUID = 1L;
	@Autowired
	SessionFactory factory;

	public GoodsDaoImpl() {
//		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public int save(GoodsBean_HO73 gb) {
		int n = 0;
		Session session = getSession();
		session.save(gb);
		n++;
		return n;
	}

	// get資料庫單筆資料
	@Override
	public GoodsBean_HO73 getOneGoods(int goodsUid) {
		GoodsBean_HO73 gb = null;
		Session session = getSession();
		System.out.println(session);
		gb = session.get(GoodsBean_HO73.class, goodsUid);
		return gb;
	}

	// select 全部資料
	@SuppressWarnings("unchecked")
	@Override
	public List<GoodsBean_HO73> getAllGoods() {

		List<GoodsBean_HO73> allGoods = new ArrayList<>();
		String hql = "FROM GoodsBean_HO73";
		Session session = getSession();
		allGoods = (List<GoodsBean_HO73>) session.createQuery(hql)
												 .getResultList();
		if(allGoods.size() > 0) {
		    return allGoods;
		} else {
		    return null;
		}
	}

	@Override
	public int update(GoodsBean_HO73 gb) {
		int n = 0;
		Session session = getSession();
		session.merge(gb);
		n++;
		return n;
	}

	@Override
	public int delete(int goodsUid) {
		int n = 0;
		Session session = getSession();
		GoodsBean_HO73 gb = new GoodsBean_HO73();
		gb.setGoodsUid(goodsUid);
		session.delete(gb);
		return n;
	}

	private Session getSession() {
		return factory.getCurrentSession();
	}

}
