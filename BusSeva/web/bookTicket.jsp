<%-- 
    Document   : bookTicket
    Created on : 1 Sep, 2019, 11:22:42 AM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%ResultSet resultset =null;%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        input[type="text"]:hover{background-color:yellow;}
        input[type="text"]{ width:70%; background-color:none;position: relative;margin:-15px 0px;}
        body{background:linear-gradient(to right ,rgba(255,0,0,0),rgba(150,0,20,1));color:black;}
        select,input,radio {border:2px dotted red;border-radius:4px;font-size:25px;}
        table {width:1100px;height:200px; font-size:25px;background-color:khaki;}
        input {background-color:#b0e0e6;color:white;}
        input[type="submit"]:hover{background-color:green;}
        input[type="reset"]:hover{background-color:red;}
        input[type="button"]:hover{background-color:green;}
        #a11 { position:fixed; top:70px; left:20%;}
        #a22 { position:fixed; top:70px; left:50%;}
        #a33 { position:fixed; top:150px; left:40%;}
    </style>
    <body>
        <%
           String id=(String)session.getAttribute("ID");
           if(id==null)
           { %> <script>alert("You have to login first !");</script> 
                <jsp:include page="login.jsp" ></jsp:include>  <% }
   
if(id!=null) { 
          try
          {
          Class.forName("oracle.jdbc.OracleDriver");
          Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
        Statement st = conn.createStatement();
        resultset =st.executeQuery("select * from busRecord");
        %>
         <form action="foundBus.jsp" method="post">
<center>
    <div id="a11">
        <h1> From :-<select name="from" id="from">
      <%  while(resultset.next()){ 
      String a1= resultset.getString(5);
      String a2= resultset.getString(6);
      String a3= resultset.getString(13);
      String a4= resultset.getString(14);
      String a5= resultset.getString(15);
      String a6= resultset.getString(16);
      String a7= resultset.getString(17);
      String a8= resultset.getString(18);
               if( a8!=null){ %> <option value="<%= a8 %>"> <%= a8 %></option><% } %>
            <% if( a7!=null){ %> <option value="<%= a7 %>"> <%= a7 %></option><% } %>
            <% if( a6!=null){ %> <option value="<%= a6 %>"> <%= a6 %></option><% } %>
            <% if( a5!=null){ %> <option value="<%= a5 %>"> <%= a5 %></option><% } %>
            <% if( a4!=null){ %> <option value="<%= a4 %>"> <%= a4 %></option><% } %>
            <% if( a3!=null){ %> <option value="<%= a3 %>"> <%= a3 %></option><% } %>
            <% if( a2!=null){ %> <option value="<%= a2 %>"> <%= a2 %></option><% } %>
            <% if( a1!=null){ %> <option value="<%= a1 %>"> <%= a1 %></option><% } %>
            <% } %>
        </select></h1>
    </div>
</center>
        <%
        }  
        catch(Exception e){  out.print("Error");  }
        try
        {
        Class.forName("oracle.jdbc.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
        Statement st1 = conn.createStatement();
        resultset =st1.executeQuery("select * from busRecord") ;
        %>
<center>
    <div id="a22">
       <h1> To :-<select name="to" id="to">
        <% while(resultset.next()){ 
      String a1= resultset.getString(5);
      String a2= resultset.getString(6);
      String a3= resultset.getString(13);
      String a4= resultset.getString(14);
      String a5= resultset.getString(15);
      String a6= resultset.getString(16);
      String a7= resultset.getString(17);
      String a8= resultset.getString(18);
               if( a1!=null){ %> <option value="<%= a1 %>"> <%= a1 %></option><% } %>
            <% if( a2!=null){ %> <option value="<%= a2 %>"> <%= a2 %></option><% } %>
            <% if( a3!=null){ %> <option value="<%= a3 %>"> <%= a3 %></option><% } %>
            <% if( a4!=null){ %> <option value="<%= a4 %>"> <%= a4 %></option><% } %>
            <% if( a5!=null){ %> <option value="<%= a5 %>"> <%= a5 %></option><% } %>
            <% if( a6!=null){ %> <option value="<%= a6 %>"> <%= a6 %></option><% } %>
            <% if( a7!=null){ %> <option value="<%= a7 %>"> <%= a7 %></option><% } %>
            <% if( a8!=null){ %> <option value="<%= a8 %>"> <%= a8 %></option><% } %>
            <% } %>
        </select></h1>
    </div>
</center>
        <%
        }  
        catch(Exception e){  out.print("Error");  } 
        %>
        <input id="a33" type="submit" value="Search bus">
         </form> <% } %>
    </body>
</html>