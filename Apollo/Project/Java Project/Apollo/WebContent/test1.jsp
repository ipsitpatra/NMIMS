<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Administrator Logged-in</title>
        <link rel="stylesheet" href="style1.css" type="text/css"/>
    </head>
    
    <body>
        <div id="container">
            <a id="top"></a><p class="hide">Skip to: <a href="#menu">site menu</a> | <a href="#sectionmenu">section menu</a> | <a href="#main">main content</a></p>
            
            <div id="sitename">
                <h1>Patient Billing System</h1>
                <span> Welcome </span>
                <a id="menu"></a>
            </div>
            
            <div id="nav">
                <ul>
                    <li id="current"><a>Front page</a></li>
                    <li ><a href="patient_detail.jsp">Patient Details</a></li>
                    <li><a href="room_detail.jsp">Room Details</a></li>
                    <li><a href="search.jsp">Search</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                    <li><a href="about_us.jsp">About Us</a></li>
                    
                </ul>
                <p class="hide"><a href="#top">Back to top</a></p>
                
            </div>
            
            <div id="wrap1">
                <div id="wrap2">
                    
                    <div id="topbox">
                        <strong><span class="hide">Currently viewing: </span><a href="index.jsp">Patient Billing System</a> &raquo; <a href="index.jsp">Front page</a></strong>
                    </div>
                    
                    <div id="leftside">
                        <a id="sectionmenu"></a>
                        <p class="soft">Accounts Tabs</p>
                        <h1>Menu:</h1>
                        
                        <p class="menublock">
                           
                            <a class="nav" href="changeadd.jsp">Hospital Details</a><br class="hide" />
                            <a class="nav" href="changepwd.jsp">Change password</a><br class="hide" />
                        </p>
                        
                    </div>
                    
                    <div id="rightside">
                        <h1>Application info:</h1>
                        <p>Patient Billing System is built with JSP.</p>
                        
                        
                        <h1>Sponsers:</h1>
                        <p>
                            <a href="#">Sponser</a><br />
                            <a href="#">Sponser</a><br />
                            <a href="#">Sponser</a><br />
                            <a href="#">Sponser</a><br />
                            <a href="#">Sponser</a><br />
                            <a href="#">Sponser</a><br />
                        </p>
                        <p class="smallcaps">PIB08 v1.0<br />
                        (Nov 1, 2008)</p>
                    </div>
                    
                    <div id="content">
                        <h1>Welcome  Administrator...</h1>
                        <img src="../img/gravatar-leaf.jpg" height="80" width="80"/>
                        <p>BLAH BLAH BLAH </p>
                        <h2>Open source design</h2>
                        <p>welcome!</p>
                        <p class="hide"><a href="#top">Back to top</a></p>
                    </div>
                </div>    <div id="footer">&copy; 2008 Ipsit Patra<br />    
                </div>
            </div>
        </div>
    </body>
</html>