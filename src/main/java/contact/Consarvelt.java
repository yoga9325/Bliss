package contact;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import connection.ConnectionProvider;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Consarvelt extends HttpServlet {
	int status=0;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String subject=request.getParameter("sub");
		String msg=request.getParameter("msg");
		
		if(email.isEmpty()==false)
		{
			try {
				Connection con=ConnectionProvider.getCon();
         
				

					PreparedStatement ps=con.prepareStatement("insert into quary values(?,?,?,?)");
					ps.setString(1,name);
					ps.setString(2,email);
					ps.setString(3,subject);
					ps.setString(4,msg);
					
					status=ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		

			RequestDispatcher rd=null;

			

			rd=request.getRequestDispatcher("contact.jsp");

			if(status>0){
				request.setAttribute("status", "success");
			}
			else{
				request.setAttribute("status", "failed");
			}
			rd.forward(request, response);
	}

}
