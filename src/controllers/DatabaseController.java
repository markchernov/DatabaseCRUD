package controllers;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.DatabaseDAO;
import data.Employee;

@Controller

public class DatabaseController {

	@Autowired
	private DatabaseDAO databaseDao;

	// select table

	@RequestMapping(path = "GetData.do", params = "input", method = RequestMethod.GET)

	public ModelAndView selectSQL(@RequestParam("input") String userInput) throws ClassNotFoundException, SQLException {

		ModelAndView mv = new ModelAndView();

		String sqlTxt = userInput.trim();

		System.out.println(sqlTxt);

		mv.setViewName("index.jsp");

		mv.addObject("selectResult", databaseDao.sqlReturnSelect(userInput));

		return mv;

	}

	// update table

	@RequestMapping(path = "UpdateData.do", params = "update", method = RequestMethod.GET)

	public ModelAndView insertSQL(@RequestParam("update") String userInput)
			throws ClassNotFoundException, SQLException {

		ModelAndView mv = new ModelAndView();

		String sqlTxt = userInput.trim();

		System.out.println(sqlTxt);

		mv.setViewName("index.jsp");

		mv.addObject("updateResult", databaseDao.sqlReturnInsert(sqlTxt));

		return mv;

	}
	
	
	
	// select all by last name

		@RequestMapping(path = "GetDataLastName.do", params = "input", method = RequestMethod.GET)

		public ModelAndView selectLastNameSQL(@RequestParam("input") String userInput) throws ClassNotFoundException, SQLException {

			ModelAndView mv = new ModelAndView();

			String input = userInput.trim();
			
			
			

			System.out.println(input);

			mv.setViewName("index.jsp");

			mv.addObject("selectResult", databaseDao.sqlReturnLastName(input));

			return mv;

		}
	
	
	
	
	
	
	

	// create object controller

	@RequestMapping(path = "CreateObject.do", method = RequestMethod.GET)

	public ModelAndView selectLastNameSQL(@RequestParam("firstname") String firstname,
			@RequestParam("middlename") String middlename, @RequestParam("lastname") String lastname,
			@RequestParam("gender") String gender, @RequestParam("email") String email,
			@RequestParam("extension") String extension, @RequestParam("hiredate") String hiredate,
			@RequestParam("salary") String salary, @RequestParam("commission_pct") String commission_pct,
			@RequestParam("department_id") String department_id, @RequestParam("job_id") String job_id,
			@RequestParam("address") String address, @RequestParam("city") String city,
			@RequestParam("state") String state, @RequestParam("zipcode") String zipcode,
			@RequestParam("version") String version) throws ClassNotFoundException, SQLException, ParseException {

			
		ModelAndView mv = new ModelAndView();

		System.out.println(firstname);
		System.out.println(middlename);
		System.out.println(lastname);
		System.out.println(gender);
		System.out.println(email);
		System.out.println(extension);
		System.out.println(hiredate);
		System.out.println(salary);
		System.out.println(commission_pct);
		System.out.println(department_id);
		System.out.println(job_id);
		System.out.println(address);
		System.out.println(city);
		System.out.println(state);
		System.out.println(zipcode);
		System.out.println(version);
		
		 DateFormat format = new SimpleDateFormat("YYYY-mm-dd", Locale.ENGLISH);

		 Date date = format.parse(hiredate);
		
		 int ext =  Integer.parseInt(extension);
		 int sal = Integer.parseInt(salary);
		 int pct = Integer.parseInt(commission_pct);
		 int dep = Integer.parseInt(department_id);
		 int job = Integer.parseInt(job_id);
		
		 int ver = Integer.parseInt(version);
		 
		 
		
		/*Employee emp = new Employee();*/

		Employee emp = new Employee(firstname, middlename, lastname, gender, email, ext, date, sal,
				pct, dep, job, address, city, state, zipcode, ver);

		
		
		List <Employee> tempList = new ArrayList<Employee>();
		
		tempList.add(emp);

		System.out.println(emp);

		mv.setViewName("index.jsp");

		mv.addObject("updateResult", databaseDao.sqlInsertObject(emp));

		return mv;

	}

}
