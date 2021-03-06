package foundation;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.FoundationBean_HO73;
import model.bean.MemberBean_HO73;
import model.service.MemberService;
import model.service.foundationService;

@WebServlet("/foundation/registerFoundation_HO73.do")
public class RegisterFoundation_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		// 準備存放錯誤訊息的 List 物件
		HttpSession session = request.getSession();
		Map<String, String> errorMsg = new HashMap<>();
		request.setAttribute("ErrorMsg", errorMsg);
		// 1. 讀取使用者輸入資料
		String funAccount = request.getParameter("funAccount");
		//判斷基金會是否要更新(memType == '2')，若要更新，因為funIdcard, funName被鎖，另從資料庫直接取值傳回
		String funName = null;
		String funIdcard = null;
		MemberBean_HO73 mbh = (MemberBean_HO73) session.getAttribute("memberBean");
		
		int memType = mbh.getMemType();
		if(memType == 2){
			funName = mbh.getFoundationBean_HO73().getFunName();
			funIdcard = mbh.getFoundationBean_HO73().getFunIdcard();
		}else {
			funName = request.getParameter("funName");
			funIdcard = request.getParameter("funIdcard");
		}
		
		String funCeo = request.getParameter("funCeo");
		String funContact = request.getParameter("funContact");
		String funDomain = request.getParameter("funDomain");
		String funTel = request.getParameter("funTel");
		String funFax = request.getParameter("funFax");
		String funEmail = request.getParameter("funEmail");
		String funEmail2 = request.getParameter("funEmail2");
		String funAddress = request.getParameter("funAddress");
		String funFounder = request.getParameter("funFounder");
		String funCreateDate_String = request.getParameter("funCreateDate");
		Date funCreateDate=null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			funCreateDate = sdf.parse(funCreateDate_String);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String funAllowOrg = request.getParameter("funAllowOrg");
		String funIntent = request.getParameter("funIntent");
		String[] funArea = request.getParameterValues("funArea");
		String[] funServiceUser = request.getParameterValues("funServiceUser");
		String[] funService = request.getParameterValues("funService");
		String funArticle = request.getParameter("funArticle");
		String funImage = request.getParameter("funImage");
		//取得經緯度
		String String_funLat = request.getParameter("funLat");
		Double funLat = Double.parseDouble(String_funLat);
		String String_funLng = request.getParameter("funLng");
		Double funLng = Double.parseDouble(String_funLng);
		
		//更新會員資料將一般會員轉換為基金會會員
		int updateMemType = 2;
		String updateFunIdCard = funIdcard;
		System.out.println("updateFunIdCard="+updateFunIdCard);
		String updateMemAccount = funAccount;		
		// 2. 進行必要的資料轉換
		// int experience = 0;
		// try {
		// experience = Integer.parseInt(expericnceStr.trim());
		// } catch (NumberFormatException e) {
		// errorMsg.add("使用Java經驗格式錯誤，應該為整數");
		// }
		// 3. 檢查使用者輸入資料

//		if (memAccount == null || memAccount.trim().length() == 0) {
//			errorMsg.put("memAccount", "帳號必+須輸入");
//		} else if (memAccount.trim().length() < 6) {
//			errorMsg.put("memAccount", "長度必須大於6");
//		}
//		if (memName == null || memName.trim().length() == 0) {
//			errorMsg.put("memName", "姓名欄必須輸入");
//		}
//		if (memEmail == null || memEmail.trim().length() == 0) {
//			errorMsg.put("memEmail", "電子郵件欄必須輸入");
//		}
//		if (memPicUrl == null || memPicUrl.trim().length() == 0) {
//			errorMsg.put("memPicUrl", "PicUrl欄必須輸入");
//		}
//		if (!errorMsg.isEmpty()) {
//			RequestDispatcher rd = request.getRequestDispatcher("memberZone.jsp");
//			rd.forward(request, response);
//			return;
		
		
//		}
		java.sql.Date jqd=null;
		System.out.println(funCreateDate);
		if(funCreateDate != null)
		jqd = new java.sql.Date(funCreateDate.getTime());
		// 4. 進行 Business Logic 運算
		FoundationBean_HO73 fb = new FoundationBean_HO73();
		fb = new FoundationBean_HO73(funAccount, funName, funIdcard, funImage,
				funCeo, funContact, funTel, funFax, funDomain, funEmail, funEmail2, 
				funAddress, funFounder, jqd, funAllowOrg, funIntent, funArticle, funArea, funServiceUser,
				funService, funLat, funLng);
		foundationService fs = ctx.getBean(foundationService.class);

		MemberService ms = ctx.getBean(MemberService.class);
		if(mbh.getMemType() == 2) {
			fs.updateOneFoundation(fb, updateMemType, updateFunIdCard, updateMemAccount);
			System.out.println("getMemType() == 2");
		    mbh = ms.getOneMember(mbh.getMemAccount());
			request.getSession().setAttribute("memberBean", mbh);
			response.sendRedirect("/HalfOf73/foundation/eachFoundationPage.do?funIdcard="+ funIdcard);
			return;
		}else{
			fs.creatOneFoundation(fb, updateMemType, updateFunIdCard, updateMemAccount);
		    mbh = ms.getOneMember(mbh.getMemAccount());
		    System.out.println("mbh="+mbh);
			request.getSession().setAttribute("memberBean", mbh);
			System.out.println("================================================funIdcard:"+funIdcard+" funEmail: "+funEmail+" funName: "+funName);
			response.sendRedirect("/HalfOf73/mail/sendMail?funEmail="+funEmail+"&funIdcard="+funIdcard+"&funName="+funName);
		};
		

//將屬於forward()給顯示成功訊息的JSP網頁的相關程式碼改為response.sendRedirect(新網頁)的敘述。
//		response.sendRedirect("/HalfOf73/foundation/eachFoundationPage.do?funIdcard="+ funIdcard);
		System.out.println("準備更新, FoundationBean_HO73=" + fb);
//		return;
	}
	
	
}