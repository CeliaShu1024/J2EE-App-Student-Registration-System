package com.dr;

import com.dr.dao.AdmininfoDao;
import com.dr.entity.Admininfo;
import com.dr.utils.ProcessPassword;
import com.oracle.wls.shaded.java_cup.runtime.lr_parser;

public class test {
	public static void main(String[] args) {
		Admininfo ai=new Admininfo();
		ai.setUsername("ddr");
		ai.setPsw("g3139mqed4q2rk8moikjuthpntfuqph");
		System.out.println(AdmininfoDao.searchByUsernameAndPsw(ai));
	}
}
