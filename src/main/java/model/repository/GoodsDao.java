package model.repository;

import java.util.List;

import model.bean.GoodsBean_HO73;

public interface GoodsDao {
	void save(GoodsBean_HO73 gb);
	GoodsBean_HO73 getOneGoods(int goodsUid);
	List<GoodsBean_HO73> getAllGoods();
	int update(GoodsBean_HO73 gb);
	int delete(int goodsUid);
}
