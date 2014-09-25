
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../session.jsp"%>
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

<div id="content">
<h1>Search patient</h1>
<table>
	<tr>
		<td>Patient Name :</td>
		<td><a href="search_p.jsp">Click Here</a></td>
	</tr>
	
</table>

<p class="hide"><a href="#top">Back to top</a></p>
</div>



</div>
<div id="footer">&copy; 2008 Ipsit Patra<br>
</div>
</div>
</div>
</body>
</html>