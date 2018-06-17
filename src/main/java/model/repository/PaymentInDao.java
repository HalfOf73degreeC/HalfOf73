package model.repository;

import java.util.List;

import model.bean.PayBox;
import model.bean.PaymentIn;

public interface PaymentInDao {
	boolean isDup(Integer id);

	int save(PaymentIn pi);

	List<PaymentIn> getAllPaymentIn();

	PaymentIn getPaymentIn(Integer pk);

	int deletePaymentIn(Integer pk);

	int updatePaymentIn(PayBox pi);
}
