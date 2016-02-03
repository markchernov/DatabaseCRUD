package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseDAO {

	private static String url = "jdbc:mysql://localhost:3306/companydb";
	private static String username = "student";
	private static String password = "student";

	private static Connection conn;

	public static void setConnection() throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, username, password);

		String sqlTxt;
		sqlTxt = "SELECT ID, firstname, lastname FROM employees";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sqlTxt);

		while (rs.next()) {

			System.out.println(rs.getInt(1) + ": " + rs.getString(2) + " " + rs.getString(3));

		}

		rs.close();

		stmt.close();

		conn.close();

	}

	
}	
	
	
	
	
	
	
	
	
	