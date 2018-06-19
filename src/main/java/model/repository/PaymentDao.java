package model.repository;

import java.util.List;

import model.bean.PaymentBean_HO73;

public interface PaymentDao {
	void save(PaymentBean_HO73 gb);
	PaymentBean_HO73 getOnePayment(int paymentUid);
	List<PaymentBean_HO73> getAllPayment();
	int update(PaymentBean_HO73 pb);
	int delete(int paymentUid);
}
