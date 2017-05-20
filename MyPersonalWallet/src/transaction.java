import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.http.*;
public class transaction extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		String date,paidto,paidby,method,desc,temp,cat;
		Float amt;
		HttpSession session = req.getSession();
		date = req.getParameter("T_date");
		//System.out.println(date);
		temp = req.getParameter("T_type");
		//System.out.println(temp);
		paidto = req.getParameter("T_paidto");
		//System.out.println(paidto);
		paidby = req.getParameter("T_paidby");
		//System.out.println(paidby);
		method = req.getParameter("T_method");
		//System.out.println(method);
		desc = req.getParameter("T_desc");
		//System.out.println(desc);
		amt = Float.parseFloat(req.getParameter("T_ammount"));
		//System.out.println(amt);
		cat = req.getParameter("T_category");
		//System.out.println(cat);
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
		 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
		 	String tableN =(String) session.getAttribute("name")+"_account_personal";
		 	PreparedStatement pst = con.prepareStatement("insert into "+tableN+"(t_date,method,debit,credit,category,paid_to,paid_by,t_desc) values(?,?,?,?,?,?,?,?)");
		 	if(temp.equals("income")){
		 		pst.setString(1, date);
				pst.setString(2, method);
				pst.setFloat(3,amt); 
				pst.setFloat(4,0);
				pst.setString(5, cat);
				pst.setString(6, paidto);
				pst.setString(7, paidby);
				pst.setString(8, desc);
				int i = pst.executeUpdate();
				if(i>0){
					req.getRequestDispatcher("transactions.jsp").include(req, res);
					PrintWriter pr = res.getWriter();
					pr.println("<script> alert(\"Data Stored ! Income\"); </script>");
				}
				
			}
		 	else if(temp.equals("expense")) {
		 		pst.setString(1, date);
				pst.setString(2, method);
				pst.setFloat(3,0); 
				pst.setFloat(4,amt);
				pst.setString(5, cat);
				pst.setString(6, paidto);
				pst.setString(7, paidby);
				pst.setString(8, desc);
				int i = pst.executeUpdate();
				if(i>0){
					req.getRequestDispatcher("transactions1.jsp").include(req, res);
					PrintWriter pr = res.getWriter();
					pr.println("<script> alert(\"Data Stored ! Expense\"); </script>");
				}
		 	}
		 		
		}catch(Exception e){
			e.printStackTrace();
			res.sendRedirect("sqlError.jsp");
		}
	
	
	}
}
