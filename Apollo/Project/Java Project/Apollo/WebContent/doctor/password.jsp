<%@page language="java" import="pbs.patient" %>

<jsp:useBean id="patient" scope="page" class="pbs.patient" />
<%
            String user = request.getParameter("user");
            String password = request.getParameter("password");
            String password1 = request.getParameter("password1");
            String password2 = request.getParameter("password2");

            if (password1.equals(password2)) {
                patient con = new patient();


                if (con.update(user, password, password1)) {
                    response.sendRedirect("doctor.jsp");
                } else {
                    response.sendRedirect("doctorA.jsp?error");
                }
            } else {
                response.sendRedirect("changepwd.jsp?error");
            }
%>