//This file is servlet for connection to a web page
package net.ems.web;

//Importing the required libraries
import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import net.ems.dao.Ambulane_RegisterDao;
import net.ems.model.Register;


public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Ambulane_RegisterDao userDao;

	public void init() {
		userDao = new Ambulane_RegisterDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		register(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/register/register.jsp");
		
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String phoneno = request.getParameter("phoneno");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String aadharno = request.getParameter("aadharno");
		String dlno = request.getParameter("dlno");
		String vehicleno = request.getParameter("vehicleno");
		String vehicletype = request.getParameter("vehicletype");
		

		Register employee = new Register();
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		employee.setPhoneno(phoneno);
		employee.setDob(dob);
		employee.setAadharno(aadharno);
		employee.setDlno(dlno);
		employee.setVehicleno(vehicleno);
		employee.setVehicletype(vehicletype);

		try {
			int result = userDao.registerEmployee(employee);
			if(result == 1) {
				request.setAttribute("NOTIFICATION", "User Registered Successfully!");
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("register/register.jsp");
		dispatcher.forward(request, response);
	}
}