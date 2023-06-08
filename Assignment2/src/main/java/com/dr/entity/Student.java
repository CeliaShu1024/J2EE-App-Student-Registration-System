package com.dr.entity;

public class Student {
	//student ID
	private String SID;
	
	//student name
	private String SName;
	
	//gender
	private String Gender;
	
	//passport
	private String Passport;
	
	//programme
	private String Programme;
	
	//intake
	private String Intake;
	
	//registration time
	private String Regtime;
	
	//nationality
	private String Nationality;
	
	//phone
	private String phone;

	public String getSID() {
		return SID;
	}

	public void setSID(String sID) {
		SID = sID;
	}

	public String getSName() {
		return SName;
	}

	public void setSName(String sName) {
		SName = sName;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getPassport() {
		return Passport;
	}

	public void setPassport(String passport) {
		Passport = passport;
	}

	public String getProgramme() {
		return Programme;
	}

	public void setProgramme(String programme) {
		Programme = programme;
	}

	public String getIntake() {
		return Intake;
	}

	public void setIntake(String intake) {
		Intake = intake;
	}

	public String getRegtime() {
		return Regtime;
	}

	public void setRegtime(String regtime) {
		Regtime = regtime;
	}

	public String getNationality() {
		return Nationality;
	}

	public void setNationality(String nationality) {
		Nationality = nationality;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
