package net.ems.model;

//Importing the required libraries
import java.io.Serializable;

//Declaring all the variables required to perform the Booking operation 
public class Avail implements Serializable{
	private static final long serialVersionUID = 1L;
	private String Name;
	private String phoneno;
	private String pickup;
	private String drop;
	private String vehicle_type;
	
	//Generating Getter-Setter
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getPickup() {
		return pickup;
	}
	public void setPickup(String pickup) {
		this.pickup = pickup;
	}
	public String getDrop() {
		return drop;
	}
	public void setDrop(String drop) {
		this.drop = drop;
	}
	public String getVehicle_type() {
		return vehicle_type;
	}
	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
		
}
