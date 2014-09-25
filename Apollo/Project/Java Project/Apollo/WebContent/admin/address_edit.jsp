<%-- 
    Document   : address_edit
    Created on : Oct 13, 2008, 7:45:05 PM
    Author     : Ipsit
--%>

<%@include file="../session.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="user" scope="page" class="pbs.patient" />

<%
	if (request.getParameter("create") != null) {
		String hname = request.getParameter("hname");
		String haddress = request.getParameter("haddress");
		
			if (user.updateaddress(hname, haddress)) {
				response.sendRedirect("address.jsp");
			} else {
				response.sendRedirect("address.jsp?error");
			}
		} 
	
%>

<html>
<head>
<title>Patient Billing System - New Hospital</title>
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
	<li><a href="patient_detail.jsp">Patient Details</a></li>
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
	href="newuser.jsp">New Hospital</a></strong></div>

<div id="leftside"><a id="sectionmenu"></a>
<p class="soft">Navigation Tabs</p>
<h1>Menu:</h1>

<p class="menublock"><a class="nav" href="address_edit.jsp">New Address</a><br class="hide" />

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
<h1>Hospital</h1>
<form method="post" name="form1" action='address_edit.jsp'>
<fieldset>
<table cellpadding="5" cellspacing="0" width="25%">
	<tr>
		<td>New Hospital Name</td>
		<td><input name="hname" maxlength="35" /></td>
	</tr>
	<tr>
		<td>New Address</td>
		<td><input name="haddress" type="text" maxlength="60" /></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center"><input type="submit" name="create" />
		<input type="reset" /></td>

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
