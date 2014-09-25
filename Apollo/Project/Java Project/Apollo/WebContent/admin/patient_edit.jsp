
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<%@include file="../session.jsp"%>

<html>
<head>
<title>Diagnose</title>
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

<div id="wrap1">
<div id="wrap2">

<div id="topbox"><strong><span class="hide">Currently
viewing: </span><a href="admin.jsp">Patient Billing System</a> &raquo; <a
	href="patient_detail.jsp">Patient Details</a>&raquo; <a
	href="patient_edit.jsp">Edit Patient</a></strong></div>

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
<h1>Edit Patient</h1>
<div class="story">
<%
	String id = request.getParameter("id");
	
%>

<table width="100%" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td><strong>Patient Status</strong></td>
	</tr>
	<tr>
		<td>
		<form id="form1" name="form1" method="post"
			action="patient_update.jsp">
		<table width="100%" border="0" cellspacing="4" cellpadding="0">
			<tr>
				<td width="25%">Patient ID</td>
				<td width="75%"><input type="text" name="id" value="<%=id%>"
					disabled /> <input type="hidden" name="pid" value="<%=id%>" /></td>
			</tr>
			<tr>
				<td width="25%">Patient Name</td>
				<td width="75%"><%= patient.name(id)%></td>
			</tr>
			
			<tr>
				<td>Diagnose</td>
				<td><select name='diagnose'>
					<option value='Yet to be Diagnosed'>Select...</option>
					<option value='Fracture'>Fracture</option>
					<option value='Flu'>Flu</option>
					<option value='T.B.'>T.B.</option>
					<option value='Cataract'>Cataract</option>
					<option value='Root Canal'>Root Canal</option>
				</select></td>
			</tr>
			<tr>
				<td>Treatment</td>
				<td><select name='treatment'>
					<option value='Rs.1000' Selected>A</option>
					<option value='Rs.3000'>B</option>
					<option value='Rs.5000'>C</option>
					<option value='Rs.6000'>D</option>
					<option value='Rs.10000'>E</option>
				</select></td>
			</tr>

			<tr>
				<td colspan="2">
				<div align="left"><input type="submit" name="Submit" 
					/></div>
				</td>
			</tr>
		</table>
		</form>
		</td>
	</tr>
</table>
<%
	
%>
</div>

</div>
</div>
<div id="footer">&copy; 2008 Ipsit Patra<br />
</div>
</div>
</div>
</body>

</html>
