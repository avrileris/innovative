<%@ taglib uri="../tld/dd4.tld" prefix="dd4"%>
<%@ page import="java.util.Collection"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="com.digitald4.common.model.*" %>
<%@ page import="com.digitald4.common.util.*" %>
<%@ page import="com.digitald4.iis.model.*" %>
<%@ page import="com.digitald4.common.tld.*" %>
<%@ page import="com.digitald4.common.component.Column"%>

<%Nurse nurse = (Nurse)request.getAttribute("nurse");
User user = nurse.getUser();
int year = (Integer)request.getAttribute("year");
int month = (Integer)request.getAttribute("month");%>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDjNloCm6mOYV0Uk1ilOTAclLbgebGCBQ0&v=3.exp&sensor=false&libraries=places"></script>
<script src="js/large-cal.js"></script>
<script src="js/angular/models.js"></script>
<script src="js/angular/connector.js"></script>
<script src="js/angular/main.js"></script>
<div ng-app="iis">
<article class="container_12">
	<section class="grid_8">
		<div id="tab-global" class="tabs-content">
			<ul class="tabs js-tabs same-height">
				<li class="current"><a href="#tab-calendar" title="Calendar">Calendar</a>
				<li><a href="#tab-general" title="General">General</a></li>
				<li><a href="#tab-license" title="Licenses">Licenses</a></li>
				<li><a href="#tab-pending" title="Pending Assessment">Pending Assessment</a></li>
				<li><a href="#tab-billing" title="Billing">Billing</a></li>
				<li><span>Advanced</span></li>
			</ul>
			<div class="tabs-content">
				<div id="tab-calendar">
					<div id="cal_sec">
						<dd4:largecal title="Nurse Calendar" userId="<%=nurse.getId()%>" year="<%=year%>" month="<%=month%>" events="<%=nurse.getAppointments()%>"/>
					</div>
				</div>
				<div id="tab-general">
					<div class="block-content form">
					<dd4:input type="<%=InputTag.Type.TEXT%>" object="<%=user%>" prop="first_name" label="First Name" async="true"/>
					<dd4:input type="<%=InputTag.Type.TEXT%>" object="<%=user%>" prop="last_name" label="Last Name" async="true"/>
					<label for="address">Address</label>
					<input type="text" id="address" name="address" value="<%=nurse.getAddress()%>" class="full-width" />
					<dd4:input type="<%=InputTag.Type.TEXT%>" object="<%=user%>" prop="email" label="Email Address" async="true"/>
					<dd4:input type="<%=InputTag.Type.TEXT%>" object="<%=nurse%>" prop="pay_rate" label="Pay Rate" async="true"/>
					<dd4:input type="<%=InputTag.Type.TEXT%>" object="<%=nurse%>" prop="pay_rate_2hr_soc" label="< 2hr SOC Pay Rate" async="true"/>
					<dd4:input type="<%=InputTag.Type.TEXT%>" object="<%=nurse%>" prop="pay_rate_2hr_roc" label="< 2hr ROC Pay Rate" async="true"/>
					<dd4:input type="<%=InputTag.Type.TEXT%>" object="<%=nurse%>" prop="mileage_rate" label="Mileage Rate" async="true"/>
					<dd4:input type="<%=InputTag.Type.TEXTAREA%>" object="<%=user%>" prop="notes" label="Notes" async="true"/>
					</div>
				</div>
				<div id="tab-license" licenses="<%=nurse.getId()%>"></div>
				<div id="tab-pending">
					<dd4:table title="Pending Assessment" columns="<%=(Collection<Column>)request.getAttribute(\"pendcols\")%>" data="<%=nurse.getPendAsses()%>"/>
				</div>
				<div id="tab-billing">
					<dd4:table title="Billing" columns="<%=(Collection<Column>)request.getAttribute(\"billcols\")%>" data="<%=nurse.getPayables()%>"/>
				</div>
			</div>
		</div>
	</section>
</article>
</div>
<script>
	google.maps.event.addDomListener(window, 'load', addMapAutoComplete(document.getElementById('address'), function(place) {
		saveAddress(place, '<%=nurse.getClass().getName()%>', <%=nurse.getId()%>);
	}));
</script>
