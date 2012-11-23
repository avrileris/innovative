package com.digitald4.order.servlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitald4.order.Company;
import com.digitald4.order.Customer;
public class ParentServlet extends HttpServlet{
	RequestDispatcher layoutPage;
	RequestDispatcher adminLayoutPage;
	RequestDispatcher adminSearchPage;
	RequestDispatcher uploadPage;
	Company company;
   public void init() throws ServletException{
      ServletContext context = getServletContext();
      layoutPage = context.getRequestDispatcher("/WEB-INF/jsp/layout.jsp");
      if (layoutPage == null) {
         throw new ServletException("/WEB-INF/jsp/layout.jsp not found");
      }

      adminLayoutPage = context.getRequestDispatcher("/WEB-INF/jsp/adminLayout.jsp");
      if (adminLayoutPage == null) {
	      throw new ServletException("/WEB-INF/jsp/adminLayout.jsp not found");
      }

	  adminSearchPage = context.getRequestDispatcher("/WEB-INF/jsp/admin_search.jsp");
	  if (adminSearchPage == null) {
		   throw new ServletException("/WEB-INF/jsp/adminSearch.jsp not found");
      }

	  uploadPage = context.getRequestDispatcher("/WEB-INF/jsp/upload.jsp");
	  if (uploadPage == null) {
		   throw new ServletException("/WEB-INF/jsp/upload.jsp not found");
      }

	  try{
	  company = Company.getCompany(getServletContext().getInitParameter("dburl"),getServletContext().getInitParameter("dbuser"),getServletContext().getInitParameter("dbpass"));
		if(company == null)
			System.out.println("*************************************company is null***********************************");
		else
		System.out.println("***************************company: "+company.getName()+"**********************************");

	  }
	  catch(Exception e){
		System.out.println("************************************error getting company*********************************");
	  	e.printStackTrace();
	  }
   }
   protected void goBack(HttpServletRequest request, HttpServletResponse response)throws IOException{
      HttpSession session = request.getSession();
      String backPage = (String) session.getAttribute("backPage");
		if(backPage != null){
      	session.removeAttribute("backPage");
      	response.sendRedirect(backPage);
		}
		else
			response.sendRedirect("home");
   }
   public static boolean checkLogin(HttpServletRequest request, HttpServletResponse response)throws IOException{
      HttpSession session = request.getSession(true);
		if(session.getAttribute("cust") == null || ((Customer)session.getAttribute("cust")).getCustID() < 1){
			session.setAttribute("redirect",request.getRequestURL().toString());
			response.sendRedirect("login");
			return false;
		}
		return true;
	}
   public static boolean checkAdminLogin(HttpServletRequest request, HttpServletResponse response)throws IOException{
      HttpSession session = request.getSession(true);
		Customer cust = (Customer)session.getAttribute("cust");
		if(cust == null || cust.getCustID() < 1 || !cust.getType().equals("admin")){
			session.setAttribute("redirect",request.getRequestURL().toString());
			response.sendRedirect("login");
			return false;
		}
		return true;
   }
}
