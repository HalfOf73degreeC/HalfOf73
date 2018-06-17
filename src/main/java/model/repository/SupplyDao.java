package model.repository;

import java.util.List;

import model.bean.SupplyBean_HO73;

public interface SupplyDao {
	void save(SupplyBean_HO73 sb);
	SupplyBean_HO73 getSupplyBean(int goodsUid);
	List<SupplyBean_HO73> getAllSupply();
}
