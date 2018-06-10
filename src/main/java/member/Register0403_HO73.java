package member;

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

import model.MemberBean_HO73;

@WebServlet("/member/register0403_HO73.do")
public class Register0403_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		// 準備存放錯誤訊息的 List 物件
		HttpSession session = request.getSession();
		Map<String, String> errorMsg = new HashMap<>();
		request.setAttribute("ErrorMsg", errorMsg);
		// 1. 讀取使用者輸入資料
		MemberBean_HO73 mb = (MemberBean_HO73) request.getSession().getAttribute("memberBean");
		String memName = request.getParameter("memName");
		String memIdcard = request.getParameter("memIdcard");
		String memEmail = request.getParameter("memEmail");
		String memEmail2 = request.getParameter("memEmail2");
		String memGender = request.getParameter("memGender");
		String memBirthday_String = request.getParameter("memBirthday");
		Date memBirthday=null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			memBirthday = sdf.parse(memBirthday_String);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		String memTel = request.getParameter("memTel");
		String memMobile = request.getParameter("memMobile");
		String memAddress = request.getParameter("memAddress");
		String memType_String = request.getParameter("memType");
		if (memType_String != null) {
			Integer memType = Integer.parseInt(memType_String);
		}
		String memFoundation_String = request.getParameter("memFoundation");
		if (memFoundation_String != null) {
			Integer memFoundation = Integer.parseInt(memFoundation_String);
		}
		String memWhySupply = request.getParameter("memWhySupply");
		// Timestamp insertDate = Timestamp(System.currentTimeMillis());
		String memStatus_String = request.getParameter("memStatus");
		if (memStatus_String != null) {
			Integer memStatus = Integer.parseInt(memStatus_String);
		}
		String memPicUrl = request.getParameter("memPicUrl");

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
		// 4. 進行 Business Logic 運算
//		MemberBean_HO73 mb = new MemberBean_HO73();
//		mb.setMemAccount(memAccount);
		mb.setMemIdcard(memIdcard);
		mb.setMemName(memName);
		mb.setMemEmail2(memEmail2);
		mb.setMemGender(memGender);
		mb.setMemBirthday(memBirthday);
		mb.setMemMobile(memMobile);
		mb.setMemAddress(memAddress);
		mb.setMemWhySupply(memWhySupply);
		
//		try {
			MemberDAO mfio = new MemberDAO();
			mfio.update_easy(mb);
			MemberDAO rs = new MemberDAO();
			mb = rs.getOneMember(mb.getMemAccount());
			session.setAttribute("memberBean", mb);
			System.out.println("準備更新, MemberBean_HO73=" + mb);
			request.getSession().setAttribute("memAccount", mb.getMemAccount());
			response.sendRedirect("memberZone.jsp");
			return;
//		} catch (SQLException e) {
//			if (e.getMessage().indexOf("重複的索引鍵") != -1 || e.getMessage().indexOf("Duplicate entry") != -1) {
//				errorMsg.put("memAccount", "此帳號已被註冊");
//			} else {
//				errorMsg.put("exception", "資料庫存取錯誤:" + e.getMessage());
//			}
//			RequestDispatcher rd = request.getRequestDispatcher("memberZone.jsp");
//			rd.forward(request, response);
//			return;
//		}
	}
}