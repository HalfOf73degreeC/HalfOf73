package foundation;

import java.io.BufferedReader;
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
import com.google.gson.JsonObject;

import model.bean.FoundationBean_HO73;
import model.bean.ToGson;
import model.repository.FoundationDao;
import model.repository.impl.FoundationDaoImpl;
import model.service.foundationService;


@WebServlet("/foundation/getFoundationPage4App")
public class getFoundationPage4App extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
//		
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html;charset=utf-8");
//		Gson gson = new Gson();
//		BufferedReader br = request.getReader();
//		StringBuffer jsonIn = new StringBuffer();
//		String line = null;
//		while ((line = br.readLine()) != null) {
//			jsonIn.append(line);
//		}
//		System.out.println("input: " + jsonIn);
//
//		JsonObject jsonObject = gson.fromJson(jsonIn.toString(), JsonObject.class);
//		String action = jsonObject.get("action").getAsString();
//		if (action.equals("getFoundation")) {
//			System.out.println("getFoundation-----------------------");
//		}
			
		//..........
		foundationService fs = ctx.getBean(foundationService.class);			
		String gString = fs.getAllFoundations2String();
		response.setContentType("application/json; charset=UTF8");
		try (PrintWriter out = response.getWriter();) {
			out.println(gString);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");WebApplicationContext ctx = 
				WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		Gson gson = new Gson();
		BufferedReader br = request.getReader();
		StringBuffer jsonIn = new StringBuffer();
		String line = null;
		while ((line = br.readLine()) != null) {
			jsonIn.append(line);
		}
		System.out.println("input: " + jsonIn);

		JsonObject jsonObject = gson.fromJson(jsonIn.toString(), JsonObject.class);
		String action = jsonObject.get("action").getAsString();
		if (action.equals("getFoundation")) {
			System.out.println("getFoundation-----------------------");
			foundationService fs = ctx.getBean(foundationService.class);	
			
			String gString = fs.getAllFoundations2String();
			System.out.println("gString: " + gString);
			response.setContentType("application/json; charset=UTF8");
			try (PrintWriter out = response.getWriter();) {
				out.println(gString);
			}
		}

	}

}
