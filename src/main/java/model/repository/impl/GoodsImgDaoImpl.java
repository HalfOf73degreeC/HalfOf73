package model.repository.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.GoodsBean_HO73;
import model.bean.GoodsImgBean;
import model.repository.GoodsImgDao;

@Repository
public class GoodsImgDaoImpl implements Serializable, GoodsImgDao {

	private static final long serialVersionUID = 1L;
	@Autowired
	SessionFactory factory;

	public GoodsImgDaoImpl() {
//		factory = HibernateUtil.getSessionFactory();
	}

	@Override
	public int save(GoodsImgBean gib) {
		int n = 0;
		Session session = getSession();
		session.save(gib);
		n++;
		return n;
	}

	// get資料庫單筆資料
	@Override
	public GoodsImgBean getOneGoodsImg(int goodsImgUid) {
		GoodsImgBean gb = null;
		Session session = getSession();
		gb = session.get(GoodsImgBean.class, goodsImgUid);
		return gb;
	}

	// select 全部資料
	@SuppressWarnings("unchecked")
	@Override
	public List<GoodsImgBean> getOneGoodsAllImg(int goodsUid) {

		List<GoodsImgBean> oneGoodsImg = new ArrayList<>();
		String hql = "FROM GoodsImgBean where goodsUid.goodsUid= :goodsUid";
		Session session = getSession();
		oneGoodsImg = (List<GoodsImgBean>) session.createQuery(hql)
								               .setParameter("goodsUid", goodsUid)
											   .getResultList();
		
		if(oneGoodsImg.size() > 0) {
		    return oneGoodsImg;
		} else {
		    return null;
		}
		
	}

	@Override
	public int update(GoodsImgBean gib) {
		int n = 0;
		Session session = getSession();
		session.merge(gib);
		n++;
		return n;
	}

	@Override
	public int delete(int goodsImgUid) {
		int n = 0;
		Session session = getSession();
		GoodsImgBean gb = new GoodsImgBean();
		gb.setGoodsImgUid(goodsImgUid);
		session.delete(gb);
		return n;
	}

	private Session getSession() {
		return factory.getCurrentSession();
	}

}
