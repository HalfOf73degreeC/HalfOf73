package member;

import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;

@WebServlet("/member/login")
public class LoginServlet extends HttpServlet {
	
	private GoogleAuthorizationCodeFlow flow;

	  @Override
	  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	      throws IOException, ServletException {
		  String cp = req.getParameter("Page");
		  System.out.println("測試: "+cp);
		req.getSession().setAttribute("backPage",cp);
	    String state = new BigInteger(130, new SecureRandom()).toString(32);  // prevent request forgery
	    req.getSession().setAttribute("state", state);

	    flow = new GoogleAuthorizationCodeFlow.Builder(
				GoogleInitData.HTTP_TRANSPORT,
				GoogleInitData.JSON_FACTORY,
				GoogleInitData.CLIENT_ID,
				GoogleInitData.CLIENT_SECRET,
				GoogleInitData.SCOPE).build();

	    // Callback url should be the one registered in Google Developers Console
	    String url =
	        flow.newAuthorizationUrl()
	            .setRedirectUri(GoogleInitData.CALLBACK_URI)
	            .setState(state)            // Prevent request forgery
	            .build();
	    resp.sendRedirect(url);
	  }
	}
