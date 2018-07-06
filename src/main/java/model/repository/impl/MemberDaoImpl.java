package model.repository.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.MemberBean_HO73;
import model.repository.MemberDao;

@Repository
public class MemberDaoImpl implements Serializable, MemberDao {

	private static final long serialVersionUID = 1L;

	@Autowired
	SessionFactory factory;

	public MemberDaoImpl() {
	}

	private Session getSession() {
		return factory.getCurrentSession();
	}

	@Override
	public int save(MemberBean_HO73 mb) {
		int n = 0;
		Session session = getSession();
		session.save(mb);
		n++;
		return n;
	}

	// get資料庫單筆資料
	@Override
	public MemberBean_HO73 getOneMember(String memAccount) {
		MemberBean_HO73 mb = null;
		Session session = getSession();
		mb = session.get(MemberBean_HO73.class, memAccount);
		return mb;
	}

	// select 全部資料
	@SuppressWarnings("unchecked")
	@Override
	public List<MemberBean_HO73> getAllMembers() {

		List<MemberBean_HO73> allMember = new ArrayList<>();
		String hql = "FROM MemberBean_HO73";
		Session session = getSession();
		allMember = (List<MemberBean_HO73>) session.createQuery(hql)
												   .getResultList();
		if(allMember.size() > 0) {
		    return allMember;
		} else {
		    return null;
		}
	}

	@Override
	public int update(MemberBean_HO73 mb) {
		int n = 0;
		Session session = getSession();
		session.merge(mb);
		n++;
		return n;
	}

	@Override
	public int delete(String memAccount) {
		int n = 0;
		Session session = getSession();
		MemberBean_HO73 mb = new MemberBean_HO73();
		mb.setMemAccount(memAccount);
		session.delete(mb);
		return n;
	}

	@Override
	public boolean isDup(String memAccount) {
		boolean result = false;
		String hql = "FROM MemberBean m where m.memAccount = :memAccount";
		Session session = factory.getCurrentSession();	
			try {
				MemberBean_HO73 mb = (MemberBean_HO73) session.createQuery(hql)
					                                          .setParameter("memAccount", memAccount)
					                                          .getSingleResult();
				result = true;
			} catch (NoResultException e) {
				System.out.println("發生NoResultException...");
				result = false;
			}
		return result;
	}

	@Override
	public void updateMemType(int memType, String funIdCard, String memAccount ) {
		String hql2 = " UPDATE MemberBean_HO73 m SET m.memType = :memType, m.foundationBean_HO73.funIdcard = :funIdCard where m.memAccount = :memAccount ";
		Session session = factory.getCurrentSession();	
	     session.createQuery(hql2)
		   .setParameter("memType", memType)
		   .setParameter("funIdCard", funIdCard)
		   .setParameter("memAccount", memAccount)
		   .executeUpdate();
		
	}
	

}
