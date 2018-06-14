package model.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import _00.utils.HibernateUtil;
import model.bean.FoundationBean_HO73;
import model.bean.PayBox;


@Service
@Scope("prototype")
public class payBoxService {
//	@Autowired
//	MemberDao dao;
//	@Autowired
//	MemberControllerDao mcDao;
//	
//	新建一個募款箱(一個基金會可以有多個募款箱，但是同時只能有2個可以募款)
	@Transactional
	public int creatOnePayBox(FoundationBean_HO73 fb) {
		SessionFactory sessionFactory = null;
		Session session = null;
		Transaction tx = null;
		try{
		// 建立SessionFactory物件
		sessionFactory = HibernateUtil.getSessionFactory();
		// 取出Session物件
		session = sessionFactory.getCurrentSession();
		System.out.println("得到Session物件");
		//開啟交易
		tx = session.beginTransaction();
		// 查詢特定的Cart物件，在找出其內所有Items
		System.out.println("查詢特定的Foundation物件，在找出其內所有payBox:");
		FoundationBean_HO73 fbf = session.get(FoundationBean_HO73.class,fb.getFunAccount()); 
		int count = 0;
		for(PayBox payBox: fbf.getPayBox()){
			System.out.println("發現ㄧ個payBox，id=" + payBox.getPayBoxNumber());
			if(payBox.getPayBoxType()==1) {
				count++;
			}
		}
		if(count<2) {
			System.out.println("新建一個payBox");
			tx.commit();
		}else {
			System.out.println("payBox達上限(兩個)");
		}
		
		}catch(Exception e){
			System.out.println("發生例外: "+e.getMessage());
			e.printStackTrace();
		}finally{
			if(!sessionFactory.isClosed()){
				System.out.println("關閉SessionFactory");
				sessionFactory.close();
			}
		}
		return 0;
	}
	
//	一筆捐款至募款箱(同時改動募款箱的balance)
//	一筆募款箱的花費(同時改動募款箱的balance)
//	查詢一筆募款箱
//	列出所有的募款箱
//	列處一個基金會的所有募款箱
//	
//	
//	
//	@Transactional
//	public boolean isDup(String id) {
////		MemberDao dao = new MemberJDBCDaoImpl();
//		return dao.isDup(id);
//	}
//	@Transactional
//	public int save(MemberBean mb) {
//		int inc = 1;
//		java.util.Date d1 = new java.util.Date();
//		java.sql.Date date = new java.sql.Date(d1.getTime());
//		int n = dao.save(mb);
//		mcDao.checkMemberCount(date, inc);
//		return n;
//	}
//	@Transactional
//	public List<MemberBean> getAllMembers() {
////		MemberDao dao = new MemberJDBCDaoImpl();
//		return dao.getAllMembers();
//	}
//	@Transactional
//	public MemberBean getMember(int pk) {
////		MemberDao dao = new MemberJDBCDaoImpl();
//		return dao.getMember(pk);
//	}
//	@Transactional
//	public int deleteMember(int ipk) {
////		MemberDao dao = new MemberJDBCDaoImpl();
//		return dao.deleteMember(ipk);
//	}
//	@Transactional
//	public int updateMember(MemberBean mb) {
////		MemberDao dao = new MemberJDBCDaoImpl();
//		return dao.updateMember(mb);
//	}

}
