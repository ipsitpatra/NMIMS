
<%-- 
    Document   : patientinfo
    Created on : Oct 14, 2008, 1:09:46 AM
    Author     : Ipsit
--%>
<%@include file="../session.jsp"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<%@ page import="java.util.Date"%>
<%
	Date d = new Date();
	int y = d.getYear() + 1900;
	int m = d.getMonth() + 1;
	String ardate = d.getDate() + "/" + m + "/" + y;
%>



<html>
<head>
<title>Patient Billing System - Patient Report</title>
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
	<li><a href="admin.jsp">Front page</a></li>
	<li id="current"><a href="patient_detail.jsp">Patient Details</a></li>
	<li><a href="room_detail.jsp">Room Details</a></li>
	<li><a href="search.jsp">Search</a></li>
	<li><a href="../logout.jsp">Logout</a></li>
	<li><a href="about_us.jsp">About Us</a></li>

</ul>
<p class="hide"><a href="#top">Back to top</a></p>
</div>
<%
	String Id = request.getParameter("id");
	ResultSet rs = patient
			.selectpatient("SELECT patient_id ,pname, doctor, age, blood, room , status ,diagnose,admit, discharge FROM IPSIT.patient WHERE patient_id ="
					+ Id + "");
	while (rs.next()) {
		String a = rs.getString(1);
		String room = rs.getString(6);
		String doctor = rs.getString(3);
		String id = rs.getString(8);
%>
<div id="wrap1">
<div id="wrap2">

<div id="topbox"><strong><span class="hide">Currently
viewing: </span><a href="admin.jsp">Patient Billing System</a> &raquo; <a
	href="patient_detail.jsp">Patient Details</a>&raquo; <a
	href="patientinfo.jsp">Patient Report</a></strong></div>

<div id="leftside"><a id="sectionmenu"></a>
<p class="soft">Navigation Tabs</p>
<h1>Menu:</h1>

<p class="menublock"><a class="nav" href="patient_detail.jsp">Back</a><br
	class="hide" />
</p>

</div>



<a id="main"></a>
<div id="content">
<h1>Patient Information</h1>



<table width="100%" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td><strong>Patient Report</strong></td>
	</tr>
	<tr>
		<td>
		<form id="form1" name="form1" method="post"
			action="patient_detail.jsp">
		<table width="100%" border="0" cellspacing="4" cellpadding="0">
			<tr>
				<td width="45%">Patient ID</td>
				<td width="55%">: <%=a%></td>
			</tr>
			<tr>
				<td width="45%">Patient Name</td>
				<td width="55%">: <%=rs.getString(2)%>
			</tr>

			<tr>
				<td width="45%">Doctor</td>
				<td width="55%">: <%=patient.getdoc(doctor)%></td>
			</tr>
			<tr>
				<td width="45%">Department</td>
				<td width="55%">: <%=patient.getdocdept(doctor)%></td>
			</tr>
			<tr>
				<td width="45%">Age</td>
				<td width="55%">: <%=rs.getString(4)%></td>
			</tr>
			<tr>
				<td width="45%">Blood</td>
				<td width="55%">: <%=patient.getblood(rs.getString(5))%></td>
			</tr>

			<tr>
				<td width="45%">Room Id</td>
				<td width="55%">: <%=patient.getroom(room)%></td>
			</tr>
			<tr>
				<td width="45%">Room</td>
				<td width="55%">: <%=room%></td>
			</tr>
			<tr>
				<td width="45%">Status</td>
				<td width="55%">: <%=patient.getStatus(rs.getString(7))%></td>
			</tr>
			<tr>
				<td width="45%">Admit Date</td>
				<td width="55%">: <%=rs.getString(9)%></td>
			</tr>

			<tr>
				<td width="45%">Diagnose</td>
				<td width="55%">: <%=id%></td>
			</tr>
			<tr>
				<td width="45%">Present Date</td>
				<td width="55%">: <%=ardate%></td>
			</tr>
			<tr>
				<td width="45%">Discharge Date</td>
				<td width="55%">: <%=rs.getString(10)%></td>
			</tr>
			<tr>
				<td width="45%">Treatment Balance</td>
				<td width="55%">: <%=patient.getbalance(a)%></td>
			</tr>
			<tr>
				<td width="45%">Room Balance</td>
				<td width="55%">: <%=patient.balance(a)%></td>
			</tr>
			<tr>
				<td width="45%">Actions</td>
				<td width="55%"><select name='Action'>
					<option value='0'>Select...</option>
					<option onClick="parent.location='print.jsp?id=<%=a%>'">Print</option>
					<option onClick="parent.location='discharge.jsp?id=<%=a%>'">Discharge</option>
					<option onClick="parent.location='deletepatient.jsp?id=<%=a%>'">Delete</option>
				</select>
			</tr>
			<tr>
				<td><a href="javascript:void(0)"
					onclick="window.open('print.jsp?id=<%=a%>')">Print View</a></td>
			</tr>
			<tr>
				<td><input type="submit" onClick="javascript:window.print();" name="Print"
					value="Print" /></td>
				<td>
				<div><input type="submit" name="Submit" value="Back" /></div>
				</td>
			</tr>

		</table>
		</form>
		</td>
	</tr>
</table>
<%
	}
%>
</div>
</div>
<div id="footer">&copy; 2008 Ipsit Patra<br />
</div>
</div>
</div>
</body>