package com.digitald4.iis.servlet;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.digitald4.common.component.Column;
import com.digitald4.common.servlet.ParentServlet;
import com.digitald4.common.tld.LargeCalTag;
import com.digitald4.common.util.FormatText;
import com.digitald4.iis.model.Appointment;
import com.digitald4.iis.model.Nurse;

public class NurseServlet extends ParentServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
		try {
			if (!checkLoginAutoRedirect(request, response)) return;
			String action = request.getParameter("action");
			if (action != null && action.equalsIgnoreCase("cal")) {
				processCalendarRequest(request, response);
				return;
			}
			request.setAttribute("nurse", Nurse.getInstance(Integer.parseInt(request.getParameter("id"))));
			request.setAttribute("year", Calendar.getInstance().get(Calendar.YEAR));
			request.setAttribute("month", Calendar.getInstance().get(Calendar.MONTH) + 1);
			ArrayList<Column> columns = new ArrayList<Column>();
			columns.add(new Column("Patient", "", String.class, true) {
				@Override public Object getValue(Object dao) throws Exception {
					return "<a href=\"assessment?id="+((Appointment)dao).getId()+"\">"+((Appointment)dao).getPatient()+"</a>";
				}
			});
			columns.add(new Column("Date", ""+Appointment.PROPERTY.START, String.class, false) {
				@Override public Object getValue(Object dao) throws Exception {
					return FormatText.formatDate(((Appointment)dao).getStart());
				}
			});
			columns.add(new Column("Time In", "Time In", String.class, false) {
				@Override public Object getValue(Object o) {
					return FormatText.formatTime(((Appointment)o).getTimeIn());
				}
			});
			columns.add(new Column("Time Out", "Time Out", String.class, true) {
				@Override public Object getValue(Object o) {
					return FormatText.formatTime(((Appointment)o).getTimeOut());
				}
			});
			columns.add(new Column("Percent Complete", "Percent Complete", String.class, false) {
				@Override public Object getValue(Object dao) throws Exception {
					return ((Appointment)dao).getPercentComplete() + "%";
				}
			});
			columns.add(new Column("Action", ""+Appointment.PROPERTY.CANCELLED, Boolean.class, true));
			request.setAttribute("pendcols", columns);
			columns = new ArrayList<Column>();
			columns.add(new Column("Patient", "", String.class, true) {
				@Override public Object getValue(Object dao) throws Exception {
					return "<a href=\"assessment?id="+((Appointment)dao).getId()+"\">"+((Appointment)dao).getPatient()+"</a>";
				}
			});
			columns.add(new Column("Date", ""+Appointment.PROPERTY.START, String.class, false) {
				@Override public Object getValue(Object dao) throws Exception {
					return FormatText.formatDate(((Appointment)dao).getStart());
				}
			});
			columns.add(new Column("Billed Hours", "", String.class, false) {
				@Override public Object getValue(Object o) {
					return ((Appointment)o).getBilledHours();
				}
			});
			columns.add(new Column("Pay Rate", "", String.class, true) {
				@Override public Object getValue(Object o) {
					return FormatText.CURRENCY.format(((Appointment)o).getPayRate());
				}
			});
			columns.add(new Column("Billed Mileage", "", String.class, true) {
				@Override public Object getValue(Object o) {
					return ((Appointment)o).getMileage();
				}
			});
			columns.add(new Column("Total Payment", "", String.class, false) {
				@Override public Object getValue(Object dao) throws Exception {
					return FormatText.CURRENCY.format(((Appointment)dao).getTotalPayment());
				}
			});
			request.setAttribute("billcols", columns);
			getLayoutPage(request, "/WEB-INF/jsp/nurse.jsp").forward(request, response);
		}
		catch(Exception e){
			throw new ServletException(e);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
		try {
			if (!checkLoginAutoRedirect(request, response)) return;
			String action = request.getParameter("action");
			if (action != null && action.equalsIgnoreCase("cal")) {
				processCalendarRequest(request, response);
				return;
			}
			Nurse nurse = Nurse.getInstance(Integer.parseInt(request.getParameter("id")));
			String paramName=null;
			Enumeration<String> paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				paramName = paramNames.nextElement();
				if (paramName.toLowerCase().startsWith("nurse.")) {
					Object attr = request.getParameter(paramName);
					nurse.setPropertyValue(paramName, (String)attr);
				} else if (paramName.toLowerCase().startsWith("user.")) {
					Object attr = request.getParameter(paramName);
					nurse.getUser().setPropertyValue(paramName, (String)attr);
				}
			}
			nurse.save();
		} catch (Exception e) {
			throw new ServletException(e);
		}
		doGet(request,response);
	}
	
	private void processCalendarRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		Nurse nurse = Nurse.getInstance(Integer.parseInt(request.getParameter("id")));
		int year = Integer.parseInt(request.getParameter("year"));
		int month = Integer.parseInt(request.getParameter("month"));
		LargeCalTag cal = new LargeCalTag();
		cal.setTitle("Nurse Calendar");
		cal.setUserId(nurse.getId());
		cal.setYear(year);
		cal.setMonth(month);
		cal.setEvents(nurse.getAppointments());
		JSONObject json = new JSONObject();
		try {
			json.put("valid", true)
				.put("html", cal.getOutput());
			response.setContentType("application/json");
			response.setHeader("Cache-Control", "no-cache, must-revalidate");
			response.getWriter().println(json);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
