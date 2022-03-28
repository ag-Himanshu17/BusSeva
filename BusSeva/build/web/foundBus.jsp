<%-- 
    Document   : foundBus
    Created on : 1 Sep, 2019, 10:56:23 AM
    Author     : Dell
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <% String from=request.getParameter("from");
       String to=request.getParameter("to");
       String get1="No bus Found";
       String get2="No bus Found";
      try
          {
          Class.forName("oracle.jdbc.OracleDriver");
          Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
        String sql="SELECT * FROM busRecord where from1=? or to1=? or station1=? or station2=? or station3=? "
                + "or station4=? or station5=? or station6=?" ;
            PreparedStatement stat =conn.prepareStatement(sql);
            stat.setString(1,from) ;
            stat.setString(2,from) ;
            stat.setString(3,from) ;
            stat.setString(4,from) ;
            stat.setString(5,from) ;
            stat.setString(6,from) ;
            stat.setString(7,from) ;
            stat.setString(8,from) ;
            ResultSet rs=stat.executeQuery();
                   int f=0;
                while(rs.next())
                {
                    f=1;
              get1=rs.getString(1); 
                }   
                 conn.close();
                if(f==0)
                {  %>
   <center><h1>Bus not found !</h1></center>
   <jsp:include page="bookTicket.jsp"></jsp:include>
     <%  }
         } catch(Exception e){ out.println(e); 
         %> <center><h1>Error !</h1></center> 
     <jsp:include page="bookTicket.jsp"></jsp:include><%  }
try
          {
          Class.forName("oracle.jdbc.OracleDriver");
          Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
        String sql1="SELECT * FROM busRecord where from2=? or to2=? or station1=? or station2=? or station3=? "
                + "or station4=? or station5=? or station6=?" ;
            PreparedStatement stat1 =conn.prepareStatement(sql1);
            stat1.setString(1,to) ;
            stat1.setString(2,to) ;
            stat1.setString(3,to) ;
            stat1.setString(4,to) ;
            stat1.setString(5,to) ;
            stat1.setString(6,to) ;
            stat1.setString(7,to) ;
            stat1.setString(8,to) ;
            ResultSet rs1=stat1.executeQuery();
            int f1=0;
            while(rs1.next())
            {
            f1=1;
            
            get2=rs1.getString(1); 
            }
             conn.close();
            if(f1==0)
            {  %>
   <center><h1>Bus not found !</h1></center>
   <jsp:include page="bookTicket.jsp"></jsp:include>
     <%  }
         }catch(Exception e){ out.println(e); %> <center><h1>Error !</h1></center> <%  }
        if(get1.equals(get2))
        { 
          session.setAttribute("from",from);
          session.setAttribute("to",to);
          session.setAttribute("Bus",get1);
        %>
   <jsp:include page="ticketbook.jsp"></jsp:include><% }
    else
        {   %> <center><h1>Bus not found !</h1></center>
   <jsp:include page="bookTicket.jsp"></jsp:include><%  } 
    %>
    </body>
</html>