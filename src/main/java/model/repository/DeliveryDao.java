package model.repository;

import java.util.List;

import model.DeliveryBean_HO73;

public interface DeliveryDao {
	void save(DeliveryBean_HO73 gb);
	DeliveryBean_HO73 getOneDelivery(int deliveryUid);
	List<DeliveryBean_HO73> getAllDelivery();
	int update(DeliveryBean_HO73 gb);
	int delete(int deliveryUid);
}
