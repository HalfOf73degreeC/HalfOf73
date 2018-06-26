package model.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;

import model.bean.FoundationBean_HO73;
import model.bean.PayBox;
import model.bean.PaymentIn;
import model.bean.PaymentOut;
import model.repository.FoundationDao;
import model.repository.PayBoxDao;
import model.repository.PaymentInDao;
import model.repository.PaymentOutDao;


@Service
@Scope("prototype")
public class payBoxService {

	@Autowired
	SessionFactory factory;
	@Autowired
	FoundationDao foundationDao;
	@Autowired
	PayBoxDao payboxDao;
	@Autowired
	PaymentInDao paymentInDao;
	@Autowired
	PaymentOutDao paymentOutDao;
	@Autowired
	Gson gson;
//	
//	新建一個募款箱(一個基金會可以有多個募款箱，但是同時只能有2個可以募款)
	@Transactional
	public PayBox creatOnePayBox(String payBoxName, String payBoxDetail, String payBankId, String payATMAccount, Integer payBoxType,
			String fk_payIdcard) {
		
		FoundationBean_HO73 fb = foundationDao.getOneFoundation(fk_payIdcard); 
		PayBox pb = null;
		int count = 0;
		for(PayBox payBox: fb.getPayBox()){
			System.out.println("發現ㄧ個payBox，id=" + payBox.getPayBoxNumber());
			if(payBox.getPayBoxType()==1) {
				count++;
			}
		}
		if(count<2) {
			System.out.println("新建一個payBox");
			pb = new PayBox(payBoxName, payBoxDetail, payBankId, payATMAccount, payBoxType, fb);
			payboxDao.save(pb);
		}else {
			System.out.println("payBox達上限(兩個)");
		}
		return pb;
	}
	@Transactional
	public String creatOnePayBox2String(String payBoxName, String payBoxDetail, String payBankId, String payATMAccount, Integer payBoxType,
			String fk_payIdcard) {
		return gson.toJson(creatOnePayBox(payBoxName, payBoxDetail, payBankId, payATMAccount, payBoxType, fk_payIdcard));
	}
	
//	一筆捐款至募款箱(同時改動募款箱的balance)
	@Transactional
	public int addOnePaymentIn(PaymentIn pi) {
		paymentInDao.save(pi);
		PayBox pb =  payboxDao.getPayBox(pi.getId());
		Integer balance = pb.getBalance();
		balance+=pi.getPayAmount();
		pb.setBalance(balance);
		payboxDao.save(pb);
		return 0;
	}
	
//	一筆募款箱的花費(同時改動募款箱的balance)
	@Transactional
	public int addOnePaymentOut(PaymentOut po) {
		paymentOutDao.save(po);
		PayBox pb =  payboxDao.getPayBox(po.getId());
		Integer balance = pb.getBalance();
		balance-=po.getPayForCost();
		pb.setBalance(balance);
		payboxDao.save(pb);
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
		return payboxDao.getAllPayBoxes();
	}
	@Transactional
	public String getAllPayBoxes2String() {
		return gson.toJson(getAllPayBoxes());
	}
//	列處一個基金會的所有募款箱
	@Transactional
	public List<PayBox> getFunPayBoxes(String fk_payIdcard) {
		List<PayBox> list = payboxDao.getFunPayBoxes(fk_payIdcard);
		return list;
	}
	@Transactional
	public String getFunPayBoxes2String(String fk_payIdcard) {
		return gson.toJson(getFunPayBoxes(fk_payIdcard));
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
