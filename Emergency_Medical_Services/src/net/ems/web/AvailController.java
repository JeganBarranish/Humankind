//This file is servlet for connection to a web page

package net.ems.web;

//Importing the required Libraries
import java.io.IOException;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Random;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import net.ems.dao.Ambulance_AvailDao;
import net.ems.dao.Ambulane_RegisterDao;
import net.ems.model.Avail;
import net.ems.model.Register;




public class AvailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Ambulance_AvailDao userDao;
    private Ambulane_RegisterDao driverDao;
	public void init() {
		userDao = new Ambulance_AvailDao();
		driverDao= new Ambulane_RegisterDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		avail(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/avail/avail.jsp");
		
	}

	private void avail(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String Name = request.getParameter("Name");
		String phoneno = request.getParameter("phoneno");
		String pickup = request.getParameter("pickup");
		String drop = request.getParameter("drop");
		String vehicle_type = request.getParameter("vehicle_type");
		

		Avail book = new Avail();
		book.setName(Name);
		book.setPhoneno(phoneno);
		book.setPickup(pickup);
		book.setDrop(drop);
		book.setVehicle_type(vehicle_type);
		Register driver = new Register();
		

		try {
			int result = userDao.registerAvail(book);
			
			if(result == 1) {
				driver=driverDao.registerEmployee(vehicle_type);
				if (driver.getFirstName() == null)
				{
					request.setAttribute("NOTIFICATION","Ambulance not available at the moment, try again later!");
				}
				else {
					
					//Randomly Generating Distance For Calculating The Fare
					Random rand = new Random();
					double rand_int1 = rand.nextDouble()*20; 
					 DecimalFormat df = new DecimalFormat("#");
				        df.setRoundingMode(RoundingMode.CEILING);
					double Km=rand_int1;
					double fare=0;
					int a=1,basic=0;
					String str1 = "PTS",str2="BLS",str3="ALS";
					
				
				
				request.setAttribute("NOTIFICATION", "AMBULANCE DETAILS!");
				request.setAttribute("DRIVER","Driver Name:");
				request.setAttribute("NAME",driver.getFirstName());
				request.setAttribute("CONTACT","Contact:");
				request.setAttribute("PHONE",driver.getPhoneno());
				request.setAttribute("AMBU","Ambulance Number:");
				request.setAttribute("VNUM",driver.getVehicleno());
				request.setAttribute("NO","Ambulance Type:");
				request.setAttribute("VTYPE",driver.getVehicletype());
				request.setAttribute("PRICE","Please pay the below displayed fare in Indian Rupees");
				
				//Logic for Fare CalCulating
				if(driver.getVehicletype().equals(str1))
				{
					basic=250;
					if (Km <= 5)
						fare = (Km * 50)+basic;
					else if (Km > 5 && Km <= 10)
					{
						fare = 5 * 50;
						fare = fare + ((Km - 5) * 70)+basic;
					} else
					{
						fare = (Km - 10) * 80;
						fare = fare + 5 * 50;
						fare = fare + (5 * 70)+basic;
					}
					request.setAttribute("FARE",df.format(fare));
				}
				if(driver.getVehicletype().equals(str2))
				{
					basic=500;
					if (Km <= 5)
						fare = (Km * 50) + basic;
					else if (Km > 5 && Km <= 10) {
						fare = 5 * 50;
						fare = fare + ((Km - 5) * 70) + basic;
					} else {
						fare = (Km - 10) * 80;
						fare = fare + 5 * 50;
						fare = fare + (5 * 70) + basic;
					}
					request.setAttribute("FARE",df.format(fare));
				}
				if(driver.getVehicletype().equals(str3))
				{
					basic = 750;
					if (Km <= 5)
						fare = (Km * 50) + basic;
					else if (Km > 5 && Km <= 10) {
						fare = 5 * 50;
						fare = fare + ((Km - 5) * 70) + basic;
					} else {
						fare = (Km - 10) * 80;
						fare = fare + 5 * 50;
						fare = fare + (5 * 70) + basic;
					}
					request.setAttribute("FARE",df.format(fare));
				}
			}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("avail/avail.jsp");
		dispatcher.forward(request, response);
	}
	
}