package com.dr.service.impl;

import java.util.List;

import com.dr.dao.StudentDao;
import com.dr.entity.Student;

public class StudentServiceImpl {
	//add new students
	public static int addStudent(String SID,String SName,String Gender,String Passport,String Programme,String Intake,String Regtime,String Nationality,String phone) {
		Student newStudent=new Student();
		newStudent.setSID(SID);
		newStudent.setSName(SName);
		newStudent.setGender(Gender);
		newStudent.setPassport(Passport);
		newStudent.setProgramme(Programme);
		newStudent.setIntake(Intake);
		newStudent.setRegtime(Regtime);
		newStudent.setNationality(Nationality);
		newStudent.setPhone(phone);
		return StudentDao.addNewStudent(newStudent);
	}
	
	//search by student ID
	public static Student searchByIC(String IC) {
		return StudentDao.searchByIC(IC);
	}
	
	//delete student by SID
	public static int deleteBySID(String SID) {
		return StudentDao.deleteStudent(SID);
	}
	
	//update student information
	public static int updateInfo(String SID,String SName,String Gender,String Passport,String Programme,String Intake,String Regtime,String Nationality,String phone) {
		Student newStudent=new Student();
		newStudent.setSID(SID);
		newStudent.setSName(SName);
		newStudent.setGender(Gender);
		newStudent.setPassport(Passport);
		newStudent.setProgramme(Programme);
		newStudent.setIntake(Intake);
		newStudent.setRegtime(Regtime);
		newStudent.setNationality(Nationality);
		newStudent.setPhone(phone);
		return StudentDao.updateStudent(newStudent);
	}
	
	//display all the students information
	public static List<Student>displayAll(){
		return StudentDao.displayAll();
	}
}
