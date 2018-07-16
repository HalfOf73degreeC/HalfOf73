package model.repository;

import java.util.List;

import model.bean.SupplyImgBean;

public interface SupplyImgDao {
	int save(SupplyImgBean gib);
	List<SupplyImgBean> getAllSupply();
	int update(SupplyImgBean gib);
	int delete(int supImgUid);
	SupplyImgBean getOneSupply(int supImgUid);
}
