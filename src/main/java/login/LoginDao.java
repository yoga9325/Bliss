package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.ConnectionProvider;


public class LoginDao {

	static String uname;
	public static String validate(LoginBean abc){
		
		
		
		try{
			Connection con=ConnectionProvider.getCon();
			String query="select * from stress_reg where email=? and password=?";
//			PreparedStatement ps=con.prepareStatement(query);
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,abc.getEmail());
			ps.setString(2, abc.getPass());
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				uname=rs.getString("name");
				abc.setStatus(true);
			}
			
			
			
			
			
			
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		return uname;
		
		
	}

	
}
