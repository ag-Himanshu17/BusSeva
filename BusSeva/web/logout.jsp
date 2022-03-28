<%-- 
    Document   : logout
    Created on : 1 Sep, 2019, 10:56:56 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% session.invalidate();%>
        <jsp:include page="refresh.jsp"></jsp:include>
       <% 
           response.sendRedirect(request.getContextPath()+"/view.jsp");
        
        %>
    
    </body>
</html>

