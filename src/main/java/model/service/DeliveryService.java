package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.bean.DeliveryBean_HO73;
import model.bean.GoodsBean_HO73;
import model.repository.DeliveryDao;

@Service
@Scope("prototype")
public class DeliveryService {

	@Autowired
    DeliveryDao dao;
    
	public DeliveryService() {
		
	}
	
	@Transactional
	public DeliveryBean_HO73 getOneDelivery(int deliveryUid) {
		return dao.getOneDelivery(deliveryUid);
	}

	@Transactional
	public List<DeliveryBean_HO73> getAllDelivery() {
		return dao.getAllDelivery();
	}

	@Transactional
	public int update(DeliveryBean_HO73 bean) {
		return dao.update(bean);
	}


	@Transactional
	public int delete(int no) {
		return dao.delete(no);
	}

	@Transactional
	public int save(DeliveryBean_HO73 bean) {
		return dao.save(bean);
	}

}
