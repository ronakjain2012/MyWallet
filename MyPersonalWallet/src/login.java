import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.*;

public class login extends HttpServlet{
	private static final long serialVersionUID = 1L;
	String userName=null,userPassword=null;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		PrintWriter pr = res.getWriter();
				try {
					userName = req.getParameter("userName");
					userPassword = req.getParameter("userPassword");
					if(Auth.user_checking(userName, userPassword)){
						HttpSession session = req.getSession();
						session.setAttribute("name", userName);
						session.setAttribute("password", userPassword);
						((HttpServletResponse) res).sendRedirect("home.jsp");
					}
					else
					{
						pr.println("<script> alret(\"Wrong UserName , Password Please check and re-try ! \"); </script>");
						res.sendRedirect("index.jsp");
					}
				} catch (Exception e) {
					res.sendRedirect("sqlError.jsp");
					e.printStackTrace();
				}
		pr.close();
	}
}
