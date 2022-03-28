<%-- 
    Document   : loginOperation
    Created on : 1 Sep, 2019, 10:22:02 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<html>
   
    <head>
        <meta http-eqiv="REFRESH" content="10;url=menu.jsp">
    </head>
<body>
    <style>
        .ak{
            color:white;
            z-index:4;
        }    
    </style>
        <%
          String p=request.getParameter("a");
          String q=request.getParameter("b");
          int radio=Integer.parseInt(request.getParameter("radio1"));
          try
          {
          Class.forName("oracle.jdbc.OracleDriver");
          Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
          if(radio==1) {
          String sql="SELECT * FROM login where userId=? and pass=?";
            PreparedStatement stat =conn.prepareStatement(sql);
            stat.setString(1,p);
            stat.setString(2,q);
                ResultSet rs=stat.executeQuery();
                   int f=0;
                while(rs.next())
                {
                    f=1;
                    session.setAttribute("ID",p);
                    session.setAttribute("IDA","");
                    %>
                <script>alert("Successfuly Login ");</script>
                 <jsp:include page="refresh.jsp"></jsp:include>
                 <%         
}
                    if(f==0) {
                    %>
                    <script>alert("You are not authorized user !");</script>
                    <jsp:include page="login.jsp"></jsp:include>
                    <%  }
                    conn.close();
                    } 
                    if(radio==2) {
                    String sql="SELECT * FROM admin where name=? and pass=?";
                    PreparedStatement stat =conn.prepareStatement(sql);
                    stat.setString(1,p);
                    stat.setString(2,q);
                    ResultSet rs=stat.executeQuery();
                    int f=0;
                    while(rs.next())
                    {
                    f=1;
                    session.setAttribute("IDA",p);
                    session.setAttribute("ID","");
                    %>
                    <script>alert("Admin successfully Login ");</script>
                     <jsp:include page="refresh.jsp"></jsp:include>  <% 
                     }
                    if(f==0) {
                    %>
                    <script>alert("You are not authorized user !");</script>
                    <jsp:include page="login.jsp"></jsp:include>
                     <%  }
           conn.close();
         } 
           }
            catch(Exception e){ %>
          <script>alert("Data base not found your detail !");</script>
           <jsp:include page="login.jsp"></jsp:include>
                   <% }
          %>
</html>