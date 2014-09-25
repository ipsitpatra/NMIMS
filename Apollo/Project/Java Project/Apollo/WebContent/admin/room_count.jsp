
<%-- 
    Document   : room
    Created on : Oct 14, 2008, 12:52:08 AM
    Author     : Ipsit
--%>

<jsp:useBean id="room" scope="page" class="pbs.room" />
<%@page language="java" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../session.jsp"%>
<html>
<head>
    <title>Patient Billing System - Room Information</title>
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
                <li><a href="admin.jsp">Front page</a></li>
                <li ><a href="patient_detail.jsp">Patient Details</a></li>
                <li  id="current"><a href="room_detail.jsp">Room Details</a></li>
                <li><a href="search.jsp">Search</a></li>
                <li><a href="logout.jsp">Logout</a></li>
                <li><a href="about_us.jsp">About Us</a></li>
                
            </ul>
            <p class="hide"><a href="#top">Back to top</a></p>
        </div>
            
        <div id="wrap1">
            <div id="wrap2">
                
                <div id="topbox">
                    <strong><span class="hide">Currently viewing: </span><a href="admin.jsp">Patient Billing System</a> &raquo; <a href="room_detail.jsp">Room Details</a> &raquo; <a href="room_count.jsp">Room Information</a></strong>
                </div>
                
                <div id="leftside">
                    <a id="sectionmenu"></a>
                    <p class="soft">Navigation Tabs</p>
                    <h1>Menu:</h1>
                    
                    <p class="menublock">
                        <a class="nav" href="room_detail.jsp">Back</a><br class="hide" />
                        
                    </p>
                    
                </div>
                <a id="main"></a>
                <div id="content">
                    <%
            char Id = '1';
            char Id2 = '2';
            char Id3 = '3';
            char Id4 = '4';
            char Id5 = '5';
            
          
            String query = "SELECT COUNT(room) FROM IPSIT.patient WHERE status = 1 AND room=" + Id;
            ResultSet rs = room.selectroom(query);
            while (rs.next()) {
                String iid = rs.getString(1);
                    %>   
                    <h3>ICU A/C</h3>
                    <table cellspacing="13" width="100%" border="0">
                        
                        <tr>
                            <td><div align="left"><strong>Room Id</strong></div></td>
                            <td><div align="left"><strong>Rooms</strong></div></td>
                            <td><div align="left"><strong>Occupied</strong></div></td>
                            
                        </tr>
                        <tr>
                            <td align="left" valign="top"><%=Id%></td>
                            <td align="left" valign="top">15</td>
                            <td align="left" valign="top"><%=iid%></td>
                            
                        </tr>
                    </table>
                    
                    <%}
                    %>
                    
                    <%
         
           
            query = "SELECT COUNT(room) FROM IPSIT.patient WHERE status = 1 AND room=" + Id2;
            rs = room.selectroom(query);
            while (rs.next()) {
                String iid2 = rs.getString(1);
                    %>   
                    <h3>ICU Non A/C</h3>
                    <table cellspacing="13" width="100%" border="0">
                        
                        <tr>
                            <td><div align="left"><strong>Room Id</strong></div></td>
                            <td><div align="left"><strong>Rooms</strong></div></td>
                            <td><div align="left"><strong>Occupied</strong></div></td>
                            
                        </tr>
                        <tr>
                            <td align="left" valign="top"><%=Id2%></td>
                            <td align="left" valign="top">15</td>
                            <td align="left" valign="top"><%=iid2%></td>
                            
                        </tr>
                    </table>
                    
                    <%}
                    %>
                    
                    <%
            query = "SELECT COUNT(room) FROM IPSIT.patient WHERE status = 1 AND room=" + Id3;
            rs = room.selectroom(query);
            while (rs.next()) {
                String iid3 = rs.getString(1);
                    %>   
                    <h3>Recovery</h3>
                    <table cellspacing="13" width="100%" border="0">
                        
                        <tr>
                            <td><div align="left"><strong>Room Id</strong></div></td>
                            <td><div align="left"><strong>Rooms</strong></div></td>
                            <td><div align="left"><strong>Occupied</strong></div></td>
                            
                        </tr>
                        <tr>
                            <td align="left" valign="top"><%=Id3%></td>
                            <td align="left" valign="top">30</td>
                            <td align="left" valign="top"><%=iid3%></td>
                            
                        </tr>
                    </table>
                    
                    <%}
                    %>
                    
                    <%
           
            query = "SELECT COUNT(room) FROM IPSIT.patient WHERE status =1 AND room="+ Id4;
            rs = room.selectroom(query);
            while (rs.next()) {
                String iid4 = rs.getString(1);
                    %>   
                    <h3>General A/C</h3>
                    <table cellspacing="13" width="100%" border="0">
                        
                        <tr>
                            <td><div align="left"><strong>Room Id</strong></div></td>
                            <td><div align="left"><strong>Rooms</strong></div></td>
                            <td><div align="left"><strong>Occupied</strong></div></td>
                            
                        </tr>
                        <tr>
                            <td align="left" valign="top"><%=Id4%></td>
                            <td align="left" valign="top">30</td>
                            <td align="left" valign="top"><%=iid4%></td>
                            
                        </tr>
                    </table>
                    
                    <%}
                    %>
                    
                    <%
            
            query = "SELECT COUNT(room) FROM IPSIT.patient WHERE status = 1 AND room=" + Id5;
            rs = room.selectroom(query);
            while (rs.next()) {
                String iid5 = rs.getString(1);
                    %>   
                    <h3>General </h3>
                    <table cellspacing="7" width="100%" border="0">
                        
                        <tr>
                            <td><div align="left"><strong>Room Id</strong></div></td>
                            <td><div align="left"><strong>Rooms</strong></div></td>
                            <td><div align="left"><strong>Occuptied</strong></div></td>
                            
                        </tr>
                        <tr>
                            <td align="left" valign="top"><%=Id5%></td>
                            <td align="left" valign="top">30</td>
                            <td align="left" valign="top"><%=iid5%></td>
                            
                        </tr>
                    </table>
                 <%}
                    %>    
                  
                </div>
            </div>    <div id="footer">&copy; 2008 Ipsit Patra<br />    
            </div>
        </div>
    </div>
</body>
