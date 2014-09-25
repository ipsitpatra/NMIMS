<%@page language="java" import="java.sql.*"%>
<%@include file="../session.jsp"%>
<jsp:useBean id="room" scope="page" class="pbs.room" />
<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Patient Billing System - Room Details</title>
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
                <li><a href="other.jsp">Front page</a></li>
                <li ><a href="patient_detail.jsp">Patient Details</a></li>
                <li  id="current"><a href="room_detail.jsp">Room Details</a></li>
                <li><a href="search.jsp">Search</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
                <li><a href="about_us.jsp">About Us</a></li>
                
            </ul>
            <p class="hide"><a href="#top">Back to top</a></p>
        </div>
        
        <div id="wrap1">
            <div id="wrap2">
                
                <div id="topbox">
                    <strong><span class="hide">Currently viewing: </span><a href="other.jsp">Patient Billing System</a> &raquo; <a href="room_detail.jsp">Room Details</a></strong>
                </div>
                
                <div id="leftside">
                    <a id="sectionmenu"></a>
                    <p class="soft">Navigation Tabs</p>
                    <h1>Menu:</h1>
                    
                    <p class="menublock">
                        <a class="nav" href="room.jsp">Room Details</a><br class="hide" />
                        <a class="nav" href="room_count.jsp">Room Available</a><br class="hide" />
                        <a class="nav" href="search_r.jsp">Room Search</a><br class="hide" />
                        
                    </p>
                    
                </div>
                
                <a id="main"></a>
                <div id="content">
                    <h1>Room Details</h1>
                    <table cellspacing="10" width="100%" border="0">
                        <tr>
                            <td colspan="9" align="center"><strong><b>Information</b></strong> </td>
                        </tr>
                        <tr>
                            <td><div align="left"><strong>Room Number</strong></div></td>
                            <td><div align="left"><strong>Patient Name</strong></div></td>
                            <td><div align="left"><strong>Description</strong></div></td>
                            <td><div align="left"><strong>Status</strong></div></td>
                            <td><div align="left"><strong>Rate(per day)</strong></div></td>
                            <td><div align="left"><strong>Diagnose</strong></div></td>
                            
                        </tr><tr>
                        </tr>
                        <%
            String query = "SELECT room, pname,status,diagnose FROM IPSIT.patient";
                        
            ResultSet rs = room.selectroom(query);
            while (rs.next()) {
            	String rm =rs.getString(1); 
                String id = rs.getString(3);
                        %>
                        <tr>
                        
                            <td align="left" valign="top"><%=rm%></td>
                            <td align="left" valign="top"><%=rs.getString(2)%></td>
                            <td align="left" valign="top"><%=patient.getroom(rm)%></td>
                            <td align="left" valign="top"><%=patient.getStatus(id)%></td>
                            <td align="left" valign="top"><%=patient.getroomcost(rm)%></td>
                            <td align="left" valign="top"><%=rs.getString(4)%></td>
                            
                        </tr>
                        <%}
                        %>
                    </table> 
                </div>
            </div>    <div id="footer">&copy; 2008 Ipsit Patra<br />    
            </div>
        </div>
    </div>
</body>
