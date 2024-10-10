	package Login_Registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.ConnectionProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//		String email=request.getParameter("email");
//		String pass=request.getParameter("pass");
//		try{
//			Connection con=ConnectionProvider.getCon();
//			
//			PreparedStatement ps=con.prepareStatement("select * from stress_reg where email=? and password=?");
//			ps.setString(1,email);
//			ps.setString(2,pass);
//			
//			ResultSet rs=ps.executeQuery();
//			RequestDispatcher rd=null;
//			HttpSession session = request.getSession(); 
//			
//			if(rs.next())
//			{
//				String uname=rs.getString("name");
////				abc.setStatus(true);
//				session.setAttribute("uname" , uname);
//				request.setAttribute("status", "success");
//				rd=request.getRequestDispatcher("loginpage.jsp");
//			}
//			
//			
//			
//			
//			
//			
//			
//			
//		}catch(Exception e){
//			
//			e.printStackTrace();
//		}
//		
//
//	}

	boolean status;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("email");
		String s2=request.getParameter("pass");
		PrintWriter pw=response.getWriter();

		pw.print("connection successfully created....");
		
		try{
			Connection con=ConnectionProvider.getCon();
			
			PreparedStatement ps=con.prepareStatement("select * from stress_reg where email=? and password=?");
			ps.setString(1,s1);
			ps.setString(2, s2);
			
			ResultSet rs=ps.executeQuery();
			RequestDispatcher rd=null;
			HttpSession session = request.getSession(); 
			
			if(rs.next())
			{
				String uname=rs.getString("name");
//				abc.setStatus(true);
				session.setAttribute("uname" , uname);
				request.setAttribute("status", "success");
				rd=request.getRequestDispatcher("loginpage.jsp");
			}
//			
		}catch(Exception e)
		{
			pw.print(e);
		}
		

		
		
		
		
	}

}
