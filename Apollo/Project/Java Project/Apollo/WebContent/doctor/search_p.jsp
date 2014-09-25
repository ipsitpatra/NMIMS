
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<%@include file="../session.jsp"%>
<jsp:useBean id="patient1" scope="page" class="pbs.patient" />



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Patient Billing System - Search</title>
<link rel="stylesheet" href="Style.css" type="text/css" />
</head>

<body>
<div id="container"><a id="top"></a>
<p class="hide">Skip to: <a href="#menu">site menu</a> | <a
	href="#sectionmenu">section menu</a> | <a href="#main">main content</a></p>

<div id="sitename">
<h1>Patient Billing System</h1>

<a id="menu"></a></div>

<div id="nav">
<ul>
	<li><a href="doctor.jsp">Front page</a></li>
	<li><a href="patient_detail.jsp">Patient Details</a></li>
	<li><a href="new_patient.jsp">New Patient</a></li>
	<li id="current"><a href="search.jsp">Search</a></li>
	<li><a href="../logout.jsp">Logout</a></li>
	<li><a href="about_us.jsp">About Us</a></li>

</ul>
<p class="hide"><a href="#top">Back to top</a></p>
</div>

<div id="wrap1">
<div id="wrap2">

<div id="topbox"><strong><span class="hide">Currently
viewing: </span><a href="doctor.jsp">Patient Billing System</a> &raquo; <a
	href="search.jsp">Search page</a></strong></div>

<div id="leftside"><a id="sectionmenu"></a>
<h1>Application info:</h1>
<p>Patient Billing System is built with JSP.</p>

<h1>Announcements:</h1>
<p><a href="#">Announcement1</a><br />
<a href="#">Announcement2</a><br />
<a href="#">Announcement3</a><br />
<a href="#">Announcement4</a><br />
<a href="#">Announcement5</a><br />
<a href="#">Announcement6</a><br />
</p>
<p class="smallcaps">PIB08 v1.0<br />
(Nov 1, 2008)</p>
</div>


<a id="main"></a>
<form id="form1" name="form1" method="post" action="search_p.jsp">
<div id="content">
<h1>Search patient</h1>
<table>
	<tr>
		<td>Enter Patient Name :</td>
		<td><input type="text" name="patient_search" value="" size="20" /></td>
		<td><input type="submit" value="Search" name="search_patient" /></td>
	</tr>
	
</table>

<p class="hide"><a href="#top">Back to top</a></p>
</div>
</form>

<%
	if (request.getParameter("patient_search") != null) {
%>
<h3>Patient Detail</h3>
<table width="60%" border="0" align="center" cellspacing="10">
	
	<tr>
		<td>
		<div align="center"><strong>Patient ID</strong></div>
		</td>
		<td>
		<div align="center"><strong>Patient Name</strong></div>
		</td>
		<td>
		<div align="center"><strong>Doctor</strong></div>
		</td>
		<td>
		<div align="center"><strong>Room</strong></div>
		</td>
		<td>
		<div align="center"><strong>Status</strong></div>
		</td>
		<td>
		<div align="center"><strong>Action</strong></div>
		</td>
	</tr>
	<%
		String patient = request.getParameter("patient_search");
			String query = "SELECT patient_id, pname, doctor, room , status FROM IPSIT.patient  WHERE pname LIKE '"
					+ patient + "'";

			ResultSet rs = patient1.selectpatient(query);
			int i = 0;
			while (rs.next()) {
				i++;
				String id = rs.getString(1);
	%>
	<tr>
		<td align="left" valign="top"><%=id%></td>
		<td align="left" valign="top"><%=rs.getString(2)%></td>
		<td align="left" valign="top"><%=patient1.getdoc(rs.getString(3))%></td>
		<td align="left" valign="top"><%=patient1.getroom(rs.getString(4))%></td>
		<td align="left" valign="top"><%=patient1.getStatus(rs.getString(5))%></td>
		<td align="left" valign="top"><a
			href="patient_edit.jsp?id=<%=id%>">Update Status</a></td>
	</tr>
	<%
		}
			if (i < 1) {
	%>
	<tr>
		<td align="center" colspan="5"><span class="style1">Data
		Insufficient</span></td>
	</tr>
	<%
		}
	%>
</table>
<%
	}
%>
</div>
<div id="footer">&copy; 2008 Ipsit Patra<br>
</div>
</div>
</div>
</body>
</html>