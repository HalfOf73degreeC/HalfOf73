package supply;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.SupplyBean_HO73;
import model.service.SupplyService;

@WebServlet("/supply/queryOneSupply_HO73.do")
public class QueryOneSupply_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer supUid = Integer.parseInt(request.getParameter("supUid"));
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		SupplyService service = ctx.getBean(SupplyService.class);
		SupplyBean_HO73 sb = service.getOneSupply(supUid);
		int viewsCount = sb.getViews();
		viewsCount ++;
		sb.setViews(viewsCount);
		request.setAttribute("supplyBean", sb);
		RequestDispatcher rd = request.getRequestDispatcher("supplyDetail.jsp");
		rd.forward(request, response);
		return;
	}
}
