package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.bean.GoodsBean_HO73;
import model.repository.GoodsDao;

@Service
@Scope("prototype")
public class GoodsService {

	@Autowired
    GoodsDao dao;
    
	public GoodsService() {
		
	}
	
	@Transactional
	public GoodsBean_HO73 getOneGoods(int goodsUid) {
		return dao.getOneGoods(goodsUid);
	}

	@Transactional
	public List<GoodsBean_HO73> getAllGoods() {
		return dao.getAllGoods();
	}

	@Transactional
	public int update(GoodsBean_HO73 bean) {
		return dao.update(bean);
	}


	@Transactional
	public int delete(int no) {
		return dao.delete(no);
	}

	@Transactional
	public int save(GoodsBean_HO73 bean) {
		return dao.save(bean);
	}

}
