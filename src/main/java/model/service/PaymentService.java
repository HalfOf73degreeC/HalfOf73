package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;

import model.bean.PaymentBean_HO73;
import model.repository.PaymentDao;

@Service
@Scope("prototype")
public class PaymentService {

	@Autowired
    PaymentDao dao;
	@Autowired
	Gson gson;
    
	public PaymentService() {
		
	}
	
	@Transactional
	public PaymentBean_HO73 getOnePayment(int paymentUid) {
		return dao.getOnePayment(paymentUid);
	}

	@Transactional
	public List<PaymentBean_HO73> getAllPayment() {
		return dao.getAllPayment();
	}

	@Transactional
	public String getAllPayment2String() {		
		return gson.toJson(getAllPayment());
	}
	
	@Transactional
	public int update(PaymentBean_HO73 bean) {
		return dao.update(bean);
	}


	@Transactional
	public int delete(int no) {
		return dao.delete(no);
	}

	@Transactional
	public int save(PaymentBean_HO73 bean) {
		return dao.save(bean);
	}

}
