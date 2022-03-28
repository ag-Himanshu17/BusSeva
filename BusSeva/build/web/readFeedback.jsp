<%-- 
    Document   : readFeedback
    Created on : 1 Sep, 2019, 11:16:57 AM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<html>
<body>
    <style>
    body{
        background-color:khaki;
        color:red;
        }
    table {
        font-size:20px;
        background-color:khaki;
          }
    input { 
        background-color:khaki; 
          }
     tr:hover{
         background-color:yellow;
             }
       
    </style>
<center> <h1><u><b><i>Feedbacks</i></b></u></h1></center>
<table>
<tr>
    <td><center><h2><u>&nbsp &nbsp &nbsp User Id &nbsp &nbsp &nbsp  </u></h2></center></td>
 <td align="left"><h2><u>Feedback -------------</u></h2></td>
  </tr>
 </table>
        <%
          try
          {
          Class.forName("oracle.jdbc.OracleDriver");
          Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
          String sql="SELECT * FROM text";
            PreparedStatement stat =conn.prepareStatement(sql);
                ResultSet rs=stat.executeQuery();
                   int f=0;
                while(rs.next())
                {
                    f=1;
                    String user=rs.getString(1);
                    String feed=rs.getString(2);
                    %>
                    <table>
                        <tr>
                        <td><input type="text" value="<%= user %>" readonly></td>
                        <td align="left"><%= feed %></td>
                        </tr>
                    </table>
                    <% 
                }
                   if(f==0) {
                   %>
                     <script>alert("No feedbacks yet !");</script>
                   <jsp:include page="view.jsp"></jsp:include>
                    <%  }
          conn.close();
            }catch(Exception e){ %>
          <script>alert("Data base not found your detail !");</script>
                   <jsp:include page="view.jsp"></jsp:include>;  <% }
          %>
</html>
