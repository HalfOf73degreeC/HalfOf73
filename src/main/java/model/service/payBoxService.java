package model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;

import model.bean.FoundationBean_HO73;
import model.bean.MemberBean_HO73;
import model.bean.PayBox;
import model.bean.PayBoxIn;
import model.bean.PayBoxOut;
import model.repository.FoundationDao;
import model.repository.MemberDao;
import model.repository.PayBoxDao;
import model.repository.PayBoxInDao;
import model.repository.PayBoxOutDao;


@Service
@Scope("prototype")
public class payBoxService {

	@Autowired
	SessionFactory factory;
	@Autowired
	MemberDao memberDao;
	@Autowired
	FoundationDao foundationDao;
	@Autowired
	PayBoxDao payboxDao;
	@Autowired
	PayBoxInDao payBoxInDao;
	@Autowired
	PayBoxOutDao payBoxOutDao;
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
	public String creatOnePayBox2String(String payBoxName, String payBoxDetail, String payBankId, String payATMAccount, Integer payBoxType,	String fk_payIdcard) {
		return gson.toJson(creatOnePayBox(payBoxName, payBoxDetail, payBankId, payATMAccount, payBoxType, fk_payIdcard));
	}
//	更新捐款箱狀態
	@Transactional
	public PayBox onOffPayBox(Integer payBoxNumber, Integer payBoxType) {
		PayBox payBox = payboxDao.getPayBox(payBoxNumber);
		if(payBoxType==0) {
			payBox.setPayBoxType(payBoxType);
			payboxDao.save(payBox);
		}
		return payBox;
	}
	@Transactional
	public String onOffPayBox2String(Integer payBoxNumber, Integer payBoxType) {
		return gson.toJson(onOffPayBox(payBoxNumber, payBoxType));
	}
//	一筆捐款至募款箱(同時改動募款箱的balance)
	@Transactional
	public PayBoxIn addOnePayBoxIn(Integer payBoxNumber, String memAccount, Integer payAmount) {
		PayBox payBox = payboxDao.getPayBox(payBoxNumber);
		Integer hideWordCount = 4;
		String hideWord = "*";
		MemberBean_HO73 mb = memberDao.getOneMember(memAccount);
		String MemName = mb.getMemName();
		String simpleMemName="";
		for(int i = 0;i<MemName.length();i++) {
			String oneWord = MemName.substring(i,i+1);
			if(i%hideWordCount!=0) {
				simpleMemName += hideWord;
				System.out.println("if-simpleMemName: "+simpleMemName);
				System.out.println("if-hideWord: "+hideWord);
			}else {
				simpleMemName += oneWord;
				System.out.println("else-simpleMemName: "+simpleMemName);
				System.out.println("else-oneWord: "+oneWord);
			}
		}
		PayBoxIn pbi = new PayBoxIn(payBox,memAccount,simpleMemName,payAmount);
		payBoxInDao.save(pbi);
		Integer balance = payBox.getBalance();
		balance+=pbi.getPayAmount();
		payBox.setBalance(balance);
		payboxDao.save(payBox);
		return pbi;
	}
	@Transactional
	public String addOnePayBoxIn2String(Integer payBoxNumber, String memAccount, Integer payAmount) {
		return gson.toJson(addOnePayBoxIn(payBoxNumber, memAccount, payAmount));
	}
	
//	一筆募款箱的花費(同時改動募款箱的balance)
	@Transactional
	public PayBoxOut addOnePayBoxOut(Integer payBoxNumber, String fk_payIdcard, String payForName, String payForDetail, Integer payForCost,
			String receipt) {
		PayBox payBox = payboxDao.getPayBox(payBoxNumber);
		FoundationBean_HO73 foundationBean = foundationDao.getOneFoundation(fk_payIdcard);
		PayBoxOut pbo = new PayBoxOut(payBox,foundationBean,payForName,payForDetail,payForCost,receipt);
		payBoxOutDao.save(pbo);
		Integer balance = payBox.getBalance();
		balance-=pbo.getPayForCost();
		payBox.setBalance(balance);
		payboxDao.save(payBox);
		return pbo;
	}
	@Transactional
	public String addOnePayBoxOut2String(Integer payBoxNumber, String fk_payIdcard, String payForName, String payForDetail, Integer payForCost,
			String receipt) {
		return gson.toJson(addOnePayBoxOut(payBoxNumber, fk_payIdcard, payForName, payForDetail, payForCost, receipt)); 
	}
	
//	查詢一筆募款箱
	@Transactional
	public PayBox queryOnePaybox(Integer payBoxNumber) {
		PayBox paybox = payboxDao.getPayBox(payBoxNumber);
		return paybox;
	}
	@Transactional
	public String queryOnePaybox2String(Integer payBoxNumber) {
		return gson.toJson(queryOnePaybox(payBoxNumber));
	}
//	刪除一筆募款箱
	@Transactional
	public Integer delOnePaybox(Integer payBoxNumber) {
		payboxDao.deletePayBox(payBoxNumber);
		return 0;
	}
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
		FoundationBean_HO73 foundationBean = foundationDao.getOneFoundation(fk_payIdcard);
		List<PayBox> list = payboxDao.getFunPayBoxes(foundationBean);
		return list;
	}
	@Transactional
	public String getFunPayBoxes2String(String fk_payIdcard) {
		return gson.toJson(getFunPayBoxes(fk_payIdcard));
	}
	
	
//	列出該募款箱所有的花費
	@Transactional
	public Set<PayBoxOut> getAllPayBoxOut(Integer payBoxNumber) {
		PayBox paybox = payboxDao.getPayBox(payBoxNumber);		
		return paybox.getpayBoxOut();
	}
	@Transactional
	public String getAllPayBoxOut2String(Integer payBoxNumber) {
		return gson.toJson(getAllPayBoxOut(payBoxNumber));
	}
//	列處一個基金會所有募款箱的花費
	@Transactional
	public Set<PayBoxOut> getFunPayBoxOut(String fk_payIdcard) {
		FoundationBean_HO73 foundationBean = foundationDao.getOneFoundation(fk_payIdcard);
		return foundationBean.getpayBoxOut();
	}
	@Transactional
	public String getFunPayBoxOut2String(String fk_payIdcard) {
		return gson.toJson(getFunPayBoxOut(fk_payIdcard));
	}
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
