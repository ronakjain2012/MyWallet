import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.http.HttpSession;
public class BalanceCalc implements Filter {
	public void init(FilterConfig arg0) { } 
	public void doFilter(ServletRequest req,ServletResponse res,FilterChain chain) throws IOException {
		HttpSession session = ((HttpServletRequest) req).getSession();
		if(session.getAttribute("name")==null){
			((HttpServletResponse) res).sendRedirect("index.jsp"); }
		String tableQ =session.getAttribute("name")+"_account_personal";
		tableQ = tableQ.trim();
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
		 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
		 // Current Balance 
		 	String sql;
		 	sql = "select (sum(debit)-sum(credit)) as Current from "+tableQ;
			PreparedStatement ps = con.prepareStatement(sql);
		 	java.sql.ResultSet rs = ps.executeQuery();
		 	while(rs.next()){
		 		session.setAttribute("currentB",rs.getInt(1));
		 		//System.out.println(rs.getInt("Current"));
		 	}
		 	ps.close();
		 	
		 // week Balace 
		 	tableQ = session.getAttribute("name")+"_weekb";
		 	sql = "select (sum(debit)-sum(credit))As weekBalance,sum(debit) as Income,sum(credit) as Expense from "+tableQ;
		 	ps = con.prepareStatement(sql);
		 	rs = ps.executeQuery();
		 	while(rs.next()) {
		 		session.setAttribute("weekB",rs.getInt(1));
		 		session.setAttribute("Wincome",rs.getInt(2));
		 		session.setAttribute("Wexpense",rs.getInt(3));
		 	}
		 	
		 	
		 // year Balance 	
		 	tableQ = session.getAttribute("name")+"_yearb";
		 	sql = "select sum(debit) as Income,sum(credit)As expense from "+tableQ;
		 	ps = con.prepareStatement(sql);
		 	rs = ps.executeQuery();
		 	while(rs.next()) {
		 		session.setAttribute("Yincome",rs.getInt(1));
		 		session.setAttribute("Yexpense", rs.getInt(2));
		 	}
		 
		 // Month Balance
		 	tableQ = session.getAttribute("name")+"_monthb";
		 	sql = "select (sum(debit)-sum(credit))As weekBalance,sum(debit) as Income,sum(credit) as Expense from "+tableQ;
		 	ps=con.prepareStatement(sql);
		 	rs = ps.executeQuery();
		 	while(rs.next()){
		 		session.setAttribute("monthB", rs.getInt(1));
		 		session.setAttribute("Imonth", rs.getInt(2));
		 		session.setAttribute("Emonth", rs.getInt(3));
		 	}
			chain.doFilter(req,res);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				((HttpServletResponse) res).sendRedirect("sqlError.jsp");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
	}
	public void destroy() {}
}
