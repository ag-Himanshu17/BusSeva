<%-- 
    Document   : profile
    Created on : 1 Sep, 2019, 10:47:54 AM
    Author     : Dell
--%>


<%@page import="java.sql.*"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <style>
    input[type="text"]:hover{background-color:yellow;}
    input[type="text"]{ width:70%; background:none; position: relative;margin:-15px 0px;}
    body{ background: linear-gradient(30deg,#000000,#8000ff);color:white; font-weight: bold}
    select,input,radio {border:2px dotted red;border-radius:4px;font-size:25px;}
    table {border-color:blue;width:1100px;height:40px; font-size:25px;background: linear-gradient(30deg,#000000,#8000ff);}
    input {background-color:#b0e0e6;color:white;}
    input[type="submit"]:hover{background-color:green;}
    input[type="reset"]:hover{background-color:red;}
    input[type="button"]:hover{background-color:green;}
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String id=(String)session.getAttribute("ID");
        if(id==null)
        { %> <script>alert("You have to login first !");</script> 
         <jsp:include page="login.jsp"></jsp:include>  <% }
        if(id!=null) { 
              try
          {
          Class.forName("oracle.jdbc.OracleDriver");
          Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
          String sql="SELECT * FROM booked where id=?" ;
          PreparedStatement stat =conn.prepareStatement(sql);
          stat.setString(1,id) ;
          ResultSet rs=stat.executeQuery();
          int f=0;
          while(rs.next())
          {
          f=1;
        String user= rs.getString(1);
        String from= rs.getString(2);
        String to= rs.getString(3);
        String bus= rs.getString(4);
        int seat= rs.getInt(5);
        %>
        <center><table border="2px">
         <tr><td>User Id :-<%= user %> </td>
         <td>From :-<%= from %> </td>
         <td>To :-<%= to %> </td>
         <td>Bus No :-<%= bus %> </td>
         <td>Seats :-<%= seat %> </td></tr>
            </table></center><%
            }
             conn.close();
            if(f==0)
            {  %>
            <center><h1>No record Found !</h1> </center>
   <jsp:include page="view.jsp"></jsp:include>
     <%  }
}catch(Exception e){ out.println(e); %> <center><h1>Error !</h1></center> <%  }
        } %>
    </body>
</html>