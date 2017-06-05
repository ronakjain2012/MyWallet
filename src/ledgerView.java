import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
public class ledgerView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		String temp = req.getParameter("ledger");
		HttpSession session = req.getSession();
		String name = (String) session.getAttribute("name");
		PrintWriter out = res.getWriter();
		String tableN = name+"_account_personal";
		if(!temp.isEmpty()) {
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
			 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
			 	String sql = "select * from "+tableN; 
			 	PreparedStatement ps0 = con.prepareStatement(sql+" where paid_to=? or paid_by=? or category=?");
			 	ps0.setString(1,temp);
			 	ps0.setString(2,temp);
			 	ps0.setString(3, temp);
			 	ResultSet rs = ps0.executeQuery();
			 	req.getRequestDispatcher("ledgerView.jsp").include(req,res);
			 	out.println("<table cellspacing=\"5\" cellpadding=\"5\"> ");
			 	out.println("<tr> <th> Date </th><th> ID </th><th> Method </th><th> Dedit </th><th> Credit </th><th> Category </th><th> Creditor </th><th> Debtor </th> <th> Description </th> </tr>");
			 	while(rs.next()) {
			 		out.println("<tr> <td>"+rs.getString(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td> <td>"+rs.getString(4)+"</td> <td>"+rs.getString(5)+"</td> <td>"+rs.getString(6)+"</td> <td>"+rs.getString(7)+"</td> <td>"+rs.getString(8)+"</td> <td>"+rs.getString(9)+"</td> <td> <form action=\"delete.jsp\" method=\"post\"> <input type=\"hidden\" value=\""+rs.getInt(2)+"\" name=\"id\"> <input type=\"Submit\" value=\"Delete\"> </form> </td></tr>");
			 	}
			 	out.println("</table>");
			 	
			}catch(Exception e) {
				e.printStackTrace();
				
					res.sendRedirect("sqlError.jsp");
			}
		}	
}
}
