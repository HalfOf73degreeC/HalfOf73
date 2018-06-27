package model.repository;

import java.util.List;

import model.bean.PayBox;
import model.bean.PayBoxIn;

public interface PayBoxInDao {
	boolean isDup(Integer id);

	int save(PayBoxIn pi);

	List<PayBoxIn> getAllPaymentIn();

	PayBoxIn getPaymentIn(Integer pk);

	int deletePaymentIn(Integer pk);

	int updatePaymentIn(PayBox pi);
}
