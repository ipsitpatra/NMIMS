
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../session.jsp"%>
<html>
<head>
<title>Patient Billing System - Patient Details</title>
<link rel="stylesheet" href="Style.css" type="text/css" />
</head>

<body>
<div id="container"><a id="top"></a>
<p class="hide">Skip to: <a href="#menu">site menu</a> | <a
	href="#sectionmenu">section menu</a> | <a href="#main">main content</a></p>

<div id="sitename">
<h1>Patient Billing System</h1>
<span> Welcome </span> <a id="menu"></a></div>

<div id="nav">
<ul>
	<li><a href="doctor.jsp">Front page</a></li>
	<li id="current"><a href="patient_detail.jsp">Patient Details</a></li>
	<li><a href="new_patient.jsp">New Patient</a></li>
	<li><a href="search.jsp">Search</a></li>
	<li><a href="../logout.jsp">Logout</a></li>
	<li><a href="about_us.jsp">About Us</a></li>

</ul>
<p class="hide"><a href="#top">Back to top</a></p>
</div>

<div id="wrap1">
<div id="wrap2">

<div id="topbox"><strong><span class="hide">Currently
viewing: </span><a href="doctor.jsp">Patient Billing System</a> &raquo; <a
	href="patient_detail.jsp">Patient Details</a></strong></div>

<div id="leftside"><a id="sectionmenu"></a>
<p class="soft">Navigation Tabs</p>
<h1>Menu:</h1>

<p class="menublock"><a class="nav" href="search_p.jsp">Search
Patient</a><br class="hide" />
</p>

</div>



<a id="main"></a>
<div id="content">

<table cellspacing="19" width="100%" border="0">
<tr><td><b>Patient Details</b></td></tr>
	<tr>
		<td>
		<div align="left"><strong>ID</strong></div>
		</td>
		<td>
		<div align="left"><strong>Patient Name</strong></div>
		</td>
		<td>
		<div align="left"><strong>Doctor</strong></div>
		</td>
		<td>
		<div align="left"><strong>Status</strong></div>
		</td>
		<td>
		<div align="left"><strong>Diagnose</strong></div>
		</td>
		<td>
		<div align="left"><strong>Check-In Time</strong></div>
		</td>
		<td>
		<div align="left"><strong>Action</strong></div>
		</td>
	</tr>
	<tr>
	</tr>
	<%
		String query = "SELECT patient_id, pname, doctor, status, diagnose, admit FROM  IPSIT.patient ORDER BY status";
		ResultSet rs = patient.selectpatient(query);
		while (rs.next()) {
			String id = rs.getString(1);
	%>
	<tr>
		<td align="left" valign="top"><%=id%></td>
		<td align="left" valign="top"><%=rs.getString(2)%></td>
		<td align="left" valign="top"><%=patient.getdoc(rs.getString(3))%></td>
		<td align="left" valign="top"><%=patient.getStatus(rs.getString(4))%></td>
		<td align="left" valign="top"><%=rs.getString(5)%></td>
		<td align="center" valign="top"><%=rs.getString(6)%></td>
		<td align="left" valign="top"><select name='Action'>
			<option value='0'>Select...</option>
			<option onClick="parent.location='patientinfo.jsp?id=<%=id %>'">Details</option>
			<option onClick="parent.location='patient_edit.jsp?id=<%=id %>'">Report</option>

		</select></td>
	</tr>
	<%
		}
	%>
</table>
</div>
</div>
<div id="footer">&copy; 2008 Ipsit Patra<br />
</div>
</div>
</div>
</body>