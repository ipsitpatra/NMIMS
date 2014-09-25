<%-- 
    Document   : patient_update
    Created on : Oct 19, 2008, 5:31:25 PM
    Author     : Ipsit
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:useBean id="update1" scope="page" class="pbs.patient" />

<%

            String id = request.getParameter("id");
            String diagnose = request.getParameter("diagnose");
            String treatment = request.getParameter("treatment");

            if (update1.updatepatient(id, diagnose,treatment)) {
                response.sendRedirect("patient_detail.jsp");
            } else {
                response.sendRedirect("patient_detail.jsp?error");
            }
            out.close();
%>