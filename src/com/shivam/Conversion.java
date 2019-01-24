package com.shivam;

public class Conversion {

	
	public float TempConvertCtoF(String temp) {
		float tempinC= Float.parseFloat(temp);
		return (tempinC*1.8f)+32;
	}

	public String WorkTypeSelected(String[] input) {
		StringBuffer sb= new StringBuffer();
		for(String i:input) {
			sb.append(i);
		}
		return sb.toString();
	}
//
	public void display1{
		System.out.println("");
	}

}
