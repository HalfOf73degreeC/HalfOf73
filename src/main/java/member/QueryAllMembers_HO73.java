package member;

import java.io.IOException;
import java.util.List;

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

@WebServlet("/member/queryAllMembers_HO73.do")
public class QueryAllMembers_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		MemberService memberService = ctx.getBean(MemberService.class);
//		MemberDAO rs = new MemberDAO();
		
		List<MemberBean_HO73> list = memberService.getAllMembers();
		request.setAttribute("AllMembers", list);
		RequestDispatcher rd = request.getRequestDispatcher("/member/showAllMembers_HO73.jsp");
		rd.forward(request, response);
		return;
	}
}
