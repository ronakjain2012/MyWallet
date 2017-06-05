import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.*;
public class addLedger extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse res){
		String whatIs,name,email,country,addr,num;
		whatIs = req.getParameter("whatIs");
		num = (req.getParameter("d_tel"));
		name= req.getParameter("d_name");
		email= req.getParameter("d_email");
		country= req.getParameter("d_country");
		addr= req.getParameter("d_address");
		try{
		Class.forName("com.mysql.jdbc.Driver"); 
	 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
	 	PrintWriter pr = res.getWriter();
	 	if(whatIs.equals("debtor")){
	 		PreparedStatement ps = con.prepareStatement("insert into paidby (party_name,mobile_no,email,country,address) values(?,?,?,?,?)");
	 		ps.setString(1, name);
	 		ps.setString(2, num);
	 		ps.setString(3, email);
	 		ps.setString(4, country);
	 		ps.setString(5, addr);
	 		int i = ps.executeUpdate();
	 		if(i>0){
	 			pr.print("<script> alert(\" Debtor Added !\"); </script>");
	 			req.getRequestDispatcher("addLedger.jsp").include(req, res);
	 		}
	 	}
	 	else if(whatIs.equals("creditor")){
	 		PreparedStatement ps = con.prepareStatement("insert into paidto (party_name,mobile_no,email,country,address) values(?,?,?,?,?)");
	 		ps.setString(1, name);
	 		ps.setString(2, num);
	 		ps.setString(3, email);
	 		ps.setString(4, country);
	 		ps.setString(5, addr);
	 		int i = ps.executeUpdate();
	 		if(i>0){
	 			pr.println("<script> alert(\" Creditor Added !\"); </script>");
	 			req.getRequestDispatcher("addLedger.jsp").include(req, res);
	 		}
	 	}
	 	
	 	else if(whatIs.equals("category")) {
	 		PreparedStatement ps = con.prepareStatement("insert into categ (category) values(?)");
	 		ps.setString(1, name);
	 		int i = ps.executeUpdate();
	 		if(i>0){
	 			pr.println("<script> alert(\" Category Added !\"); </script>");
	 			req.getRequestDispatcher("addLedger.jsp").include(req, res);
	 		}
	 	}
	 	else {
	 		PreparedStatement ps0 = con.prepareStatement("insert into paidby (party_name,mobile_no,email,country,address) values(?,?,?,?,?)");
	 		PreparedStatement ps1 = con.prepareStatement("insert into paidto (party_name,mobile_no,email,country,address) values(?,?,?,?,?)");
	 		PreparedStatement ps2 = con.prepareStatement("insert into categ (category) values(?)");
	 		ps0.setString(1, name);
	 		ps0.setString(2, num);
	 		ps0.setString(3, email);
	 		ps0.setString(4, country);
	 		ps0.setString(5, addr);
	 		int i = ps0.executeUpdate();
	 		ps1.setString(1, name);
	 		ps1.setString(2, num);
	 		ps1.setString(3, email);
	 		ps1.setString(4, country);
	 		ps1.setString(5, addr);
	 		int e = ps1.executeUpdate();
	 		ps2.setString(1, name);
	 		int a = ps2.executeUpdate();
	 		if(i>0 && e>0 && a>0) {
	 			pr.println("<script> alert(\" Data Added !\"); </script>");
	 			req.getRequestDispatcher("addLedger.jsp").include(req, res);
	 		}
	 	}
		}catch (Exception e) {
			e.printStackTrace();
			try {
				res.sendRedirect("sqlError.jsp");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
	}
}