package foundation;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import model.FoundationBean_HO73;
import model.repository.impl.FoundationDaoImpl;


@WebServlet("/foundation/getFoundationPage")
public class getFoundationPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		FoundationDaoImpl fdao = new FoundationDaoImpl();
		List<FoundationBean_HO73> list = fdao.getAllFoundation();
		Gson gson = new Gson();
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
