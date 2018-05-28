package model.repository;

import java.util.List;

import model.GoodsBean_HO73;

public interface GoodsDao {
	void save(GoodsBean_HO73 gb);
	GoodsBean_HO73 getGoodsBean(int goodsUid);
	List<GoodsBean_HO73> getAllGoods();
	int update(GoodsBean_HO73 gb);
	int updateViews(int goodsViews);
	int delete(int goodsUid);
}
