<%-- 
    Document   : feed
    Created on : 1 Sep, 2019, 11:16:08 AM
    Author     : Dell
--%>


<%@page import="java.sql.SQLIntegrityConstraintViolationException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.JOptionPane"%>
<html>
    <head>
        <style>
        .ak
        {
        color:white;
        }
        </style>
    </head>
    <body>
      <%
          try {
          String ta=request.getParameter("a");
          String id=(String)session.getAttribute("ID");
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
            String sql="insert into text values(?,?)";
            PreparedStatement stat =conn.prepareStatement(sql);
            stat.setString(1,id);
            stat.setString(2,ta);
            int ps=stat.executeUpdate();
            if(ps!=0)
            {
            %>
            <center><h1>Feedback Submitted !</h1></center>
             <jsp:include page="view.jsp"></jsp:include>
             <%
             conn.close();
             }
             }
             catch(Exception e)
            { %>
            <center><h1>Error !</h1></center>
              <jsp:include page="feedback.jsp"></jsp:include> <%}   
            %>
    </body>
</html>