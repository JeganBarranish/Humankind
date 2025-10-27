//This file established connection between the database and java file for INSERT query.


package net.ems.dao;

//Importing the required libraries
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import net.ems.model.Avail;
import net.ems.utils.JDBCUtils;

public class Ambulance_AvailDao {
	//To perform INSERT query.
	public int registerAvail(Avail customer) throws ClassNotFoundException {
		String INSERT_BOOK_SQL = "INSERT INTO avail"
				+ "  (name, phone_no, pick_up, drop_loc, vehicle_type ) VALUES "
				+ " (?, ?, ?, ?, ?);";      
		
		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				//Creating a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOK_SQL)) {
			preparedStatement.setString(1, customer.getName());
			preparedStatement.setString(2, customer.getPhoneno());
			preparedStatement.setString(3, customer.getPickup());
			preparedStatement.setString(4, customer.getDrop());
			preparedStatement.setString(5, customer.getVehicle_type());
			
			

			System.out.println(preparedStatement);
			// Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return result;
	}

}

