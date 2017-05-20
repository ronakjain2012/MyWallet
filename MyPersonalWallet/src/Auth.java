import java.sql.*;
public class Auth {
	public static boolean user_checking(String n,String p){
		boolean A=false;
		try {
		Class.forName("com.mysql.jdbc.Driver"); 
	 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
	 	PreparedStatement pst = con.prepareStatement("select * from users where userName=? and userPIN=?");
	 	pst.setString(1,n);
	 	pst.setString(2,p);
		ResultSet rt  = pst.executeQuery();
		//System.out.println(rt);
		A=rt.next();
		
	} catch(Exception e) {
		e.printStackTrace();
	}
	if(A)
		return true;
	else
		return false;
	}
}
