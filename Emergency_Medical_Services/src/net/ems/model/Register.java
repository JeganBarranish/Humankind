package net.ems.model;

//Importing the required libraries
import java.io.Serializable;
import java.time.LocalDate;

//Declaring all the variables required to perform the Registering operation
public class Register implements Serializable {
	private static final long serialVersionUID = 1L;
	private String firstName;
	private String lastName;
	private String phoneno;
	private LocalDate dob;
	private String aadharno;
	private String dlno;
	private String vehicleno;
	private String vehicletype;
	
	//Generating Getter-Setter
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	public String getAadharno() {
		return aadharno;
	}
	public void setAadharno(String aadharno) {
		this.aadharno = aadharno;
	}
	public String getDlno() {
		return dlno;
	}
	public void setDlno(String dlno) {
		this.dlno = dlno;
	}
	public String getVehicleno() {
		return vehicleno;
	}
	public void setVehicleno(String vehicleno) {
		this.vehicleno = vehicleno;
	}
	public String getVehicletype() {
		return vehicletype;
	}
	public void setVehicletype(String vehicletype) {
		this.vehicletype = vehicletype;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
