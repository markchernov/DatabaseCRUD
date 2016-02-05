package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class DatabaseDAO {

	public Connection createConnection() throws SQLException, ClassNotFoundException {

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/companydb";
		String username = "student";
		String password = "student";

		Connection conn = DriverManager.getConnection(url, username, password);

		return conn;
	}

	// create and return list from select statement

	public List<ArrayList<Object>> sqlReturnSelect(String input) throws SQLException, ClassNotFoundException {

		Connection conn = createConnection();

		Statement stmt = conn.createStatement();

		ResultSet rs = stmt.executeQuery(input);

		ResultSetMetaData rsmd = rs.getMetaData();

		// get number of columns
		int cols = rsmd.getColumnCount();

		List<ArrayList<Object>> myList = new ArrayList<ArrayList<Object>>();

		ArrayList<Object> columnList = new ArrayList<Object>();

		for (int i = 1; i <= cols; i++) {

			columnList.add(rsmd.getColumnName(i).toUpperCase());

		}

		myList.add(columnList);

		System.out.println(myList);

		// loop thru each row for number of columns

		while (rs.next()) {

			ArrayList<Object> tempList = new ArrayList<Object>();

			for (int i = 1; i <= cols; i++) {

				tempList.add(rs.getObject(i)); // add columns as strings to
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

	public List<ArrayList<Object>> sqlReturnLastName(String input) throws SQLException, ClassNotFoundException {

		Connection conn = createConnection();

		Statement stmt = conn.createStatement();

		input = "'" + input + "'";

		String sqlTxt = "SELECT * FROM employees WHERE employees.lastname =" + input;
		System.out.println(sqlTxt);

		List<ArrayList<Object>> myList = sqlReturnSelect(sqlTxt);

		stmt.close();

		conn.close();

		return myList;

	}

	// receive parameters, call a constructor and save an object to database

	public String sqlInsertObject(Employee emp) throws SQLException, ClassNotFoundException {

		Connection conn = createConnection();

		Statement stmt = conn.createStatement();
		
		
		
		String firstname = emp.getFirstname();
		String middlename = emp.getMiddlename();
		String lastname = emp.getFirstname();
		String gender = emp.getFirstname();
		String email = emp.getFirstname();
		int extension = emp.getExtension();
		Date hiredate = emp.getHiredate();
		int salary = emp.getSalary();
		int commission_pct = emp.getCommission_pct();
		int department_id = emp.getDepartment_id();
		int job_id = emp.getJob_id();
		String address = emp.getAddress();
		String city = emp.getCity();
		String state = emp.getState();
		int zipcode = emp.getZipcode();
		int version = emp.getVersion();
		
		String sqlTxt = "INSERT INTO employees(firstname, middlename,lastname, gender, email,extension,hiredate,salary,commission_pct, department_id, job_id,address,city,state,zipcode,version)"+ " "
		
		+ "VALUES (" + "'"+ firstname + "','" + middlename +  "','" +  lastname + "','" + gender + "','" +  email +  "'," +  extension +  "," +  hiredate + "," + salary + "," +  commission_pct + "," +
		department_id + "," + job_id + ",'" + address + "','" + city   + "','" + state + "'," + zipcode +"," + version + ");";
		

		stmt.executeUpdate(sqlTxt);

		stmt.close();

		conn.close();

		return "Add Complete";

	}

}
