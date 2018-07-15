package mail;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/mail/sendMail")
public class JavaMailMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String funIdcard = request.getParameter("funIdcard");
		String funEmail = request.getParameter("funEmail");
		String funName = request.getParameter("funName");
		
		
		String from = "java008.project@gmail.com";
		List<String> to = Arrays.asList(new String[] { funEmail, "java008.project@gmail.com" });
		List<String> cc = Arrays.asList(new String[] { "java008.project@gmail.com", "java008.project@gmail.com" });
		List<String> bcc = Arrays.asList(new String[] { "java008.project@gmail.com" });
		String subject = "歡迎加入Half Of 73°C會員";
		String text = "<h1>謝謝您加入Half Of 73&#176;C會員</h1>" + 
					  "<h2>您可以按下列連結體驗最新的服務</h2>" + 
					  "<a href='http://tw.yahoo.com'>yahoo</a><br>"+
					  "<a href='http://www.google.com'>google</a><br>"+
					  "<br><br><font color='blue'> 再次感謝, </font><br>Half Of 73&#176;C工作小組敬上";
		List<String> attachment = Arrays.asList(new String[] {
				// "D:\\images\\photo02.jpg"
				// "D:\\_Java\\fs.jpg",
				// "D:\\_Java\\autumn_fs.jpg",
		});
		;
		JavaMailUtil util = new JavaMailUtil(from, to, cc, bcc, subject, text, attachment);
		if (util.send()) {
			System.out.println("發信成功");
		} else {
			System.out.println("發信失敗");
		}
		
		response.sendRedirect("/HalfOf73/foundation/eachFoundationPage.do?funIdcard="+ funIdcard);
		return;
	}
}
