package supply;

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

import model.bean.SupplyBean_HO73;
import model.service.SupplyService;

@WebServlet("/supply/queryAllSupply_HO73.do")
public class QueryAllSupply_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		SupplyService service = ctx.getBean(SupplyService.class);
		List<SupplyBean_HO73> allSupply = service.getAllSupply();
		System.out.println(allSupply);
		request.setAttribute("AllSupply", allSupply);
		RequestDispatcher rd = request.getRequestDispatcher("supply.jsp");
		rd.forward(request, response);
		return;
	}
}
