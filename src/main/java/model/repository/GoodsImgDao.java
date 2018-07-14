package model.repository;

import java.util.List;

import model.bean.GoodsBean_HO73;
import model.bean.GoodsImgBean;

public interface GoodsImgDao {
	int save(GoodsImgBean gib);
	List<GoodsImgBean> getAllGoods();
	int update(GoodsImgBean gib);
	int delete(int goodsImgUid);
	GoodsImgBean getOneGoods(int goodsImgUid);
}
