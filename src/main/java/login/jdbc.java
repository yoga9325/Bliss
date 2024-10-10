package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.ConnectionProvider;

public class jdbc 
{ 
	static String s;
	public static void main(String[] args) {
		 
			 try {
				Connection con=ConnectionProvider.getCon();
				  System.out.println("connection is establish");
				  
				  PreparedStatement ps=con.prepareStatement("select * from stress_reg where email=? and password=?");
					ps.setString(1, "yogeshpanjarkar@gmail.com");
					ps.setString(2, "123");

					
					
					ResultSet rs=ps.executeQuery();
				  if(rs.next())
				  {
					  System.out.println(rs.getString("name"));
					 
				  }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
			  
			  
		

	}
}
