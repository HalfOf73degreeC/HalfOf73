package model.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.metamodel.internal.MapMember;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import _00.utils.HibernateUtil;
import model.bean.FoundationBean_HO73;
import model.bean.MemberBean_HO73;
import model.bean.PayBox;
import model.bean.PaymentIn;
import model.bean.PaymentOut;
import model.repository.impl.FoundationDaoImpl;
import model.repository.impl.PayBoxDaoImpl;
import model.repository.impl.PaymentInDaoImpl;
import model.repository.impl.PaymentOutDaoImpl;


@Service
@Scope("prototype")
public class payBoxService {

	@Autowired
	SessionFactory factory;
	@Autowired
	FoundationDaoImpl foundationDaoImpl;
	@Autowired
	PayBoxDaoImpl boxDaoImpl;
	@Autowired
	PaymentInDaoImpl paymentIn;
	@Autowired
	PaymentOutDaoImpl paymentOut;
//	
//	新建一個募款箱(一個基金會可以有多個募款箱，但是同時只能有2個可以募款)
	@Transactional
	public int creatOnePayBox(PayBox pb) {
		
		FoundationBean_HO73 fb = foundationDaoImpl.getOneFoundation(pb.getFoundationBean().getFunAccount()); 
		int count = 0;
		for(PayBox payBox: fb.getPayBox()){
			System.out.println("發現ㄧ個payBox，id=" + payBox.getPayBoxNumber());
			if(payBox.getPayBoxType()==1) {
				count++;
			}
		}
		if(count<2) {
			System.out.println("新建一個payBox");
			boxDaoImpl.save(pb);
		}else {
			System.out.println("payBox達上限(兩個)");
		}
		return 0;
	}
	
//	一筆捐款至募款箱(同時改動募款箱的balance)
	@Transactional
	public int addOnePaymentIn(PaymentIn pi) {
		paymentIn.save(pi);
		PayBox pb =  boxDaoImpl.getPayBox(pi.getId());
		Integer balance = pb.getBalance();
		balance+=pi.getPayAmount();
		pb.setBalance(balance);
		boxDaoImpl.save(pb);
		return 0;
	}
	
//	一筆募款箱的花費(同時改動募款箱的balance)
	@Transactional
	public int addOnePaymentOut(PaymentOut po) {
		paymentOut.save(po);
		PayBox pb =  boxDaoImpl.getPayBox(po.getId());
		Integer balance = pb.getBalance();
		balance-=po.getPayForCost();
		pb.setBalance(balance);
		boxDaoImpl.save(pb);
		return 0;
	}
//	查詢一筆募款箱
//	@Transactional
//	public int queryOnePaybox(PaymentOut po) {
//		paymentOut.save(po);
//		PayBox pb =  boxDaoImpl.getPayBox(po.getId());
//		Integer balance = pb.getBalance();
//		balance-=po.getPayForCost();
//		pb.setBalance(balance);
//		boxDaoImpl.save(pb);
//		return 0;
//	}
//	列出所有的募款箱
	@Transactional
	public List<PayBox> getAllPayBoxes() {
		
		return boxDaoImpl.getAllPayBoxes();
	}
//	列處一個基金會的所有募款箱
	@Transactional
	public List<PayBox> getFunPayBoxes(FoundationBean_HO73 fb) {
		List<PayBox> list = new ArrayList<PayBox>();
		for(PayBox payBox: fb.getPayBox()){
			System.out.println("發現ㄧ個payBox，id=" + payBox.getPayBoxNumber());
			list.add(payBox);
		}
		return list;
	}
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