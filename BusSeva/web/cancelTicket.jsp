<%-- 
    Document   : cancelTicket
    Created on : 1 Sep, 2019, 10:54:31 AM
    Author     : Dell
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
    input[type="text"]:hover{background-color:yellow;}
    input[type="text"]{ width:70%; background-color:none;position: relative;margin:-15px 0px;}
    input[type="number"]{ width:70%; }
    body{background:linear-gradient(to right ,rgba(255,0,0,0),rgba(150,0,20,1));color:red;}
    select,input,radio {border:2px dotted red;border-radius:4px;font-size:25px;}
    table {border-color:blue;width:800px;height:40px; font-size:25px;background:linear-gradient(to right ,rgba(255,0,0,0),rgba(150,0,20,1));}
    input {background-color:#b0e0e6;color:white;}
    input[type="submit"]:hover{background-color:green;}
    input[type="reset"]:hover{background-color:red;}
    input[type="button"]:hover{background-color:green;}
    </style>
        <script>  
function valid(){
var a=document.ak.a.value;
var b=document.ak.b.value;
if (a==null || a=="" && b==null || b=="")
{  
  alert("All the fields are mandatory !");  
  return false;  
} 
}
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id=(String)session.getAttribute("ID");
        if(id==null)
        { %> <script>alert("You have to login first !");</script> 
        <jsp:include page="login.jsp"></jsp:include>  <% }
        if(id!=null) { %>
        <form name="ak" action="cancel.jsp" method="post" onsubmit="return valid()">
            <center> <h2><u><b><i>Cancel Your Ticket..</i></b></u></h2><table>
             <tr><td> Enter Bus No.</td><td><input type="text" name="a"></td></tr>
            <tr><td> Enter No. of ticket you want to cancel</td><td><input type="number" name="b"></td></tr>
            <tr><td align="center" colspan="2"><input type="submit"></td></tr>
           </table> </center>
        </form>
        <% } %>
    </body>
</html>


