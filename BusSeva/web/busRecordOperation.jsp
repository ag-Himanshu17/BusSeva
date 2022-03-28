<%-- 
    Document   : busRecordOperation
    Created on : 1 Sep, 2019, 10:53:02 AM
    Author     : Dell
--%>
<%@page import="java.sql.SQLIntegrityConstraintViolationException"%>
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
                String a=request.getParameter("bn");
                String b=request.getParameter("bt");
                String c=request.getParameter("st");
                String d=request.getParameter("on");
                String e1=request.getParameter("f1");
                String f1=request.getParameter("t1");
                String e2=request.getParameter("f2");
                String f2=request.getParameter("t2");
                String av1=request.getParameter("at1");
                String av2=request.getParameter("at2");
                String dp1=request.getParameter("dt1");
                String dp2=request.getParameter("dt2");
                String s1=request.getParameter("st1");
                String s2=request.getParameter("st2");
                String s3=request.getParameter("st3");
                String s4=request.getParameter("st4");
                String s5=request.getParameter("st5");
                String s6=request.getParameter("st6");
                Class.forName("oracle.jdbc.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
                String sql="insert into busRecord values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement stat=conn.prepareStatement(sql);
                 stat.setString(1,a);
                 stat.setString(2,b);
                 stat.setString(3,c);
                 stat.setString(4,d);
                 stat.setString(5,e1);
                 stat.setString(6,f1);
                 stat.setString(7,e2);
                 stat.setString(8,f2); 
                 stat.setString(9,av1);
                 stat.setString(10,av2);
                 stat.setString(11,dp1);
                 stat.setString(12,dp2);
                 stat.setString(13,s1);
                 stat.setString(14,s2);
                 stat.setString(15,s3);
                 stat.setString(16,s4);
                 stat.setString(17,s5);
                 stat.setString(18,s6);
                 int ps=stat.executeUpdate();
                 if(ps!=0)
                 {  
                 %>
     <script>alert("Record added");</script>
    <jsp:include page="busRecord.jsp"></jsp:include>
    <%
            conn.close();
                 }
            } 
    catch(Exception e) {
    out.println(e);
  %>  <!-- <script>alert("Something went wrong or Driver Error !");</script>-->
    <jsp:include page="busRecord.jsp"></jsp:include>  <% }
%>
    </body>
</html>
