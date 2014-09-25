<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*"%><%@ page import="java.util.Date"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />
	
<%

Date d = new Date();
int y = d.getYear() + 1900;
int m= d.getMonth() + 1;
String date = d.getDate() + "/" + m + "/" +  y;
try {
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:db2://localhost:50000/PBS", "db2admin",
				"db2admin");

		String level, username, password, query;
		ResultSet rs = null;
		PreparedStatement ps = null;
		username = request.getParameter("username");
		password = request.getParameter("password");
		level = request.getParameter("level");
		query = "SELECT * FROM IPSIT.LOGIN WHERE USERNAME='" + username
				+ "' AND LEVEL =" + level + "";
		ps = con.prepareStatement(query);
		rs = ps.executeQuery();
		if (rs.next()) {
			if (rs.getString("password").equals(password)) {

				session.setAttribute("loginstatus", "true");
				
	         

				if (level.equals("1")) {

response.sendRedirect("admin/admin.jsp");


	} else if (level.equals("2")) {

response.sendRedirect("other/other.jsp");


	} else {

response.sendRedirect("doctor/doctor.jsp");

	}
			} else {

response.sendRedirect("wronguser.jsp");

	}

		} else {
%><jsp:forward page="wronguser.jsp"></jsp:forward>
<%
	}
		con.close();
	} catch (Exception e) {
		out.println("Error " + e.getMessage());
	}
%>


