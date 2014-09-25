
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Thank You</title>
<link rel="stylesheet" href="Style.css" type="text/css" />
</head>

<body>
<div id="container"><a id="top"></a>
<p class="hide">Skip to: <a href="#menu">site menu</a> | <a
	href="#sectionmenu">section menu</a> | <a href="#main">main content</a></p>

<div id="sitename">
<h1>Patient Billing System</h1>

</div>


<div id="wrap1">
<div id="wrap2">

<p align="center"><strong>Patient Billing System Logged-out</strong>
</p>
<div id="leftside"><a id="sectionmenu"></a>
<p class="soft">Navigation Tabs</p>

<p class="menublock"><a class="nav" href="#">About Us</a><br
	class="hide" />

<a class="hide" href="#top">K</a></p>

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
<div align="center">
<h1>You have been successfully logged out</h1>
</div>
<br>
<div align="center">
<h2>Thanks for using this application</h2>
</div>
<br>
<br>
<div align="center">
<h4><a href='front.jsp'>Click here to login again</a></h4>
</div>
<%
	session.setAttribute("loginstatus", "0");
%>
</div>
</div>
<div id="footer">&copy; 2008 Ipsit Patra<br />
</div>
</div>
</div>
</body>
</html>
