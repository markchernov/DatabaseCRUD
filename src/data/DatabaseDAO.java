package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class DatabaseDAO {

	/*
	 * public void init() { try { DatabaseDAO.populateChoice(); } catch
	 * (SQLException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); }
	 * 
	 * }
	 */

	public Connection createConnection() throws SQLException, ClassNotFoundException {

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/companydb";
		String username = "student";
		String password = "student";

		Connection conn = DriverManager.getConnection(url, username, password);

		return conn;
	}

	/*
	 * public static Set<String> populateChoice() throws SQLException,
	 * ClassNotFoundException {
	 * 
	 * Connection conn = createConnection();
	 * 
	 * Statement stmt = conn.createStatement();
	 * 
	 * ResultSet rs = stmt.executeQuery(
	 * "SELECT employees.lastname FROM employees;");
	 * 
	 * Set<String> tempSet = new HashSet<String>();
	 * 
	 * while (rs.next()) {
	 * 
	 * tempSet.add(rs.getString(1)); }
	 * 
	 * rs.close();
	 * 
	 * stmt.close();
	 * 
	 * conn.close();
	 * 
	 * return tempSet; }
	 */

	// create and return list from select statement

	public List<ArrayList<String>> sqlReturnSelect(String input) throws SQLException, ClassNotFoundException {

		Connection conn = createConnection();

		Statement stmt = conn.createStatement();

		ResultSet rs = stmt.executeQuery(input);

		ResultSetMetaData rsmd = rs.getMetaData();

		// get number of columns
		int cols = rsmd.getColumnCount();

		List<ArrayList<String>> myList = new ArrayList<ArrayList<String>>();

		ArrayList<String> columnList = new ArrayList<String>();

		for (int i = 1; i <= cols; i++) {

			columnList.add(rsmd.getColumnName(i));

		}

		myList.add(columnList);

		System.out.println(myList);

		// loop thru each row for number of columns

		while (rs.next()) {

			ArrayList<String> tempList = new ArrayList<String>();

			for (int i = 1; i <= cols; i++) {

				tempList.add(rs.getString(i)); // add columns as strings to
												// array

			}

			myList.add(tempList); // add array of strings to master array

		}

		// System.out.println(myList.size());

		rs.close();

		stmt.close();

		conn.close();

		return myList;

	}

	// execute insert statement

	public String sqlReturnInsert(String input) throws SQLException, ClassNotFoundException {

		Connection conn = createConnection();

		Statement stmt = conn.createStatement();

		stmt.executeUpdate(input);

		stmt.close();

		conn.close();

		return "Update Complete";

	}

	// find and display by the last name

	public List<ArrayList<String>> sqlReturnLastName(String input) throws SQLException, ClassNotFoundException {

		Connection conn = createConnection();

		Statement stmt = conn.createStatement();

		input = "'" + input + "'";

		String sqlTxt = "SELECT * FROM employees WHERE employees.lastname =" + input;
		System.out.println(sqlTxt);

		List<ArrayList<String>> myList = sqlReturnSelect(sqlTxt);

		stmt.close();

		conn.close();

		return myList;

	}

}
