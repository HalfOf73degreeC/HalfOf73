package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "logout", value = "/member/logout")
@SuppressWarnings("serial")
public class LogoutServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException {
    // you can also make an authenticated request to logout, but here we choose to
    // simply delete the session variables for simplicity
    HttpSession session =  request.getSession(false);
    if (session != null) {
      session.invalidate();
    }
    // rebuild session
    request.getSession();
    response.sendRedirect("../index.jsp");
  }
}