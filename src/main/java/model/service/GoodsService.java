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
import model.repository.FoundationDao;
import model.repository.GoodsDao;

@Service
@Scope("prototype")
public class GoodsService {

	@Autowired
    GoodsDao gdao;
	@Autowired
	FoundationDao fdao;	
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
			Integer goodsStock, String funIdCard, Integer goodsView, Timestamp insertDate, Blob goodsImg, Blob goodsImg1, Blob goodsImg2, Blob goodsImg3
			, Blob goodsImg4, Blob goodsImg5) {
		GoodsBean_HO73 gb = null;
		FoundationBean_HO73 fb = fdao.getOneFoundation(funIdCard); 
		gb = new GoodsBean_HO73(goodsName, goodsIntro, goodsArticle, goodsStock, goodsPrice, goodsImgFileName, goodsView, insertDate, goodsImg, goodsImg1, 
				goodsImg2, goodsImg3, goodsImg4, goodsImg5,fb);
		gdao.save(gb);
		return gb;
	}
	
	@Transactional
	public String createOneGoods2String(String goodsName, String goodsArticle, String goodsIntro, Integer goodsPrice, String goodsImgFileName, 
			Integer goodsStock, String funIdCard, Integer goodsView, Timestamp insertDate, Blob goodsImg, Blob goodsImg1, Blob goodsImg2, Blob goodsImg3
			, Blob goodsImg4, Blob goodsImg5) {
		return gson.toJson(createOneGoods(goodsName, goodsArticle, goodsIntro, goodsPrice, goodsImgFileName, goodsStock, funIdCard, goodsView, insertDate,
				goodsImg, goodsImg1, goodsImg2, goodsImg3, goodsImg4, goodsImg5));
	}
}
