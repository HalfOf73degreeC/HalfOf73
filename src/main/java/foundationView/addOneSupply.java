package foundationView;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Timestamp;
import java.util.Collection;

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
import model.service.SupplyService;

/**
 * Servlet implementation class getMemberPage
 */
@MultipartConfig(location = "", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 500, maxRequestSize = 1024
* 1024 * 500 * 5)
@WebServlet("/foundationView/addOneSupply")
public class addOneSupply extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberBean_HO73 mb = (MemberBean_HO73) request.getSession().getAttribute("memberBean");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		SupplyService ss = ctx.getBean(SupplyService.class);
		
		String supName = request.getParameter("supName");
		Integer supNeedStock = Integer.parseInt(request.getParameter("supNeedStock"));
		String supArticle = request.getParameter("supArticle");
		String supIntro = request.getParameter("supIntro");
		Timestamp insertDate = new Timestamp(System.currentTimeMillis());
		Integer supView=0;
		Blob supImg = null;
		Blob supImg1 = null;
		Blob supImg2 = null;
		Blob supImg3 = null;
		Blob supImg4 = null;
		Blob supImg5 = null;
		String supImgFileName=null;
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
						if (fldName.equals("supImg1")) {
							supImg = SystemUtils2018.fileToBlob(is, sizeInBytes);
							supImg1 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} else if (fldName.equals("supImg2")) {
							supImg2 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} else if (fldName.equals("supImg3")) {
							supImg3 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} else if (fldName.equals("supImg4")) {
							supImg4 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						} else if (fldName.equals("supImg5")) {
							supImg5 = SystemUtils2018.fileToBlob(is, sizeInBytes);
						}
					} 
				}
			} 
		}catch(Exception e) {
			e.printStackTrace();
		}
		String funIdCard = mb.getFoundationBean_HO73().getFunIdcard();	
		System.out.println("funIdCard= "+funIdCard);
		String gString = ss.createOneSupply2String(supName, supArticle, supIntro, supImgFileName, supNeedStock, funIdCard, supView, insertDate, supImg, supImg1, supImg2, supImg3, supImg4, supImg5);
		response.setContentType("application/json; charset=UTF8");			
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}
}
