package model.repository;

import java.util.List;
import model.bean.PayBoxOut;

public interface PayBoxOutDao {
	boolean isDup(Integer id);

	int save(PayBoxOut po);

	List<PayBoxOut> getAllPayPaymentOut();

	PayBoxOut getPaymentOut(Integer pk);

	int deletePaymentOut(Integer pk);

	int updatePaymentOut(PayBoxOut po);
}
