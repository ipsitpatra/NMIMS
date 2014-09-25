
<%-- 
    Document   : room
    Created on : Oct 14, 2008, 12:52:08 AM
    Author     : Ipsit
--%>
<%@include file="../session.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

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
                    <strong><span class="hide">Currently viewing: </span><a href="other.jsp">Patient Billing System</a> &raquo; <a href="room_detail.jsp">Room Details</a> &raquo; <a href="room.jsp">Room Information</a></strong>
                </div>
                
                <div id="leftside">
                    <a id="sectionmenu"></a>
                    <p class="soft">Navigation Tabs</p>
                    <h1>Menu:</h1>
                         
                    <p class="menublock">
                        <a class="nav" href="room_detail.jsp">Room Details</a><br class="hide" />
                      
                        <a class="nav" href="room_count.jsp">Room Occupied</a><br class="hide" />
                      
                    </p>
                    
                </div>
           
                <a id="main"></a>
                <div id="content">
                    <h1>Room Details</h1>
                    <table cellspacing="13" width="100%" border="0">
                        
                        <tr>
                            <td><div align="left"><strong>Ward</strong></div></td>
                            <td><div align="left"><strong>Type</strong></div></td>
                            <td><div align="left"><strong>Available</strong></div></td>
                            <td><div align="left"><strong>Charges</strong></div></td>
                           
                        </tr>
                        <tr>
                            <td align="left" valign="top">ICU</td>
                            <td align="left" valign="top">A/C</td>
                            <td align="left" valign="top">15</td>
                            <td align="left" valign="top">Rs.4500</td>
                          
                            
                        </tr>
                        <tr>
                            <td align="left" valign="top">ICU</td>
                            <td align="left" valign="top">Non-A/C</td>
                            <td align="left" valign="top">15</td>
                            <td align="left" valign="top">Rs.3000</td>
                            <td align="left" valign="top"></td>
                            
                            
                        </tr>
                        <tr>
                            <td align="left" valign="top">Recovery</td>
                            <td align="left" valign="top">A/C</td>
                            <td align="left" valign="top">30</td>
                            <td align="left" valign="top">Rs.1400</td>
                            
                            
                            
                        </tr>
                        <tr>
                            <td align="left" valign="top">General</td>
                            <td align="left" valign="top">A/C</td>
                            <td align="left" valign="top">30</td>
                            <td align="left" valign="top">Rs.1200</td>
                            
                            
                            
                        </tr>
                        <tr>
                            <td align="left" valign="top">General</td>
                            <td align="left" valign="top">Non-A/C</td>
                            <td align="left" valign="top">50</td>
                            <td align="left" valign="top">Rs.300</td>
                            
                            
                            
                        </tr>
                         
                    </table> 
                </div>
            </div>    <div id="footer">&copy; 2008 Ipsit Patra<br />    
            </div>
        </div>
    </div>
</body>
