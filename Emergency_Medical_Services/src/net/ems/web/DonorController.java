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


import net.ems.dao.Blood_DonorDao;
import net.ems.model.Donor;


public class DonorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Blood_DonorDao userDao;

	public void init() {
		userDao = new Blood_DonorDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		donor(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/donor/donor.jsp");
		
	}

	private void donor(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String bloodgrp = request.getParameter("bloodgrp");
		String phoneno = request.getParameter("phoneno");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String aids = request.getParameter("aids");
		String cancer = request.getParameter("cancer");
		String pierce = request.getParameter("pierce");

		Donor blood = new Donor();
		blood.setFirstName(firstName);
		blood.setLastName(lastName);
		blood.setGender(gender);
		blood.setAge(age);
		blood.setDob(dob);
		blood.setBloodgrp(bloodgrp);
		blood.setPhoneno(phoneno);
		blood.setState(state);
		blood.setCity(city);
		blood.setAids(aids);
		blood.setCancer(cancer);
		blood.setPierce(pierce);
		

		try {
			int result = userDao.registerDonor(blood);
			if(result == 1) {
				request.setAttribute("NOTIFICATION", "Donor Registered Successfully!");
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("donor/donor.jsp");
		dispatcher.forward(request, response);
	}
}