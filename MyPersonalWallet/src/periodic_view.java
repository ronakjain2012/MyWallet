import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class periodic_view extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		PrintWriter out = res.getWriter();
		String start,end;
		start = req.getParameter("s_date");
		end = req.getParameter("e_date");
		HttpSession session = req.getSession();
		if(!start.isEmpty() && !end.isEmpty()) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
				String tableN = (String) session.getAttribute("name");
				tableN = tableN+"_account_personal";
				String sql = "select * from "+tableN+" where t_date >='"+start+"' and t_date <='"+end+"'";
				//System.out.println(sql);
				PreparedStatement ps = con.prepareStatement(sql);
				//ps.setString(1,end);
				//ps.setString(2, start);
				ResultSet rs = ps.executeQuery();
				req.getRequestDispatcher("periodic_view.jsp").include(req, res);
				out.println("<table cellpadding=\"5\" id=\"data_B\"> ");
			 	out.println("<tr> <th> Date </th><th> ID </th><th> Method </th><th> Dedit </th><th> Credit </th><th> Category </th><th> Creditor </th><th> Debtor </th> <th> Description </th> </tr>");
			 	while(rs.next()) {
			 		out.println("<tr> <td>"+rs.getString(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td> <td>"+rs.getString(4)+"</td> <td>"+rs.getString(5)+"</td> <td>"+rs.getString(6)+"</td> <td>"+rs.getString(7)+"</td> <td>"+rs.getString(8)+"</td> <td>"+rs.getString(9)+"</td> <td> <form action=\"delete.jsp\" method=\"post\"> <input type=\"hidden\" value=\""+rs.getInt(2)+"\" name=\"id\"> <input type=\"Submit\" value=\"Delete\"> </form> </td></tr>");
			 	}
			 	out.println("</table>");
			}catch(Exception e) { 
				e.printStackTrace();
				res.sendRedirect("sqlError.jsp"); }
		}
	}

}