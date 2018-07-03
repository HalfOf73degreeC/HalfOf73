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

import model.bean.SupplyBean_HO73;
import model.service.SupplyService;


@WebServlet("/supply/showPicture.do")
public class RetrievePictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer supUid = Integer.parseInt(request.getParameter("supUid"));
		OutputStream os = null;
		InputStream is = null;
		String fileName = null;
		try {
			WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
			SupplyService supplyService= ctx.getBean(SupplyService.class);
			SupplyBean_HO73 sb = supplyService.getOneSupply(supUid);
			System.out.println(sb);
			is = sb.getSupImg().getBinaryStream();
			// 由圖片檔的檔名來得到檔案的MIME型態
			fileName = sb.getSupImgFileName();
			String mimeType = getServletContext().getMimeType(fileName);
			// 設定輸出資料的MIME型態
			response.setContentType(mimeType);
			// 取得能寫出非文字資料的OutputStream物件
						
			// 如果圖片的來源有問題，就送回預設圖片(/images/NoImage.jpg)	
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
