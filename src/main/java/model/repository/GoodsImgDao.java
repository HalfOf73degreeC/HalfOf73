package model.repository;

import java.util.List;

import model.bean.GoodsBean_HO73;
import model.bean.GoodsImgBean;

public interface GoodsImgDao {
	int save(GoodsImgBean gib);
	List<GoodsImgBean> getOneGoodsAllImg(int goodsUid);
	int update(GoodsImgBean gib);
	int delete(int goodsImgUid);
	GoodsImgBean getOneGoodsImg(int goodsImgUid);
}
