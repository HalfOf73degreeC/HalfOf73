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

import model.FoundationBean_HO73;
import model.repository.FoundationDao;
import model.repository.impl.FoundationDaoImpl;

@WebServlet("/foundation/registerFoundation_HO73.do")
public class RegisterFoundation_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		// 準備存放錯誤訊息的 List 物件
		HttpSession session = request.getSession();
		Map<String, String> errorMsg = new HashMap<>();
		request.setAttribute("ErrorMsg", errorMsg);
		// 1. 讀取使用者輸入資料
		String funAccount = (String) request.getSession().getAttribute("memAccount");
		String funName = request.getParameter("funName");
		String funIdcard = request.getParameter("funIdcard");
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
		
		// 2. 進行必要的資料轉換
		// int experience = 0;
		// try {
		// experience = Integer.parseInt(expericnceStr.trim());
		// } catch (NumberFormatException e) {
		// errorMsg.add("使用Java經驗格式錯誤，應該為整數");
		// }
		// 3. 檢查使用者輸入資料
//		if (memAccount == null || memAccount.trim().length() == 0) {
//			errorMsg.put("memAccount", "帳號必須輸入");
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
		java.sql.Date jqd = new java.sql.Date(funCreateDate.getTime());
		// 4. 進行 Business Logic 運算
		FoundationBean_HO73 fb = new FoundationBean_HO73(funAccount, funName, funIdcard, funImage,
				funCeo, funContact, funTel, funFax, funDomain, funEmail, funEmail2, 
				funAddress, funFounder, jqd, funAllowOrg, funIntent, funArticle, funArea, funServiceUser,
				funService);
		
		
		FoundationDao fdao = new FoundationDaoImpl();
		fdao.saveOrUpdate(fb);
		fb = fdao.getOneFoundation(funAccount);
		System.out.println(fb.getFunAccount());
		session.setAttribute("foundationBean", fb);
		System.out.println("準備更新, FoundationBean_HO73=" + fb);
		response.sendRedirect("foundation_register.jsp");
		return;
	}
	
	
}