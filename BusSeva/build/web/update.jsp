<%-- 
    Document   : update
    Created on : 1 Sep, 2019, 11:00:19 AM
    Author     : Dell
--%>



<%@page import="java.beans.Statement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<html>
   
    <body>
      <%
          String b=request.getParameter("bt");
          String c=request.getParameter("st");
          String d=request.getParameter("on");
          String e=request.getParameter("f1");
          String f=request.getParameter("t1");
          String g=request.getParameter("f2");
          String h=request.getParameter("t2");
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
          String Bus_No=(String)session.getAttribute("busNo");
           if(!b.equals("") && !c.equals("") && !d.equals("") && !e.equals("") && !f.equals("") && !g.equals("") && !h.equals("")
              && !av1.equals("") && !av2.equals("") && !dp1.equals("")  && !dp2.equals("") )
           {
          try
          {
          Class.forName("oracle.jdbc.OracleDriver");
          Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
          String sql="Update busRecord set busType=?, seatType=?, ownerName=?, from1=?, to1=?, from2=?, to2=? ,arrival1=?, arrival2=?, departure1=?"
                  + ", departure2=?, station1=?, station2=?, station3=?, station4=?, station5=?, station6=? where BusNo=?"; 
          PreparedStatement stat =conn.prepareStatement(sql);
            stat.setString(1,b);
            stat.setString(2,c);
            stat.setString(3,d);
            stat.setString(4,e);
            stat.setString(5,f);
            stat.setString(6,g);
            stat.setString(7,h);
            stat.setString(8,av1);
            stat.setString(9,av2);
            stat.setString(10,dp1);
            stat.setString(11,dp2);
            stat.setString(12,s1);
            stat.setString(13,s2);
            stat.setString(14,s3);
            stat.setString(15,s4);
            stat.setString(16,s5);
            stat.setString(17,s6);
            stat.setString(18,Bus_No);
            int ps=stat.executeUpdate();
             if(ps!=0)
             {     
          %>
          <h2><center>Bus  is successfully Updated !</center></h2>
          <jsp:include page="busRecord.jsp"></jsp:include>
            <% 
          conn.close();
            } 
}
          catch(Exception e1){    out.println(e1);      }
            }
              else
    {%>
    <h2><center>Do not leave empty fields !</center></h2>
         <jsp:include page="search.jsp"></jsp:include>  
    <%}
          %>  
          
    </body>
</html>

