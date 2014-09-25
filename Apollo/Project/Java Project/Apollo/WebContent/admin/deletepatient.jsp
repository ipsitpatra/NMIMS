<%@page language="java" import="pbs.patient" %>

<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<% 
   String id = request.getParameter("id");
   if (patient.deletepatient(id)){
       response.sendRedirect("patient_detail.jsp");
   } else {
       response.sendRedirect("patient_detail.jsp?error");
   }   
%>