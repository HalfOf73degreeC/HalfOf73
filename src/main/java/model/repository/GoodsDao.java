package model.repository;

import java.util.List;

import model.bean.GoodsBean_HO73;

public interface GoodsDao {
	int save(GoodsBean_HO73 gb);
	List<GoodsBean_HO73> getAllGoods();
	int update(GoodsBean_HO73 gb);
	int delete(int goodsUid);
	GoodsBean_HO73 getOneGoods(int goodsUid);
}
