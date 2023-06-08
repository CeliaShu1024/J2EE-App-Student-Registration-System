package com.dr.service.impl;

import com.dr.dao.AdmininfoDao;
import com.dr.entity.Admininfo;

public class AdmininfoServiceImpl {
	//search by AID and password
	public static int searchByUsernameAndPsw(String username, String psw) {
		Admininfo ai=new Admininfo();
		ai.setUsername(username);
		ai.setPsw(psw);
		Admininfo result = AdmininfoDao.searchByUsernameAndPsw(ai);
		if(result.getUsername()==null){
			return 0;
		}
		else {
			return 1;
		}
	}	
}
