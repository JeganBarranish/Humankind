//This file established connection between the database and java file for INSERT and SELECT query.


package net.ems.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import net.ems.model.Donor;
import net.ems.utils.JDBCUtils;

public class Blood_DonorDao {
	//To perform INSERT query.
	public int registerDonor(Donor blood) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO donor"
				+ "  (first_name, last_name, gender, age, dob, blood_grp, phone_no, state, city , aids, cancer, pierce) VALUES "
				+ " (?, ?, ?, ?, ?, ?, ?, ?, ? , ? , ? , ?);";

		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				// Creating a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, blood.getFirstName());
			preparedStatement.setString(2, blood.getLastName());
			preparedStatement.setString(3, blood.getGender());
			preparedStatement.setString(4, blood.getAge());
			preparedStatement.setDate(5, JDBCUtils.getSQLDate(blood.getDob()));
			preparedStatement.setString(6, blood.getBloodgrp());
			preparedStatement.setString(7, blood.getPhoneno());
			preparedStatement.setString(8, blood.getState());
			preparedStatement.setString(9, blood.getCity());
			preparedStatement.setString(10, blood.getAids());
			preparedStatement.setString(11, blood.getCancer());
			preparedStatement.setString(12, blood.getPierce());
			
			
			

			System.out.println(preparedStatement);
			//Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return result;
	}
	public Donor registerDonor(String btype) throws ClassNotFoundException {
		//To perform SELECT query
		String SELECT_DONOR_SQL = "SELECT first_name,gender,blood_grp,phone_no FROM demo.donor where blood_grp=? ORDER BY RAND()";
		Donor donor1 = new Donor();
		try (Connection connection = JDBCUtils.getConnection();
				//Creating a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_DONOR_SQL)) {
			preparedStatement.setString(1, btype);
			//Execute Query
			ResultSet resultop = preparedStatement.executeQuery();
			while (resultop.next()) {	
				
			    String fName=resultop.getString("first_name");
			    String gNdr=resultop.getString("gender");
				String bLd=resultop.getString("blood_grp");
				String pNo=resultop.getString("phone_no");
				
				donor1.setFirstName(fName);
				donor1.setGender(gNdr);
				donor1.setBloodgrp(bLd);
				donor1.setPhoneno(pNo);
			}
		} catch (SQLException e) {
			// process sql exception
			
			JDBCUtils.printSQLException(e);
			
		}
		return donor1;
	}

}
