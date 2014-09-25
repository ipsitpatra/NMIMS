<%@ page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<%
	Date d = new Date();
	int y = d.getYear() + 1900;
	int m = d.getMonth() + 1;
	String ardate = d.getDate() + "/" + m + "/" + y;
%>
<%
	session.setAttribute("loginstatus", "false");
%>

<html>
<head>
<title>Apollo-Patient Billing System</title>
<link rel="stylesheet" href="Style.css" type="text/css" />
</head>
<script>
    function checkusername()
    {		
        var str=document.login.username.value;
        var form=document.login;
        if (str.length==0)
        { 
            alert("Please enter the username");
            form.username.focus();
            return false;
        }
                        
                        
        for(var i=0; i <= (str.length - 1); i++)
        {	
            var theChar = str.substring(i,i+1);
            if( !( (theChar >= '0' && theChar <= '9') || (theChar >= 'a' && theChar <= 'z') || (theChar >= "A" && theChar <= "Z") || (theChar == '_')||(theChar=='@')||(theChar=='.')) )
            {
                                                
                alert("Username Should not contain any special characters.");
                form.username.focus();			
                return false ;
            }
        }
        var passwd=document.login.password.value;
                        
        if (passwd.length==0)
        { 
            alert("Password is blank");
            form.password.focus();
            return false;
        }
        if(passwd.length<3)
        {
            alert("Enter a password that has at least three characters.");
            form.password.focus();
            return false;
        }
                         
        return true;
        
        
        
    }
</script>
<body>
<div id="container"><a id="top"></a>
<p class="hide">Skip to: <a href="#menu">site menu</a> | <a
	href="#sectionmenu">section menu</a> | <a href="#main">main content</a></p>

<div id="sitename">
<h1>Patient Billing System</h1>
<span> Welcome </span> <a id="menu"></a></div>


<div id="wrap1">
<div id="wrap2">

<p align="center"><strong>Patient Billing System Log-in : <%=ardate%></strong>
</p>
<div id="leftside"><a id="sectionmenu"></a>
<p class="soft">Navigation Tabs</p>

<p class="menublock"><a class="nav" href="about_us.jsp">About Us</a><br
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
<form name="login" method="post" onsubmit="return checkusername()"
	action="checklogin.jsp">
<table width="100%">
	<tr></tr>
	<tr></tr>
	<tr></tr>
	<tr></tr>
	
	<%
                    String query = "SELECT hname,haddress FROM  IPSIT.hospital";
		ResultSet rs = patient.selectpatient(query);
		while (rs.next()) {
			String id = rs.getString(1);%>
                   
                        
               
	<tr valign="top">
		<td colspan="2" align="center" class="menubg"><font color="black"><b>Sign
		in to <%=id %> , <%=rs.getString(2)%></b></font></td>
	</tr>
            
           <%
           }
		%>   
	<tr>
		<td style="width: 15%">User</td>
		<td style="width: 15%"><select size="1" name="level">
			<option value="1">Administrator</option>
			<option value="2">Local User</option>
			<option value="3" selected>Doctor</option>
		</select></td>

	</tr>
	<tr>
		<td style="width: 15%">Username</td>
		<td><input type="text" name="username" maxlength="35"
			style="width: 120px" title="Enter the username"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td style="width: 15%"><input type="password" name="password"
			maxlength="12" style="width: 120px" title="Enter the password"></td>
	</tr>
</table>
<table>
	<tr align="center">
		<td align="center"><input type="submit" value="Sign In"
			name="signIn"></td>
		<td><input type="reset" value="Reset"></td>
	</tr>
</table>
</form>
</div>
</div>
<div id="footer">&copy; 2008 Ipsit Patra<br />
</div>
</div>
</div>
</body>
</html>

