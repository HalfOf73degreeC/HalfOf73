package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.MemberBean_HO73;
import model.service.MemberService;

@WebServlet("/member/queryOneMembers_HO73.do")
public class QueryOneMembers_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		MemberService memberService = ctx.getBean(MemberService.class);
//		MemberDAO rs = new MemberDAO();
		String memAccount = (String) request.getSession().getAttribute("memAccount");
//		MemberBean_HO73 mb = rs.getOneMember(memAccount);
		MemberBean_HO73 mb = memberService.getOneMember(memAccount);
		request.setAttribute("memberBean", mb);
		RequestDispatcher rd = request.getRequestDispatcher("/member/memberZone.jsp");
		rd.forward(request, response);
		return;
	}
}
