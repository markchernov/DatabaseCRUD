package controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class DatabaseController {

	// select table

	@RequestMapping(path = "GetData.do", params = "select", method = RequestMethod.GET)

	public ModelAndView selectSQL(@RequestParam("select") String userInput)
			throws ClassNotFoundException, SQLException {

		String url = "jdbc:mysql://localhost:3306/companydb";
		String username = "student";
		String password = "student";

		Connection conn;

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, username, password);

		 /*String sqlTxt; 
		 sqlTxt = "SELECT ID, firstname, lastname FROM employees;"; */

		ModelAndView mv = new ModelAndView();

		System.out.println(userInput);

		String sqlTxt;
		sqlTxt = userInput.trim();

		System.out.println(sqlTxt);

		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sqlTxt);
		ResultSetMetaData rsmd = rs.getMetaData();

		int cols = rsmd.getColumnCount();

		System.out.println(cols);

		while (rs.next()) {

			// System.out.println(rs.getInt(1) + ": " + rs.getString(2) + " " +
			// rs.getString(3));

			System.out.println(rs.toString());

		}

		rs.close();

		stmt.close();

		conn.close();

		mv.setViewName("index.jsp");

		mv.addObject("selectResult", "my result");

		return mv;

	}

}
