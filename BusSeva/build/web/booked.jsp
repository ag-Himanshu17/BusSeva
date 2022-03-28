<%-- 
    Document   : booked
    Created on : 1 Sep, 2019, 10:49:53 AM
    Author     : Dell
--%>

<%-- 
    Document   : booked
    Created on : 7 Aug, 2019, 10:21:10 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.beans.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.JOptionPane"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
           String id=(String)session.getAttribute("ID");
           String from=(String)session.getAttribute("from");
           String to=(String)session.getAttribute("to");
           String Bus=(String)session.getAttribute("Bus");
           int seat=Integer.parseInt(request.getParameter("seat"));
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
            String sql="insert into booked values(?,?,?,?,?)";
            PreparedStatement stat =conn.prepareStatement(sql);
            stat.setString(1,id);
            stat.setString(2,from); 
            stat.setString(3,to);  
            stat.setString(4,Bus);
            stat.setInt(5,seat);
            int ps=stat.executeUpdate();
            if(ps!=0)
            {
            session.setAttribute("seat",seat);
            %>
           <jsp:forward page="print.jsp"></jsp:forward>
            <%
             conn.close();
             }
            }
             catch(Exception e)
            { out.println(e); %>
            <center><h1>Not Booked !</h1></center>
            <jsp:include page="bookTicket.jsp"></jsp:include> <% }  
        %>
    </body>
</html>
