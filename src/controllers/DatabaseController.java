package controllers;

import java.sql.SQLException;
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

	public ModelAndView selectSQL(@RequestParam("input") String userInput) throws ClassNotFoundException, SQLException {

		ModelAndView mv = new ModelAndView();

		String sqlTxt = userInput.trim();

		System.out.println(sqlTxt);

		mv.setViewName("index.jsp");

		mv.addObject("selectResult", databaseDao.sqlReturnSelect(userInput)); 
		
		return mv;

	}
	
	// update table

		@RequestMapping(path = "insertData.do", params = "input", method = RequestMethod.GET)

		public ModelAndView insertSQL(@RequestParam("input") String userInput) throws ClassNotFoundException, SQLException {

			ModelAndView mv = new ModelAndView();

			String sqlTxt = userInput.trim();

			System.out.println(sqlTxt);

			mv.setViewName("index.jsp");

			mv.addObject("selectResult", databaseDao.sqlReturnInsert(userInput)); 
			
			return mv;

		}
	
		// select by last name

		@RequestMapping(path = "GetDataLastName.do", params = "input", method = RequestMethod.GET)

		public ModelAndView selectLastNameSQL(@RequestParam("input") String userInput) throws ClassNotFoundException, SQLException {

			ModelAndView mv = new ModelAndView();

			String sqlTxt = userInput.trim();

			System.out.println(sqlTxt);

			mv.setViewName("index.jsp");

			mv.addObject("selectResult", databaseDao.sqlReturnLastName(userInput)); 
			
			return mv;

		}

}
