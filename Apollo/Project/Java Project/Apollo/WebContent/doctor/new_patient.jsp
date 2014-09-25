<%-- 
    Document   : new_patient
    Created on : Oct 13, 2008, 7:45:05 PM
    Author     : Ipsit
--%>
<%@ page import="java.util.Date"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="p" scope="page" class="pbs.patient" />
<%@include file="../session.jsp"%>
<%
		Date d = new Date();
		int y = d.getYear() + 1900;
		int m= d.getMonth() + 1;
		String ardate = d.getDate() + "/" + m + "/" +  y;
%>

<% 
if (request.getParameter("create") != null)
{
String room = request.getParameter("room");
String name = request.getParameter("name");
String age = request.getParameter("age");
String address = request.getParameter("address");
String blood = request.getParameter("blood");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String sex = request.getParameter("sex");
String doctor = request.getParameter("doctor");
String admit = ardate;
if (p.newpatient(name,age,sex,blood,address,phone,email,doctor,room,admit))
    {
    response.sendRedirect("patient_detail.jsp");
} else {
    response.sendRedirect("patient_detail.jsp?error");
}
}
%>

<html>
<head>
<title>Patient Billing System - New Patient</title>
<link rel="stylesheet" href="Style.css" type="text/css" />
</head>

<body>


<div id="container"><a id="top"></a>
<p class="hide">Skip to: <a href="#menu">site menu</a> | <a
	href="#sectionmenu">section menu</a> | <a href="#main">main content</a></p>

<div id="sitename">
<h1>Patient Billing System</h1>
<span> Team Apollo </span> <a id="menu"></a></div>

<div id="nav">
<ul>
	<li><a href="doctor.jsp">Front page</a></li>
	<li><a href="patient_detail.jsp">Patient Details</a></li>
	<li id="current"><a href="new_patient.jsp">New Patient</a></li>
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
	href="patient_detail.jsp">Patient Details</a>&raquo; <a
	href="new_patient.jsp">New Patient</a></strong></div>

<div id="leftside"><a id="sectionmenu"></a>
<p class="soft">Navigation Tabs</p>
<h1>Menu:</h1>

<p class="menublock"><a class="nav" href="patient_detail.jsp">Patient
Details</a><br class="hide" />

</p>

</div>

<div id="rightside">
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
<div id="content">
<h1>New Patient</h1>
<form method="post" name="form1" action='new_patient.jsp'>
<fieldset><legend>Add Patient</legend>
<table cellpadding="5" cellspacing="0" width="25%">
	<tr>
		<td>Name</td>
		<td><input name="name" maxlength="35" /></td>
	</tr>
	<tr>
		<td>Age</td>
		<td><input name="age" maxlength="2" /></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input name="address" maxlength="50" /></td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td><input name="phone" maxlength="10" /></td>
	</tr>
	<tr>
		<td>E-mail Id</td>
		<td><input name="email" maxlength="35" /></td>
	</tr>

	<tr>
		<td>Blood Group</td>
		<td><select name='blood'>
			<option>Select...</option>
			<option value='7'>O positive</option>
			<option value='8'>O negative</option>
			<option value='1'>A positive</option>
			<option value='2'>A negative</option>
			<option value='3'>B positive</option>
			<option value='4'>B negative</option>
			<option value='5'>AB positive</option>
			<option value='6'>AB negative</option>
			<option value='9'>other Rare</option>
		</select></td>
	</tr>
	<tr>
		<td>Sex</td>
		<td><select name='sex'>
			<option value='0'>Select</option>
			<option value='Male'>Male</option>
			<option value='Female'>Female</option>
		</select></td>
	</tr>
	<tr>
		<td>Ward Selection</td>
		<td><select name='room'>
			<option value='0'>Select...</option>
			<option value='1'>ICU A/C</option>
			<option value='2'>ICU non-A/C</option>
			<option value='3'>Recovery</option>
			<option value='4'>General A/C</option>
			<option value='5'>General non-A/C</option>
		</select></td>
	</tr>
	<tr>
		<td>Doctor In-Charge</td>
		<td><select name='doctor'>
			<option value='0'>Select..</option>
			<option value='1'>Dr. Gupta(MBChB)</option>
			<option value='2'>Dr. Pandya(MBBS)</option>
			<option value='3'>Dr. C(MD)</option>
			<option value='4'>Dr. D(MD)</option>
			<option value='5'>Dr. G(MD)</option>
		</select></td>
	</tr>
	
	<tr>
		<td>Admitted on:</td>
		<td><input maxlength="10" value="<%=ardate%>" /></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" name="create" />
		 <input type="reset"  /></td>
	                            
	</tr>

</table>

</fieldset>
</form>


</div>
</div>
<div id="footer">&copy; 2008 Ipsit Patra<br />
</div>
</div>
</div>
</body>

</html>
