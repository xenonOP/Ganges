<%-- 
    Document   : logout
    Created on : Feb 12, 2023, 1:49:17 PM
    Author     : Dell
--%>

<%
    session.removeAttribute("user");
    response. sendRedirect("LoginPage.jsp");
%>
