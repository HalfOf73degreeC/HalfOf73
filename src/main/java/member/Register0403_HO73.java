package member;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import _00.utils.GlobalService;
import _00.utils.SystemUtils2018;
import model.bean.MemberBean_HO73;
import model.service.MemberService;

@MultipartConfig(location = "", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 500, maxRequestSize = 1024
* 1024 * 500 * 5)
@WebServlet("/member/register0403_HO73.do")
public class Register0403_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		// 準備存放錯誤訊息的 List 物件
		HttpSession session = request.getSession();
		Map<String, String> errorMsg = new HashMap<>();
		Map<String, String> successMsgs = new HashMap<String, String>();
		request.setAttribute("ErrorMsg", errorMsg);
		session.setAttribute("successMsg", successMsgs);
		
		try {

			MemberBean_HO73 mb = (MemberBean_HO73) request.getSession().getAttribute("memberBean");
			String memName = "";
			String memIdcard = "";
			String memEmail = "";
			String memEmail2 = "";
			String memGender = "";
			String memBirthday=null;
			String memTel = "";
			String memMobile = "";
			String memAddress = "";
			String memType = "";
			String memFoundation = "";
			String memWhySupply = "";
			String memStatus = "";
			String memPicUrl = "";
			Blob memPhoto;
			String fileName = "";
			long sizeInBytes = 0;
			InputStream is = null;
			

			// request.getParts()方法傳回一個由javax.servlet.http.Part物件所組成的Collection
			// javax.servlet.http.Part: 代表上傳到Server的資料，可以是正常的表單資料(form data)，
			// 也可以上傳的檔案。
			// Part介面可以:
			// 1. 傳回欄位的名稱(<input>的name屬性)、大小、ContentType
			// 2. 每個Part的Header
			// 3. 刪除Part
			// 4. 將Part寫入硬碟
			Collection<Part> parts = request.getParts();
			GlobalService.exploreParts(parts, request);
			if (parts != null) { // 如果這是一個上傳資料的表單
				for (Part p : parts) {
					String fldName = p.getName();
//					System.out.println("fldName=" + fldName);
					String value = request.getParameter(fldName);
					if (p.getContentType() == null) {   // 表示 p 為一般欄位而非上傳的表單
						if (fldName.equals("memIdcard")) {
							memIdcard = value;
							mb.setMemIdcard(memIdcard);
						} else if (fldName.equals("memName")) {
							memName = value;
							mb.setMemName(memName);
						} else if (fldName.equals("memEmail")) {
							memEmail = value;
							mb.setMemEmail2(memEmail);
						} else if (fldName.equals("memEmail2")) {
							memEmail2 = value;
							mb.setMemEmail2(memEmail2);
						} else if (fldName.equals("memGender")) {
							memGender = value;
							mb.setMemGender(memGender);
						} else if (fldName.equals("memBirthday")) {
							memBirthday = value;
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
							Date memBirthdayDate = sdf.parse(memBirthday);
							java.sql.Date jqd=null;
							System.out.println(memBirthdayDate);
							if(memBirthdayDate != null)
							jqd = new java.sql.Date(memBirthdayDate.getTime());
							mb.setMemBirthday(jqd);
						} else if (fldName.equals("memMobile")) {
							memMobile = value;
							mb.setMemMobile(memMobile);
						} else if (fldName.equals("memAddress")) {
							memAddress = value;
							mb.setMemAddress(memAddress);
						} else if (fldName.equals("memType")) {
							memType = value;
							Integer memTypeInt = Integer.parseInt(memType);
							mb.setMemType(memTypeInt);
						} else if (fldName.equals("memFoundation")) {
							memFoundation = value;
							Integer memFoundationInt = Integer.parseInt(memFoundation);
							mb.setMemType(memFoundationInt);
						} else if (fldName.equals("memWhySupply")) {
							memWhySupply = value;
							mb.setMemWhySupply(memWhySupply);
						} else if (fldName.equals("memStatus")) {
							memStatus = value;
							Integer memStatusInt = Integer.parseInt(memStatus);
							mb.setMemType(memStatusInt);
						} else if (fldName.equals("memPicUrl")) {
							memPicUrl = value;
							mb.setMemPicUrl(memPicUrl);
						}   
					} else {  // 表示此份資料是上傳的檔案
						fileName = GlobalService.getFileName(p); // 由變數 p 中取出檔案名稱
						fileName = GlobalService.adjustFileName(fileName, GlobalService.IMAGE_FILENAME_LENGTH);
						mb.setFileName(fileName);
						if (fileName != null && fileName.trim().length() > 0) {
							sizeInBytes = p.getSize();
							is = p.getInputStream();
							memPhoto = SystemUtils2018.fileToBlob(is, sizeInBytes);
							mb.setMemPhoto(memPhoto);
						} else {
							errorMsg.put("errPicture", "必須挑選圖片檔");
						}
					}
				}
			} else {
				errorMsg.put("errTitle", "此表單不是上傳檔案的表單");
			}
			// 如果輸入資料有錯誤
			if (!errorMsg.isEmpty()) {
				// 轉交給原輸入資料的網頁來顯示錯誤訊息
				System.out.println(errorMsg);
				RequestDispatcher rd = request.getRequestDispatcher("memberZone.jsp");
				rd.forward(request, response);
				return;
			}
			
			WebApplicationContext ctx = 
					WebApplicationContextUtils.getWebApplicationContext(getServletContext());
			MemberService memberService = ctx.getBean(MemberService.class);
			memberService.update(mb);
			System.out.println("mb.getMemAccount()="+mb.getMemAccount());
			mb = memberService.getOneMember(mb.getMemAccount());
			session.setAttribute("memberBean", mb);
			System.out.println("準備更新, MemberBean_HO73=" + mb);
			request.getSession().setAttribute("memAccount", mb.getMemAccount());
			successMsgs.put("success", "資料新增成功");
            // 新增成功，通知瀏覽器對新網址發出請求
			response.sendRedirect(response.encodeRedirectURL("memberZone.jsp"));
			return;
		} catch (Exception e) {
			e.printStackTrace(); 
			errorMsg.put("Exception", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("memberZone.jsp");
			rd.forward(request, response);
		}
	}

	public String getFileName(final Part part) {
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}
		
}