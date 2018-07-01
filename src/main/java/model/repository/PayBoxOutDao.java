package model.repository;

import java.util.List;
import model.bean.PayBoxOut;

public interface PayBoxOutDao {
	boolean isDup(Integer id);

	int save(PayBoxOut po);

	List<PayBoxOut> getAllPayBoxOut();

	PayBoxOut getPayBoxOut(Integer pk);

	int deletePayBoxOut(Integer pk);

	int updatePayBoxOut(PayBoxOut po);
}
