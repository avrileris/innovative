package com.digitald4.iis.servlet;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digitald4.common.component.Column;
import com.digitald4.common.servlet.ParentServlet;
import com.digitald4.common.util.FormatText;
import com.digitald4.iis.model.Appointment;

public class PendingAssServlet extends ParentServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		try{
			if(!checkLoginAutoRedirect(request, response)) return;
			setupTable(request);
			getLayoutPage(request, "/WEB-INF/jsp/penass.jsp").forward(request, response);
		}
		catch(Exception e){
			throw new ServletException(e);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		doGet(request,response);
	}
	
	public static void setupTable(HttpServletRequest request) {
		ArrayList<Column> columns = new ArrayList<Column>();
		columns.add(new Column("Patient", "Link", String.class, true) {
			@Override
			public Object getValue(Object o) {
				Appointment app = (Appointment)o;
				return "<a href=\"assessment?id="+app.getId()+"\">"+app.getPatient()+"</a>";
			}
		});
		columns.add(new Column("Nurse", "Nurse", String.class, true));
		columns.add(new Column("Appointment Date", ""+Appointment.PROPERTY.START, String.class, false));
		columns.add(new Column("Time In", "Time In", String.class, false) {
			@Override
			public Object getValue(Object o) {
				return FormatText.formatTime(((Appointment)o).getTimeIn());
			}
		});
		columns.add(new Column("Time Out", "Time Out", String.class, true) {
			@Override
			public Object getValue(Object o) {
				return FormatText.formatTime(((Appointment)o).getTimeOut());
			}
		});
		columns.add(new Column("Percent Complete", "Percent Complete", String.class, false) {
			@Override
			public Object getValue(Object o) throws Exception {
				Appointment app = (Appointment)o;
				return app.getPercentComplete() + "%";
			}
		});
		request.setAttribute("penass_cols", columns);
		request.setAttribute("penass_data", Appointment.getPending());
	}
}
