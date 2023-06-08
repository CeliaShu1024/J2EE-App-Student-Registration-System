package com.dr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dr.entity.Admininfo;
import com.dr.utils.GetConnection;

public class AdmininfoDao {
	//search admininfo
	public static Admininfo searchByUsernameAndPsw(Admininfo ai) {
		Admininfo result=new Admininfo();
		try {
			Connection connection=GetConnection.getConnection();
			PreparedStatement pst=connection.prepareStatement("select * from Admininfo where username=? and psw=?");
			pst.setString(1,ai.getUsername());
			pst.setString(2,ai.getPsw());
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				result.setUsername(rs.getString("username"));
				result.setPsw(rs.getString("psw"));
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
}
