package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.bean.GoodsBean_HO73;
import model.bean.SupplyBean_HO73;
import model.repository.SupplyDao;

@Service
@Scope("prototype")
public class SupplyService {

	@Autowired
    SupplyDao dao;
    
	public SupplyService() {
		
	}
	
	@Transactional
	public SupplyBean_HO73 getOneSupply(int supUid) {
		return dao.getOneSupply(supUid);
	}

	@Transactional
	public List<SupplyBean_HO73> getAllSupply() {
		return dao.getAllSupply();
	}

	@Transactional
	public int update(SupplyBean_HO73 bean) {
		return dao.update(bean);
	}


	@Transactional
	public int delete(int no) {
		return dao.delete(no);
	}

	@Transactional
	public int save(SupplyBean_HO73 bean) {
		return dao.save(bean);
	}

}
