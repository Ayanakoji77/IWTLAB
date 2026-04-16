package utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB1 {
	public static Connection getConnection()
	{
		Connection con = null;
		try
		{
			String driver = "org.postgresql.Driver";
			Class.forName("org.postgresql.Driver");
			String url = "jdbc:postgresql://192.168.1.17/cse_db24";
			String username= "24bcsg37";
			String password = "24bcsg37";
			con = DriverManager.getConnection(url,username,password);
			
		}
		catch(Exception e)
		{
			System.out.println("e");
		}
		return con;
	}
}
