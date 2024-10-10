package connection;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	static Connection con;
	static{
		try{
//			Class.forName(DRIVER);
//			con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","system","tiger");
			}catch(Exception e){}
	}
	public static Connection getCon(){
		return con;
	}
}
