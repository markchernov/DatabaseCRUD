package controllers;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

	// create object controller

	@RequestMapping(path = "CreateObject.do", method = RequestMethod.POST)

	public ModelAndView selectLastNameSQL(@RequestParam("firstname") String firstname,
			@RequestParam("middlename") String middlename, @RequestParam("lastname") String lastname,
			@RequestParam("gender") String gender, @RequestParam("email") String email,
			@RequestParam("extension") int extension, @RequestParam("hiredate") String hiredate,
			@RequestParam("salary") int salary, @RequestParam("commission_pct") int commission_pct,
			@RequestParam("department_id") int department_id, @RequestParam("job_id") int job_id,
			@RequestParam("address") String address, @RequestParam("city") String city,
			@RequestParam("state") String state, @RequestParam("zipcode") int zipcode,
			@RequestParam("version") int version) throws ClassNotFoundException, SQLException, ParseException {

		ModelAndView mv = new ModelAndView();

		String tempdate = hiredate;

		DateFormat format = new SimpleDateFormat("YYYY-mm-dd", Locale.ENGLISH);

		Date date = format.parse(tempdate);

		Employee emp = new Employee(firstname, middlename, lastname, gender, email, extension, date, salary,
				commission_pct, department_id, job_id, address, city, state, zipcode, version);

		

		System.out.println(emp);

		mv.setViewName("index.jsp");

		mv.addObject("selectResult", emp);

		return mv;

	}

}
