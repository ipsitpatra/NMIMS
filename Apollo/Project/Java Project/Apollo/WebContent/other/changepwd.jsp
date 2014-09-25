
<%-- 
    Document   : changepwd
    Created on : Oct 14, 2008, 1:14:49 AM
    Author     : Ipsit
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="pbs.patient" %>

<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<%if (request.getParameter("submit") != null){
            String user = request.getParameter("user");
            String password = request.getParameter("password");
            String password1 = request.getParameter("password1");
            String password2 = request.getParameter("password2");

            if (password1.equals(password2)) {
                patient con = new patient();


                if (con.update(user, password, password1)) {
                    response.sendRedirect("doctor.jsp");
                } else {
                    response.sendRedirect("doctor.jsp?error");
                }
            } else {
                response.sendRedirect("changepwd.jsp?error");
            }
}
%>
<html>
    <head>
        <title>Change password</title>
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
                        <strong><span class="hide">Currently viewing: </span><a href="admin.jsp">Patient Billing System</a> &raquo; <a href="doctor.jsp">Front page</a> &raquo; <a href="changepwd.jsp">Change password</a></strong>
                    </div>
                    
                    <div id="leftside">
                        <a id="sectionmenu"></a>
                        <p class="soft">Navigation Tabs</p>
                        <h1>Menu:</h1>
                        
                        <p class="menublock">
                            
                            
                            <a class="nav sub" href="index.jsp">Back</a><br class="hide" />
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
                        <h1>Change password</h1>
                        <form name="chgpwd" method="post"  action="changepwd.jsp" >  
                            <table>
                                <tr><td>
                                    Enter user</td>
                                    <td>
                                <input type="text" name="user" value="" size="10" /></td></tr>
                                <tr>
                                    <td>Enter your password</td>
                                <td><input type="password" name="password" value="" size="10" /></td></tr>
                                <tr>
                                    <td>Enter your New password</td>
                                    <td>
                                    <input type="password" name="password1" value="" size="10" /></td>
                                </tr>
                                <tr>
                                    <td>Retype Your password
                                    </td>
                                    <td> <input type="password" name="password2" value="" size="10" /></td>
                                </tr>
                                <tr><td><input type="submit" value="Submit" name="submit" /></td>
                                    <td><input type="reset" value="Reset" /></td>
                                </tr>
                                
                                
                            </table>
                    </form></div>
                </div>    <div id="footer">&copy; 2008 Ipsit Patra<br />    
                </div>
            </div>
        </div>
    </body>
</html>