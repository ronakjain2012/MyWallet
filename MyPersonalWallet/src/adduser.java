import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class adduser extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		PrintWriter out = res.getWriter();
		String userN = req.getParameter("UserNameAdd");
		String userP = req.getParameter("UserPassAdd");
		String userP1 = req.getParameter("UserPassAdd1");
		HttpSession session = req.getSession();
		if(session.getAttribute("name")!=null) {
			session.invalidate();
		}
		if(userP.equals(userP1) && !userN.isEmpty()) {
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
			 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
			 	String sql = "insert into users(userName,userPIN,userType) values(?,?,?)";
			 	PreparedStatement ps = con.prepareStatement(sql);
			 	ps.setString(1, userN);
			 	ps.setString(2, userP);
			 	ps.setString(3, "admin");
			 	int a = ps.executeUpdate();
			 	if(a>0) {
			 		sql = "CREATE TABLE "+userN+"_account_personal(t_date date,t_id int(20) NOT NULL AUTO_INCREMENT,method varchar(10),debit float,credit float,category varchar(50) ,paid_to varchar(30),paid_by varchar(30),t_desc varchar(255),PRIMARY KEY (t_id),FOREIGN KEY (category) REFERENCES categ(category))";
			 		ps = con.prepareStatement(sql);
			 		ps.executeUpdate();
			 		//week View
			 		sql = "CREATE VIEW "+userN+"_weekB AS select * from "+userN+"_account_personal where t_date between date_sub(now(),INTERVAL 1 WEEK) and now();";
			 		ps = con.prepareStatement(sql);
			 		ps.executeUpdate();
			 		//month view 
			 		sql = "create view "+userN+"_monthB As  SELECT * FROM "+userN+"_account_personal WHERE MONTH(t_date) = MONTH(CURRENT_DATE());";
			 		ps = con.prepareStatement(sql);
			 		ps.executeUpdate();
			 		//year view 
			 		sql = "Create VIEW "+userN+"_yearB AS select * from "+userN+"_account_personal where YEAR(t_date)=YEAR(CURDATE());";
			 		ps = con.prepareStatement(sql);
			 		ps.executeUpdate();
			 		
		 			session.setAttribute("name",userN);
		 			res.sendRedirect("home.jsp");
			 	}
			
			}catch(Exception e) { 
				out.print("<script> alert(\"Wrong UserName or Password Not Macthed ! \"); </script>");
				res.sendRedirect("Adduser1.jsp");
				e.printStackTrace();
			}
			
		}
		else {
			out.println("<script> alert(\"Wrong UserName or Password Not Macthed ! \"); </script>");
			try {
				res.sendRedirect("Adduser1.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
