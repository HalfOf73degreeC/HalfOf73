package supply;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.SupplyImgBean;
import model.service.SupplyService;


@WebServlet("/supply/showMultiplePicture.do")
public class RetrieveMultiplePictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer supplyImgUid = Integer.parseInt(request.getParameter("supplyImgUid"));
		OutputStream os = null;
		InputStream is = null;
		try {
			WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
			SupplyService supplyService= ctx.getBean(SupplyService.class);
			SupplyImgBean sib = supplyService.getOneSupplyImg(supplyImgUid);
			System.out.println(sib);
			is = sib.getSupImg().getBinaryStream();
			if (is == null) {
				is = getServletContext().getResourceAsStream(
							"/images/NoImage.png");
			}
			os = response.getOutputStream();	
			// 由InputStream讀取位元組，然後由OutputStream寫出
			int len = 0;
			byte[] bytes = new byte[8192];
			while ((len = is.read(bytes)) != -1) {
				os.write(bytes, 0, len);
			}
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("_00_init.util.RetrieveImageServlet#doGet()發生SQLException: " + ex.getMessage());
		} finally{
			is.close();
			os.close();
		}
	}
}
