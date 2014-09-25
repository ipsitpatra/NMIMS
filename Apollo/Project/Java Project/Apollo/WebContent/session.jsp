<% 
    if (!session.getAttribute("loginstatus").equals("true")){
        response.sendRedirect("front.jsp");
    }
%>