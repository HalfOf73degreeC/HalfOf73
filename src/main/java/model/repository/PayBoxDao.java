package model.repository;

import java.util.List;

import model.bean.PayBox;


public interface PayBoxDao {
	boolean isDup(Integer id);

	int save(PayBox pb);

	List<PayBox> getAllPayBoxes();
	
	List<PayBox> getFunPayBoxes(String fk_payIdcard);

	PayBox getPayBox(Integer pk);

	int deletePayBox(Integer pk);

	int updatePayBox(PayBox pb);

}
