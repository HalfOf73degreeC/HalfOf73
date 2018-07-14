package foundationView;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import _00.utils.GlobalService;
import _00.utils.SystemUtils2018;
import model.bean.MemberBean_HO73;
import model.service.GoodsService;

/**
 * Servlet implementation class getMemberPage
 */
@MultipartConfig(location = "", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 500, maxRequestSize = 1024
* 1024 * 500 * 5)
@WebServlet("/foundationView/addOneGoods")
public class addOneGoods extends HttpServlet {

	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberBean_HO73 mb = (MemberBean_HO73) request.getSession().getAttribute("memberBean");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		GoodsService gs = ctx.getBean(GoodsService.class);
		
		String goodsName = request.getParameter("goodsName");
		Integer goodsStock = Integer.parseInt(request.getParameter("goodsStock"));
		Integer goodsPrice = Integer.parseInt(request.getParameter("goodsPrice"));
		String goodsArticle = request.getParameter("goodsArticle");
		String goodsIntro = request.getParameter("goodsIntro");
		Timestamp insertDate = new Timestamp(System.currentTimeMillis());
		Integer goodsView=0;
		Blob goodsImg = null;
		Blob goodsImg1 = null;
		Blob goodsImg2 = null;
		Blob goodsImg3 = null;
		Blob goodsImg4 = null;
		Blob goodsImg5 = null;
		String goodsImgFileName=null;
		long sizeInBytes = 0;
		InputStream is = null;
			
		Collection<Part> parts = request.getParts();
		GlobalService.exploreParts(parts, request);
		try {
			if (parts != null) { // 如果這是一個上傳資料的表單
				for (Part p : parts) {
					String fldName = p.getName();	
//					System.out.println("fldName=" + fldName);
					if (p.getContentType() != null) {   // 表示 p 為一般欄位而非上傳的表單
						sizeInBytes = p.getSize();
						is = p.getInputStream();
						if (fldName.equals("goodsImg")) {
							goodsImg = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} else if (fldName.equals("goodsImg1")) {
							goodsImg1 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} else if (fldName.equals("goodsImg2")) {
							goodsImg2 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} else if (fldName.equals("goodsImg3")) {
							goodsImg3 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} else if (fldName.equals("goodsImg4")) {
							goodsImg4 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} else if (fldName.equals("goodsImg5")) {
							goodsImg5 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} 
					} 
				}
			} 
		}catch(Exception e) {
			e.printStackTrace();
		}
		List<Blob> goodsImgLsit = new ArrayList<>();
		if(goodsImg1 !=null) {
			goodsImgLsit.add(goodsImg1);
		}
		if(goodsImg2 !=null) {
			goodsImgLsit.add(goodsImg2);
		}
		if(goodsImg3 !=null) {
			goodsImgLsit.add(goodsImg3);
		}
		if(goodsImg4 !=null) {
			goodsImgLsit.add(goodsImg4);
		}
		if(goodsImg5 !=null) {
			goodsImgLsit.add(goodsImg5);
		}
		String funIdCard = mb.getFoundationBean_HO73().getFunIdcard();	
		String gString = gs.createOneGoods2String(goodsName, goodsArticle, goodsIntro, goodsPrice, goodsImgFileName, goodsStock, funIdCard, 
				goodsView, insertDate, goodsImg, goodsImgLsit);
//		System.out.println("gString = "+ gString);
		response.setContentType("application/json; charset=UTF8");			
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}
}
