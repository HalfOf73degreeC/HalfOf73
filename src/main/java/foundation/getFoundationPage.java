package foundation;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.google.gson.Gson;

import model.bean.FoundationBean_HO73;
<<<<<<< HEAD
<<<<<<< HEAD
=======
import model.bean.ToGson;
import model.repository.FoundationDao;
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
=======
import model.bean.ToGson;
import model.repository.FoundationDao;
>>>>>>> 9a2434799cd297e4c897a48d16f1229d11d5aa7d
import model.repository.impl.FoundationDaoImpl;


@WebServlet("/foundation/getFoundationPage")
public class getFoundationPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		FoundationDao foundationDao = ctx.getBean(FoundationDao.class);
		List<FoundationBean_HO73> list = foundationDao.getAllFoundation();
		AnnotationConfigApplicationContext gctx = new AnnotationConfigApplicationContext();
		gctx.register(ToGson.class);
		gctx.refresh();
		Gson gson = ctx.getBean(Gson.class);		
		String gString = gson.toJson(list); 
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
