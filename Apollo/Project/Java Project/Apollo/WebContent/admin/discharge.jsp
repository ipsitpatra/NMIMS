<%@page language="java" import="pbs.patient" %>
<%@ page import="java.util.Date"%>
<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<% 		Date d = new Date();
int y = d.getYear() + 1900;
int m= d.getMonth() + 1;
String discharge = d.getDate() + "/" + m + "/" +  y;
   String id = request.getParameter("id");
   if (patient.discharge(id,discharge)){
       response.sendRedirect("patient_detail.jsp");
   } else {
       response.sendRedirect("patient_detail.jsp?error");
   }   
%>