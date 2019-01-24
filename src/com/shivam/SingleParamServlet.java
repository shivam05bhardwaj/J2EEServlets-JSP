package com.shivam;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SingleParamServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		int i=Integer.parseInt(req.getParameter("Temp"));
		if(i>50) {
			res.sendRedirect("https://www.google.com");

		}	
		else {
		res.setContentType("text/html");

		req.getContentLength();
		res.setHeader("Name", "Shivam");
		res.addHeader("Name1", "Shivam");
		res.setIntHeader("Name2",12);
//		String[] formParameter= req.getParameterValues("Temp");
		String temp = req.getParameter("Temp");		
		String amount = req.getParameter("Currency");
		String[] checkBox= req.getParameterValues("typeOfWork");
		Conversion c= new Conversion();		
		
		float tempInF= c.TempConvertCtoF(temp);
		String outputForWork= c.WorkTypeSelected(checkBox);
		
		
		req.setAttribute("outputTemp", tempInF);
		req.setAttribute("outputCheckBox",outputForWork );
		
		
		RequestDispatcher view = req.getRequestDispatcher("results.jsp");
		view.forward(req, res);
		}
}
	
}
