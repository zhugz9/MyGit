package com.mp.util;

public class CommonUtils {
	
	public static final int BeginIndex=3;

	public static boolean checkExt(String prefix){
		if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") 
        		|| prefix.equalsIgnoreCase("jpeg") || prefix.equalsIgnoreCase("pneg"))
			return true;
		return false;
	}
}
