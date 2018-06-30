package member;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.gson.Gson;

import model.bean.MemberBean_HO73;
import model.service.MemberService;


@WebServlet("/member/oauth2callback")
public class Oauth2CallbackServlet  extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	private GoogleAuthorizationCodeFlow flow;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//判斷是否有登入google Account，有登入才能取得使用者資料
		if (request.getSession().getAttribute("state") == null
		        || !request.getParameter("state").equals((String) request.getSession().getAttribute("state"))) {
					response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
					response.sendRedirect("../index.jsp");
		      return;
		    }
		request.getSession().removeAttribute("state"); 
		
		flow = new GoogleAuthorizationCodeFlow.Builder(
				GoogleInitData.HTTP_TRANSPORT,
				GoogleInitData.JSON_FACTORY,
				GoogleInitData.CLIENT_ID,
				GoogleInitData.CLIENT_SECRET,
				GoogleInitData.SCOPE).build();
		
		final TokenResponse tokenResponse =
		        flow.newTokenRequest(request.getParameter("code"))
		        	.setRedirectUri(GoogleInitData.CALLBACK_URI)
		            .execute();
		request.getSession().setAttribute("token", tokenResponse.toString());
//		System.out.println(tokenResponse.toString());
		final Credential credential = flow.createAndStoreCredential(tokenResponse, null);
	    final HttpRequestFactory requestFactory = GoogleInitData.HTTP_TRANSPORT.createRequestFactory(credential);

	    final GenericUrl url = new GenericUrl(GoogleInitData.USER_INFO_URL);      // Make an authenticated request.
	    final HttpRequest req = requestFactory.buildGetRequest(url);
	    req.getHeaders().setContentType("application/json");

	    //JSON轉為String
	    final String jsonIdentity = req.execute().parseAsString();
	    Gson gson = new Gson();
	    GoogleBean_HO73 gbj = gson.fromJson(jsonIdentity, GoogleBean_HO73.class);
	    // From this map, extract the relevant profile info and store it in the session.
//	    request.getSession().setAttribute("memAccount", gbj.getId());
//	    request.getSession().setAttribute("memName", userIdResult.get("name"));
//	    request.getSession().setAttribute("memEmail", userIdResult.get("email"));
//	    request.getSession().setAttribute("memPicUrl", userIdResult.get("picture"));


	    
	    //取得以下四個欄位值，存至資料庫
	    String memAccount = gbj.getId();
	    String memName = gbj.getName();
	    String memEmail = gbj.getEmail();
	    String memPicUrl = gbj.getPicture();
	    
	    WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		MemberService memberService = ctx.getBean(MemberService.class);
		System.out.println(memAccount);
		MemberBean_HO73 mb = memberService.getOneMember(memAccount);
		System.out.println("mb="+mb);
		if (mb.getMemAccount() == null) {
				mb.setMemAccount(memAccount);
				mb.setMemName(memName);
				mb.setMemEmail(memEmail);
				mb.setMemPicUrl(memPicUrl);
				memberService.save(mb);
				System.out.println("資料新增成功");
		}
		request.getSession().setAttribute("memberBean", mb);
//	    response.sendRedirect("../index.jsp");
	    response.getWriter().print("<script type='text/javascript'>history.back()</script>");
	}

}
