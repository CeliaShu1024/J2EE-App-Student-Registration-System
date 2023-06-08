package com.dr.service.impl;

import com.dr.dao.FormDao;
import com.dr.entity.Form;

public class FormServiceImpl {
	public static Form searchBySID(String SID) {
		return FormDao.searchBySID(SID);
	}
	
	public static int addNewForm(String Q1,String Q2,String Q3,String Q4,String Q5,String SID) {
		Form newForm=new Form();
		newForm.setQ1(Q1);
		newForm.setQ2(Q2);
		newForm.setQ3(Q3);
		newForm.setQ4(Q4);
		newForm.setQ5(Q5);
		newForm.setSID(SID);
		return FormDao.addForm(newForm);
	}
	
	public static int updateForm(String Q1,String Q2,String Q3,String Q4,String Q5,String SID) {
		Form newForm=new Form();
		newForm.setQ1(Q1);
		newForm.setQ2(Q2);
		newForm.setQ3(Q3);
		newForm.setQ4(Q4);
		newForm.setQ5(Q5);
		newForm.setSID(SID);
		return FormDao.updateForm(newForm);
	}
}
