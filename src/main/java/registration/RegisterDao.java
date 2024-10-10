package registration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.ConnectionProvider;



public class RegisterDao {
	
	public static int register(User u){
		int status=0;
		
		try{
			Connection con=ConnectionProvider.getCon();
           
			 PreparedStatement ps1=con.prepareStatement("select email from stress_reg where email=?");
			 ps1.setString(1,u.getEmail());
			 ResultSet rt=ps1.executeQuery();
			
			if(!(rt.next()))
			{

				PreparedStatement ps=con.prepareStatement("insert into stress_reg values(?,?,?,?)");
				ps.setString(1,u.getName());
				ps.setString(2,u.getEmail());
				ps.setString(3,u.getPass());
				ps.setLong(4,u.getContact());
				
				status=ps.executeUpdate();
			}
		
			
		}catch(Exception e){}
		
		return status;
	}
}
