<%@ taglib uri="../tld/dd4.tld" prefix="dd4"%>
<%@ page import="java.util.Collection"%>
<%@ page import="com.digitald4.iis.model.*"%>
<%Appointment appointment = (Appointment)request.getAttribute("appointment");%>
<script src="js/assessment/module.js"></script>
<script src="js/assessment/services.js"></script>
<script src="js/assessment/controllers.js"></script>
<script src="js/assessment/directives.js"></script>
<article class="container_12">
	<a href="report.pdf?id=ass&app_id=<%=appointment.getId()%>">PDF Report</a>
	<dd4:asstab title="Patient Assessment" appointment="<%=appointment%>"/>
</article>
