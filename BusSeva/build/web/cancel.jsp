<%-- 
    Document   : cancel
    Created on : 1 Sep, 2019, 10:53:56 AM
    Author     : Dell
--%>





<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
         String id=(String)session.getAttribute("ID");
         String bus=request.getParameter("a");
          int seat=Integer.parseInt(request.getParameter("b"));
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
        String Bus= rs.getString(4);
        int seats= rs.getInt(5);
        if(seat==seats)
        {
            String sql1="delete from booked where busNo=?" ;
            PreparedStatement stat1 =conn.prepareStatement(sql1);
            stat1.setString(1,Bus) ;
             ResultSet rs1=stat1.executeQuery();
             while(rs1.next())
            {  %>
             <center><h1>Your ticket canceled for all passengers !</h1> </center>
   <jsp:include page="view.jsp"></jsp:include>
         <%   }
        }
        else
        {
            int s=seats-seat;
            if(s>0) { 
            String sql1="update booked set seat=? where busNo=?";
            PreparedStatement stat1 =conn.prepareStatement(sql1);
            stat1.setInt(1,s);
            stat1.setString(2,bus);
            int ps1=stat1.executeUpdate();
            if(ps1!=0)
            {
               %>
   <center> <h1>Your ticket canceled for few passengers !</h1> </center>
   <jsp:include page="view.jsp"></jsp:include>
     <%
            }
        }   else {  %>
   <center> <h1>Please Enter a valid number of seats !</h1> </center>
   <jsp:include page="view.jsp"></jsp:include>
     <%  }
            conn.close();
        }
        }
             conn.close();
            if(f==0)
            {  %>
    <center><h1>You have no tickets yet !</h1></center>
   <jsp:include page="view.jsp"></jsp:include>
     <% conn.close(); }
    }
     catch(Exception e){   }
         %>
    </body>
</html>


