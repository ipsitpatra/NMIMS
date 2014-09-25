
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<jsp:useBean id="room1" scope="page" class="pbs.room" />

<%@include file="../session.jsp"%>

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
	<li><a href="other.jsp">Front page</a></li>
	<li><a href="patient_detail.jsp">Patient Details</a></li>
	<li><a href="room_detail.jsp">Room Details</a></li>
	<li id="current"><a href="search.jsp">Search</a></li>
	<li><a href="../logout.jsp">Logout</a></li>
	<li><a href="about_us.jsp">About Us</a></li>

</ul>
<p class="hide"><a href="#top">Back to top</a></p>
</div>

<div id="wrap1">
<div id="wrap2">
<div id="topbox"><strong><span class="hide">Currently
viewing: </span><a href="other.jsp">Patient Billing System</a> &raquo; <a
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
<form id="form1" name="form1" method="post" action="search_r.jsp">
<div id="content">
<h1>Search patient</h1>
<table>
	<tr>
		<td>Patient Name :</td>
		<td><a href="search_p.jsp">Click Here</a></td>
	</tr>
	<tr>
		<td>Enter Room Number :</td>
		<td><input type="text" name="room_search" size="5" /></td>
		<td><input type="submit" value="Search" name="search_room" /></td>
	</tr>
</table>

<p class="hide"><a href="#top">Back to top</a></p>
</div>
</form>
<%
	if (request.getParameter("room_search") != null) {
%>
<table width="75%" border="0" align="center" cellspacing="20">
	<tr>
		<td><strong>Patient-Detail</strong></td>
	</tr>
	<tr>
		<td>
		<div align="center"><strong>Room Number</strong></div>
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
		String roomn = request.getParameter("room_search");
			String query = "SELECT room, pname, doctor, status from IPSIT.patient WHERE room = "
					+ roomn + "";

			int i = 0;
			ResultSet rs = room1.selectroom(query);
			while (rs.next()) {
				String id = rs.getString(1);
				i++;
	%>
	<tr>
		<td align="left" valign="top"><%=id%></td>
		<td align="left" valign="top"><%=rs.getString(2)%></td>
		<td align="left" valign="top"><%=patient.getdoc(rs.getString(3))%></td>
		<td align="left" valign="top"><%=patient.getroom(id)%></td>
		<td align="left" valign="top"><%=patient.getStatus(rs.getString(4))%></td>
		<td align="left" valign="top"><a
			href="patientinfo.jsp?id=<%=id%>">Patient Info</a></td>
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
