package foundation;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
<<<<<<< HEAD
=======
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
import model.bean.FoundationBean_HO73;
import model.repository.FoundationDao;
import model.repository.impl.FoundationDaoImpl;

@WebServlet("/foundation/queryAllFoundations_HO73.do")
public class QueryAllFoundations_HO73 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		FoundationDao foundationDao = ctx.getBean(FoundationDao.class);
		Collection<FoundationBean_HO73> coll = foundationDao.getAllFoundation();
		request.setAttribute("AllFoundations", coll);
		RequestDispatcher rd = request.getRequestDispatcher("/foundation/showAllfoundations_HO73.jsp");
		rd.forward(request, response);
		return;
	}
}
