<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../session.jsp"%>

<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<%@ page import="java.util.Date"%>
<%
		Date d = new Date();
		int y = d.getYear() + 1900;
		int m= d.getMonth() + 1;
		String ardate = d.getDate() + "/" + m + "/" +  y;
%>
<html>
    <head>
        <title>Logged-in</title>
        <link rel="stylesheet" href="Style.css" type="text/css"/>
    </head>
    
    <body>
        <div id="container">
            <a id="top"></a><p class="hide">Skip to: <a href="#menu">site menu</a> | <a href="#sectionmenu">section menu</a> | <a href="#main">main content</a></p>
            
            <div id="sitename">
                <h1>Patient Billing System</h1>
                <span> Team Apollo </span>
                <a id="menu"></a>
            </div>
            
            <div id="nav">
                <ul>
                   <li id="current"><a href="other.jsp">Front page</a></li>
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
                    
                    <div id="topbox">
                        <strong><span class="hide">Currently viewing: </span><a>Patient Billing System</a> &raquo; <a>Front page</a></strong>
                    </div>
                    
                    <div id="leftside">
                        <a id="sectionmenu"></a>
                        <p class="soft">Accounts Tabs</p>
                        <h1>Menu:</h1>
                        
                        <p class="menublock">
                           
                         
                            <a class="nav" href="changepwd.jsp">Change password</a><br class="hide" />
                        </p>
                        
                    </div><%
                    String query = "SELECT hname,haddress FROM  IPSIT.hospital";
		ResultSet rs = patient.selectpatient(query);
		while (rs.next()) {
			String id = rs.getString(1);%>
                    <div id="rightside">
                        <h1>Hospital:</h1>
                        <p><%=id %></p>
                        <p><%=rs.getString(2)%></p>
                        
           <%
           }
		%>             
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
                    
                    <div id="content">
                        <h2>Staff</h2>
                        <img src="img/gravatar-leaf.jpg" height="80" width="80"/>
                        <p><a href="doctor/doctor.jsp">Log-in</a> : <%=ardate%></p>
                        <p>.</p>
                        <p>.</p>
                        <p>.</p>
                        <h3>Patient</h3>
                        <p><a href="new_patient.jsp">New Patient</a></p>
                        <h3>Room</h3>
                        <p><a href="room_detail.jsp">Room Detail</a></p>
                        <p><a href="room.jsp">Room Information</a></p>
                        <p><a href="room_count.jsp">Room Count</a></p>
                        <p class="hide"><a href="#top">Back to top</a></p>
                    </div>
                </div>    <div id="footer">&copy; 2008 Ipsit Patra<br />    
                </div>
            </div>
        </div>
    </body>
</html>