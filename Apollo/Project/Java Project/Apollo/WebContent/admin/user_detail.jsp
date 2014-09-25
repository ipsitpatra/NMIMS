
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../session.jsp"%>
<html>
<head>
<title>Patient Billing System - User Details</title>
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
	<li id="current"><a href="admin.jsp">Front page</a></li>
                    <li ><a href="patient_detail.jsp">Patient Details</a></li>
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
	href="user_detail.jsp">User Details</a></strong></div>

<div id="leftside"><a id="sectionmenu"></a>
<p class="soft">Navigation Tabs</p>
<h1>Menu:</h1>

<p class="menublock"><a class="nav" href="newuser.jsp">New User</a><br class="hide" />
</p>

</div>



<a id="main"></a>
<div id="content">
<h1>User Details</h1>
<table cellspacing="19" width="100%" border="0">

	<tr>
		<td>
		<div align="left"><strong>User ID</strong></div>
		</td>
		<td>
		<div align="left"><strong>User Name</strong></div>
		</td>
		<td>
		<div align="left"><strong>Last Login </strong></div>
		</td>
		<td>
		<div align="left"><strong>Level of Clearance</strong></div>
		</td>
		<td>
		<div align="left"><strong>Action</strong></div>
		</td>
	</tr>
	<tr>
	</tr>
	<%
		String query = "SELECT userid, username, lastlogin, level FROM  IPSIT.login ORDER BY level";
		ResultSet rs = patient.selectpatient(query);
		while (rs.next()) {
			String id = rs.getString(1);
	%>
	<tr>
		<td align="left" valign="top"><%=id%></td>
		<td align="left" valign="top"><%=rs.getString(2)%></td>
		<td align="left" valign="top"><%=rs.getString(3)%></td>
		<td align="left" valign="top"><%=rs.getString(4)%></td>
		<td align="left" valign="top"><a
			href="deleteuser.jsp?id=<%=id%>">Delete</a></td>
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