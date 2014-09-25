
<%@page language="java" import="java.sql.*"%>

<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<%@include file="../session.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Patient Billing System - Hospital Details</title>
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
                
                <div id="topbox">
                    <strong><span class="hide">Currently viewing: </span><a href="index.jsp">Patient Billing System</a> &raquo; <a href="changeadd.jsp">Hospital Address</a></strong>
                </div>
                
                <div id="leftside">
                    <a id="sectionmenu"></a>
                    <p class="soft">Navigation Tabs</p>
                    <h1>Menu:</h1>
                    
                    <p class="menublock">
                       
                            <a class="nav" href="changepwd.jsp">Change password</a><br class="hide" />
                            <a class="nav sub" href="admin.jsp">Back</a><br class="hide" />
                    </p>
                    
                </div>
                
                
                
                <a id="main"></a>
                <div id="content">
                    <h1>Hospital Details</h1>
                    <table width="100%" border="0" cellspacing="8">
                        
                        <tr>
                            
                            <td><div align="left"><strong>Hospital Name</strong></div></td>
                            <td><div align="left"><strong>Address</strong></div></td>
                            <td><div align="left"><strong>Action</strong></div></td>
                            
                        </tr><tr>
                        </tr>
                        <%
            String query = "select * from IPSIT.hospital";
            ResultSet rs = patient.selectpatient(query);
            while (rs.next()) {
                
                        %>
                        <tr>
                            
                            <td align="left" valign="top"><%=rs.getString(2)%></td>
                            <td align="left" valign="top"><%=rs.getString(3)%></td>
                            <td align="left" valign="top">                                            
                            <a href="address_edit.jsp">Update </a></td>
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
