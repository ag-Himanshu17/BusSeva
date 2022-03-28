<%-- 
    Document   : delete
    Created on : 1 Sep, 2019, 10:55:16 AM
    Author     : Dell
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%--@page import="java.sql.ResultSet"--%>
<%--@page import="java.sql.PreparedStatement"--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <title></title>
    </head>
    <body>
    <%
         String Bus_No=request.getParameter("bn");
         try
          {
          Class.forName("oracle.jdbc.OracleDriver");
          Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
           String sql="delete FROM busRecord where busNo=?";  
         
           PreparedStatement stat =conn.prepareStatement(sql);
             stat.setString(1,Bus_No);
                  int f=stat.executeUpdate();
                   int r=0 ; %>
                     <jsp:include page="busRecord.jsp"></jsp:include>
                     <%
                if(f!=0)
                {
                    r=1;
                   %>
    <center> <h2>Bus Data Deleted </h2></center>
                     <%
                }
               if(r==0)
                    {
                   %><h2>Bus  not Deleted due to non existence </h2> <%
                         }
            conn.close();
}catch(Exception e){  out.println(e+""+Bus_No); %><h2> Please Enter a valid Bus No <h2> <%    }
     %>
     
    </body>
</html>
