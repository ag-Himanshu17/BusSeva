<%-- 
    Document   : signupOperation
    Created on : 1 Sep, 2019, 10:23:42 AM
    Author     : Dell
--%>



<%@page import="java.beans.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .ak{
                color:white;
                top:0;
            }
        </style>
    </head>
    <body>
        <%
            try{
                String p=request.getParameter("u");
                String q=request.getParameter("p");
                String n=request.getParameter("n");
                long m=Long.parseLong(request.getParameter("m"));
                String em=request.getParameter("e");
                Class.forName("oracle.jdbc.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
                String sql="insert into login values(?,?,?,?,?)";
                PreparedStatement stat=conn.prepareStatement(sql);
                 stat.setString(1,p);
                 stat.setString(2,q);
                 stat.setString(3,n);
                 stat.setLong(4,m);
                 stat.setString(5,em);
                 int ps=stat.executeUpdate();
                 if(ps!=0)
                 {
                 %>
     <script>alert("Record added please login now!");</script>
    <jsp:include page="login.jsp"></jsp:include>
    <%
            conn.close();
                 }
            }
catch(SQLIntegrityConstraintViolationException a){ %>
     <script>alert("ID is already taken please try another ID!");</script>
    <jsp:include page="signup.jsp"></jsp:include>  <% }
    catch(Exception e)
{ %>  <script>alert("Something went wrong or Driver Error !");</script>
    <jsp:include page="signup.jsp"></jsp:include>  <% }
%>

    </body>
</html>
