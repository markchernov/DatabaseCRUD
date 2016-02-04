package controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.DatabaseDAO;


@Controller

public class DatabaseController {

	@Autowired
	private DatabaseDAO databaseDao;

	
	
	
	
	
	
	
	
	// select table

	@RequestMapping(path = "GetData.do", params = "input", method = RequestMethod.GET)

	public ModelAndView selectSQL(@RequestParam("input") String userInput)
			throws ClassNotFoundException, SQLException {

		String url = "jdbc:mysql://localhost:3306/companydb";
		String username = "student";
		String password = "student";
		String sqlTxt;

		Connection conn;

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, username, password);

		 

		ModelAndView mv = new ModelAndView();

	

		sqlTxt = userInput.trim();

		System.out.println(sqlTxt);

		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sqlTxt);
		
		
		
		// get metadata
		ResultSetMetaData rsmd = rs.getMetaData();

		
		// get number of columns
		int cols = rsmd.getColumnCount();
		
		

		System.out.println(cols);

		// create list
		
		
		
		
		List <List> myList = new ArrayList();
		
		
		// loop thru each row for number of columns
		
		while (rs.next()) {

			List <String> tempList = new ArrayList();
			
			
			for (int i = 1; i<=cols;i++ ) {
			
			
				
			    tempList.add(rs.getString(i));  // add columns as strings to array
			
			}
			
			// System.out.println(rs.getInt(1) + ": " + rs.getString(2) + " " +
			// rs.getString(3));

			myList.add(tempList);  // add array of strings to master array

		}

		System.out.println(myList.size());
		
		
		
		
		rs.close();

		stmt.close();

		conn.close();
		
		
		
		
		

		mv.setViewName("index.jsp");

		mv.addObject("selectResult", myList);    // send the main list to jsp
		
		

		return mv;

	}



		
}
