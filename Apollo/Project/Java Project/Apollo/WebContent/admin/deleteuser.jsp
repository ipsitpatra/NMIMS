<%@page language="java" import="pbs.patient" %>

<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<% 
   String id = request.getParameter("id");
   if (patient.deleteuser(id)){
       response.sendRedirect("user_detail.jsp");
   } else {
       response.sendRedirect("user_detail.jsp?error");
   }   
%>