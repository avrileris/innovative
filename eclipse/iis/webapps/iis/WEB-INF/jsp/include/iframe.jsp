<%@page import="com.digitald4.common.util.*" %>
<%@page import="com.digitald4.common.model.*" %>
<%@page import="com.digitald4.common.servlet.*" %>
<%@page import="java.io.*"%>
<%@page import="java.lang.Math.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<%User user = (User)session.getAttribute("user");%>
	<div id="white" style="text-align:left;padding:0px;margin:0px;background-image:url(img/TopPane1.jpg);width:278px;height:145px;">
		<div style="width:278px;height:145px;margin:2px 0px 0px 5px;">
				<%if(user!=null && user.getId() > 0){%>
						<div style="font-size:120%;font-weight:bold;">Insurance Co by City (Active Clients)</div>

							&nbsp;<%="Corona"+" (50)"%><br/>
								&nbsp;&nbsp;->&nbsp;<a href="search?SearchData=5%>" target="_parent"><%="Click Here"+" (5)"%></a><br/>
							<br/>

				<%}else{%>
					<a href="login" target="_parent">Not Logged In</a>

				<%}%>

		</div>
	</div>
