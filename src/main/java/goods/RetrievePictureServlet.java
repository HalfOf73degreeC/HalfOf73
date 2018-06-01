package goods;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GoodsBean_HO73;
import model.repository.GoodsDao;
import model.repository.impl.GoodsDaoImpl;


@WebServlet("/goods/showPicture.do")
public class RetrievePictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer goodsUid = Integer.parseInt(request.getParameter("goodsUid"));
		int pid = 0;
		if (goodsUid != null) {
			try {
				pid = goodsUid;
			} catch(NumberFormatException ex) {
				;
			}
		}
		GoodsDao gdao = new GoodsDaoImpl();
		GoodsBean_HO73 bean = gdao.getOneGoods(pid);
		try(
				OutputStream os = response.getOutputStream();
				ByteArrayInputStream bais = new ByteArrayInputStream(bean.getGoodsImg());
		){
			byte[] b = new byte[819200];
			int len = 0;
			while ((len=bais.read(b)) != -1) {
				os.write(b, 0, len);
			}
		}
	}
}
