package net.ems.model;

//Importing the required libraries
import java.io.Serializable;
import java.time.LocalDate;

//Declaring all the variables required to perform the Donation
public class Donor implements Serializable{
	private static final long serialVersionUID = 1L;
	private String firstName;
	private String lastName;
	private String gender;
	private String age;
	private LocalDate dob;
	private String bloodgrp;
	private String phoneno;
	private String state;
	private String city;
	private String aids;
	private String cancer;
	private String pierce;
	
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	public String getBloodgrp() {
		return bloodgrp;
	}
	public void setBloodgrp(String bloodgrp) {
		this.bloodgrp = bloodgrp;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAids() {
		return aids;
	}
	public void setAids(String aids) {
		this.aids = aids;
	}
	public String getCancer() {
		return cancer;
	}
	public void setCancer(String cancer) {
		this.cancer = cancer;
	}
	public String getPierce() {
		return pierce;
	}
	public void setPierce(String pierce) {
		this.pierce = pierce;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
