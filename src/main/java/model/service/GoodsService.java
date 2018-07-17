package model.service;

import java.sql.Blob;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;

import model.bean.FoundationBean_HO73;
import model.bean.GoodsBean_HO73;
import model.bean.GoodsImgBean;
import model.repository.FoundationDao;
import model.repository.GoodsDao;
import model.repository.GoodsImgDao;

@Service
@Scope("prototype")
public class GoodsService {

	@Autowired
    GoodsDao gdao;
	@Autowired
	FoundationDao fdao;
	@Autowired
	GoodsImgDao gidao;	
	@Autowired
	Gson gson;
    
	public GoodsService() {
		
	}
	
	@Transactional
	public GoodsBean_HO73 getOneGoods(int goodsUid) {
		return gdao.getOneGoods(goodsUid);
	}
	
	@Transactional
	public String getOneGoods2String(Integer goodsUid) {
		return gson.toJson(getOneGoods(goodsUid));		
	}

	@Transactional
	public List<GoodsBean_HO73> getAllGoods() {
		return gdao.getAllGoods();
	}

	@Transactional
	public String getAllGoods2String() {			
		return gson.toJson(getAllGoods());
	}

	@Transactional
	public int update(GoodsBean_HO73 bean) {
		return gdao.update(bean);
	}


	@Transactional
	public int delete(int no) {
		return gdao.delete(no);
	}

	@Transactional
	public int save(GoodsBean_HO73 bean) {
		return gdao.save(bean);
	}

	@Transactional
	public GoodsBean_HO73 createOneGoods(String goodsName, String goodsArticle, String goodsIntro, Integer goodsPrice, String goodsImgFileName, 
			Integer goodsStock, String funIdCard, Integer goodsView, Timestamp insertDate, Blob goodsImg, List<Blob> goodsImgLsit) {
		GoodsBean_HO73 gb = null;
		FoundationBean_HO73 fb = fdao.getOneFoundation(funIdCard); 
		gb = new GoodsBean_HO73(goodsName, goodsIntro, goodsArticle, goodsStock, goodsPrice, goodsImgFileName, goodsView, insertDate, goodsImg, fb);
		gdao.save(gb);
		for(Blob blob:goodsImgLsit) {
			GoodsImgBean gib = new GoodsImgBean(gb ,blob);
			gidao.save(gib);
		}
		return gb;
	}
	
	@Transactional
	public String createOneGoods2String(String goodsName, String goodsArticle, String goodsIntro, Integer goodsPrice, String goodsImgFileName, 
			Integer goodsStock, String funIdCard, Integer goodsView, Timestamp insertDate, Blob goodsImg, List<Blob> goodsImgLsit) {
		return gson.toJson(createOneGoods(goodsName, goodsArticle, goodsIntro, goodsPrice, goodsImgFileName, goodsStock, funIdCard, goodsView, insertDate,
				goodsImg, goodsImgLsit));
	}
	
	@Transactional
	public GoodsImgBean getOneGoodsImg(int goodsImgUid) {
		return gidao.getOneGoodsImg(goodsImgUid);
	}
	
	@Transactional
	public List<GoodsImgBean> getOneGoodsAllImg(int goodsUid) {
		return gidao.getOneGoodsAllImg(goodsUid);
	}
	
	@Transactional
	public String getOneGoodsAllImg2String(int goodsUid) {
		return gson.toJson(getOneGoodsAllImg(goodsUid));
	}
}
