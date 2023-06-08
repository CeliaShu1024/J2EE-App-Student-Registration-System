package com.dr.utils;

import java.math.BigInteger;
import java.security.MessageDigest;

//process the password
public class ProcessPassword {
	public static final String KEY_SHA="SHA";
	
	public static String getResult(String inputStr) {
		System.out.println("before encryption:");
		System.out.println(inputStr);
		BigInteger bi=null;
		
		try {
			MessageDigest md=MessageDigest.getInstance(KEY_SHA);
			byte[] inputData=inputStr.getBytes();
			md.update(inputData);
			bi=new BigInteger(md.digest());
			System.out.println("after encryption:"+bi.toString(32));
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bi.toString(32);
	}
}