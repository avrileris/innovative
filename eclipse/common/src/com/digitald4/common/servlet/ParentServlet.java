package com.digitald4.common.servlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digitald4.common.jpa.EntityManagerHelper;
import com.digitald4.common.model.User;
import com.digitald4.common.model.Company;
public class ParentServlet extends HttpServlet{
	private RequestDispatcher layoutPage;
	private static Company company;
	private static boolean emInit=false;
	public void init() throws ServletException{
		ServletContext sc = getServletContext();
		layoutPage = sc.getRequestDispatcher(getLayoutURL());
		if (layoutPage == null) {
			throw new ServletException(getLayoutURL()+" not found");
		}
		
		if(!emInit){
			emInit=true;
			try {
				EntityManagerHelper.init(sc.getInitParameter("dbdriver"), 
					sc.getInitParameter("dburl"), 
					sc.getInitParameter("dbuser"), 
					sc.getInitParameter("dbpass"));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

//		adminLayoutPage = context.getRequestDispatcher("/WEB-INF/jsp/adminLayout.jsp");
//
//		adminSearchPage = context.getRequestDispatcher("/WEB-INF/jsp/admin_search.jsp");
//

	}
	public Company getCompany(){
		if(company==null){
			try{
				ServletContext sc = getServletContext();
				company = Company.getInstance(sc);
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
		return company;
	}
	public RequestDispatcher getLayoutPage(){
		return layoutPage;
	}
	public String getLayoutURL(){
		return "/WEB-INF/jsp/layout.jsp";
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
		if(session.getAttribute("user") == null || ((User)session.getAttribute("user")).getId() < 1){
			session.setAttribute("redirect",request.getRequestURL().toString());
			response.sendRedirect("login");
			return false;
		}
		return true;
	}
	public static boolean checkAdminLogin(HttpServletRequest request, HttpServletResponse response)throws IOException{
		HttpSession session = request.getSession(true);
		User user = (User)session.getAttribute("user");
		if(user == null || user.getId() < 1 || !user.isAdmin()){
			session.setAttribute("redirect",request.getRequestURL().toString());
			response.sendRedirect("login");
			return false;
		}
		return true;
	}
}
