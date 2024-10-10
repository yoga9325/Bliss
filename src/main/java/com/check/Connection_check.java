package com.check;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Connection_check {

	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/stress_manage","root","root");
			System.out.println("connection established");
			Statement st=con.createStatement();
			st.execute("create table student(PRN int,name varchar(10),mark int)");
			System.out.println("Table is created....");
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}


