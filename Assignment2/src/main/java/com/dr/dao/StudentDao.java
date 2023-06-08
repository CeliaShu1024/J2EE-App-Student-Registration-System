package com.dr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dr.entity.Student;
import com.dr.utils.GetConnection;

public class StudentDao {
	//display all the students
	public static List<Student> displayAll(){
		List<Student>result=new ArrayList<>();
		Connection connection=GetConnection.getConnection();
		PreparedStatement pst;
		try {
			pst = connection.prepareStatement("select * from Student");
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				Student student=new Student();
				student.setSID(rs.getString("SID"));
				student.setSName(rs.getString("SName"));
				student.setGender(rs.getString("Gender"));
				student.setPassport(rs.getString("Passport"));
				student.setProgramme(rs.getString("Programme"));
				student.setIntake(rs.getString("Intake"));
				student.setRegtime(rs.getString("Regtime"));
				student.setNationality(rs.getString("Nationality"));
				student.setPhone(rs.getString("phone"));
				result.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	//add new students
	public static int addNewStudent(Student newStudent) {
		int status=0;
		Connection connection=GetConnection.getConnection();
		try {
			PreparedStatement pst=connection.prepareStatement("insert into Student(SID,SName,Gender,Passport,Programme,Intake,Regtime,Nationality,phone) values(?,?,?,?,?,?,?,?,?)");
			pst.setString(1, newStudent.getSID());
			pst.setString(2, newStudent.getSName());
			pst.setString(3, newStudent.getGender());
			pst.setString(4, newStudent.getPassport());
			pst.setString(5, newStudent.getProgramme());
			pst.setString(6, newStudent.getIntake());
			pst.setString(7, newStudent.getRegtime());
			pst.setString(8, newStudent.getNationality());
			pst.setString(9, newStudent.getPhone());
			status=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	//delete students
	public static int deleteStudent(String SID) {
		int status=0;
		Connection connection=GetConnection.getConnection();
		try {
			PreparedStatement pst=connection.prepareStatement("delete from Student where SID=?");
			pst.setString(1, SID);
			status=pst.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}
	
	//update student information
	public static int updateStudent(Student student) {
		int status=0;
		Connection connection=GetConnection.getConnection();
		try {
			PreparedStatement pst=connection.prepareStatement("update Student SET SName=?,Gender=?,Passport=?,Programme=?,Intake=?,Regtime=?,Nationality=?,phone=? where SID=?");
			pst.setString(1, student.getSName());
			pst.setString(2, student.getGender());
			pst.setString(3, student.getPassport());
			pst.setString(4, student.getProgramme());
			pst.setString(5, student.getIntake());
			pst.setString(6, student.getRegtime());
			pst.setString(7, student.getNationality());
			pst.setString(8, student.getPhone());
			pst.setString(9, student.getSID());
			status=pst.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}
	
	//search by SID
	public static Student searchByIC(String IC) {
		Student result=new Student();
		Connection connection=GetConnection.getConnection();
		System.out.println("StudentDao layer");
		System.out.println("passport="+IC);
		try {
			PreparedStatement pst=connection.prepareStatement("select * from Student where Passport=?");
			pst.setString(1, IC);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				result.setSID(rs.getString("SID"));
				result.setSName(rs.getString("SName"));
				result.setGender(rs.getString("Gender"));
				result.setPassport(rs.getString("Passport"));
				result.setProgramme(rs.getString("Programme"));
				result.setIntake(rs.getString("Intake"));
				result.setRegtime(rs.getString("Regtime"));
				result.setNationality(rs.getString("Nationality"));
				result.setPhone(rs.getString("phone"));
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
}
