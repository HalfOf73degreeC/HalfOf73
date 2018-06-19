package model.repository;

import java.util.List;
import model.bean.PaymentOut;

public interface PaymentOutDao {
	boolean isDup(Integer id);

	int save(PaymentOut po);

	List<PaymentOut> getAllPayPaymentOut();

	PaymentOut getPaymentOut(Integer pk);

	int deletePaymentOut(Integer pk);

	int updatePaymentOut(PaymentOut po);
}
