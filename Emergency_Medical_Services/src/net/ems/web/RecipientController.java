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
import net.ems.dao.Blood_RecipientDao;
import net.ems.model.Recipient;
import net.ems.model.Donor;




public class RecipientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Blood_RecipientDao userDao;
    private Blood_DonorDao driverDao;
	public void init() {
		userDao = new Blood_RecipientDao();
		driverDao= new Blood_DonorDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		recipient(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/recipient/recipient.jsp");
		
	}

	private void recipient(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String bloodgrp = request.getParameter("bloodgrp");
		String phoneno = request.getParameter("phoneno");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		
		Recipient PAT = new Recipient();
		PAT.setFirstName(firstName);
		PAT.setLastName(lastName);
		PAT.setGender(gender);
		PAT.setAge(age);
		PAT.setDob(dob);
		PAT.setBloodgrp(bloodgrp);
		PAT.setPhoneno(phoneno);
		PAT.setState(state);
		PAT.setCity(city);

		Donor patient= new Donor();

		try {
			int result = userDao.registerRecipient(PAT);
			
			if(result == 1) {
				patient=driverDao.registerDonor(bloodgrp);
				if (patient.getFirstName() == null)
				{
					request.setAttribute("NOTIFICATION","Blood Group Not Available");
				}
				else {
					
				
				
				request.setAttribute("NOTIFICATION", "DONOR DETAILS");
				request.setAttribute("DONOR","Donor Name:");
				request.setAttribute("NAME",patient.getFirstName());
				request.setAttribute("GENDER","Gender:");
				request.setAttribute("VTYPE",patient.getGender());
				request.setAttribute("BLOOD","Blood Type:");
				request.setAttribute("VNUM",patient.getBloodgrp());
				request.setAttribute("CONTACT","Contact:");
				request.setAttribute("PHONE",patient.getPhoneno());
				request.setAttribute("INFO","PLEASE contact the donor for donation!");
				
				}
			}
			
		} catch (Exception e) {
			// Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("recipient/recipient.jsp");
		dispatcher.forward(request, response);
	}
	
}