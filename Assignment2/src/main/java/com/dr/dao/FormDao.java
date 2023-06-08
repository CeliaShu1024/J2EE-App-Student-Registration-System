package com.dr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dr.entity.Form;
import com.dr.utils.GetConnection;

public class FormDao {
	public static int addForm(Form form) {
		int status=0;
		Connection connection=GetConnection.getConnection();
		try {
			PreparedStatement pst=connection.prepareStatement("insert into Form(Q1,Q2,Q3,Q4,Q5,SID) values(?,?,?,?,?,?)");
			pst.setString(1, form.getQ1());
			pst.setString(2, form.getQ2());
			pst.setString(3, form.getQ3());
			pst.setString(4, form.getQ4());
			pst.setString(5, form.getQ5());
			pst.setString(6, form.getSID());
			status=pst.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}
	
	public static int updateForm(Form form) {
		int status=0;
		Connection connection=GetConnection.getConnection();
		try {
			PreparedStatement pst=connection.prepareStatement("update Form SET Q1=?,Q2=?,Q3=?,Q4=?,Q5=? where SID=?");
			pst.setString(1, form.getQ1());
			pst.setString(2, form.getQ2());
			pst.setString(3, form.getQ3());
			pst.setString(4, form.getQ4());
			pst.setString(5, form.getQ5());
			pst.setString(6, form.getSID());
			status=pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	//delete the form
	public static int deleteForm(int FID) {
		int status=0;
		Connection connection=GetConnection.getConnection();
		try {
			PreparedStatement pst=connection.prepareStatement("delete from Form where FID=?");
			pst.setInt(1, FID);
			status=pst.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}
	
	public static Form searchBySID(String SID) {
		Form newForm=new Form();
		Connection connection=GetConnection.getConnection();
		try {
			PreparedStatement pst = connection.prepareStatement("select * from Form where SID=?");
			pst.setString(1, SID);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				newForm.setFID(rs.getInt("FID"));
				newForm.setQ1(rs.getString("Q1"));
				newForm.setQ2(rs.getString("Q2"));
				newForm.setQ3(rs.getString("Q3"));
				newForm.setQ4(rs.getString("Q4"));
				newForm.setQ5(rs.getString("Q5"));
				newForm.setSID(rs.getString("SID"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newForm;
	}
}
