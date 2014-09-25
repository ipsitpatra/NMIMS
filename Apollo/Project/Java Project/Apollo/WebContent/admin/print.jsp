<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<%@ page import="java.util.Date"%>
<%
	Date d = new Date();
	int y = d.getYear() + 1900;
	int m = d.getMonth() + 1;
	String ardate = d.getDate() + "/" + m + "/" + y;
%><%@include file="../session.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Report(Print))</title>
</head>
<body>
<%
	String Id = request.getParameter("id");
	ResultSet rs = patient
			.selectpatient("SELECT patient_id ,pname, doctor, age, blood, room , status ,diagnose,admit, email,phone FROM IPSIT.patient WHERE patient_id ="
					+ Id + "");
	while (rs.next()) {
		String a = rs.getString(1);
		String room = rs.getString(6);
		String doctor = rs.getString(3);
		String id = rs.getString(8);
%>
<table width="100%" border="2" cellspacing="5" cellpadding="0">
			<tr>
		<td><strong>Patient Report</strong></td>
	</tr>
			<tr>
				<td width="45%">Patient ID</td>
				<td width="55%">: <%=a%></td>
			</tr>
			<tr>
				<td width="45%">Patient Name</td>
				<td width="55%">: <%=rs.getString(2)%>
			</tr>
<tr>
				<td width="45%">Email ID</td>
				<td width="55%">: <%=rs.getString(10)%></td>
			</tr>
			<tr>
				<td width="45%">Phone</td>
				<td width="55%">: <%=rs.getString(11)%></td>
			</tr>
			<tr>
				<td width="45%">Doctor</td>
				<td width="55%">: <%=patient.getdoc(doctor)%></td>
			</tr>
			<tr>
				<td width="45%">Department</td>
				<td width="55%">: <%=patient.getdocdept(doctor)%></td>
			</tr>
			<tr>
				<td width="45%">Age</td>
				<td width="55%">: <%=rs.getString(4)%></td>
			</tr>
			<tr>
				<td width="45%">Blood</td>
				<td width="55%">: <%=patient.getblood(rs.getString(5))%></td>
			</tr>

			<tr>
				<td width="45%">Room Id</td>
				<td width="55%">: <%=patient.getroom(room)%></td>
			</tr>
			<tr>
				<td width="45%">Room</td>
				<td width="55%">: <%=room%></td>
			</tr>
			<tr>
				<td width="45%">Status</td>
				<td width="55%">: <%=patient.getStatus(rs.getString(7))%></td>
			</tr>
			<tr>
				<td width="45%">Admit Date</td>
				<td width="55%">: <%=rs.getString(9)%></td>
			</tr>

			<tr>
				<td width="45%">Diagnose</td>
				<td width="55%">: <%=id%></td>
			</tr>
			<tr>
				<td width="45%">Discharge Date</td>
				<td width="55%">: <%=ardate%></td>
			</tr>
			
			<tr>
				<td width="45%">Treatment Balance</td>
				<td width="55%">: <%=patient.getbalance(a)%></td>
			</tr>
			<tr>
				<td width="45%">Room Balance</td>
				<td width="55%">: <%=patient.balance(a)%></td>
			</tr>
			<tr>
				<td width="45%">Signature (Doctor) </td>
				<td width="55%">: </td>
			</tr>
<tr>
				<td width="45%">Signature (Authority) </td>
				<td width="55%">: </td>
			</tr>

</table>



<%
	}
%>



</body>
</html>