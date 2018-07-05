package model.repository;

import java.util.List;

import model.bean.SupplyBean_HO73;

public interface SupplyDao {

	int save(SupplyBean_HO73 sb);
	List<SupplyBean_HO73> getAllSupply();
	int update(SupplyBean_HO73 sb);
	int delete(int supUid);
	SupplyBean_HO73 getOneSupply(int supUid);
}
