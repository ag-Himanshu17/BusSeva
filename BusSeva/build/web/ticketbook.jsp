<%-- 
    Document   : ticketbook
    Created on : 1 Sep, 2019, 10:59:24 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
    input[type="text"]:hover{background-color:yellow;}
    input[type="text"]{ width:70%; background-color:none;position: relative;margin:-15px 0px;}
    body{font-size:25px;background:linear-gradient(to right ,rgba(255,0,0,0),rgba(150,0,20,1));color:blue;}
    select,input,radio {border:2px dotted red;border-radius:4px;font-size:25px;}
    table {width:500px;height:200px; font-size:25px;background:linear-gradient(to right ,rgba(255,0,0,0),rgba(150,0,20,1));}
    input {background-color:#b0e0e6;color:white;}
    input[type="submit"]:hover{background-color:green;}
    input[type="reset"]:hover{background-color:red;}
    input[type="button"]:hover{background-color:green;}
    </style>
    </head>
    <body>
        <%
           String id=(String)session.getAttribute("ID");
           String from=(String)session.getAttribute("from");
           String to=(String)session.getAttribute("to");
           String Bus=(String)session.getAttribute("Bus");
        %>
        <form name="ak" action="booked.jsp" method="post">
           <center> <table>
                <tr><td>Bus No </td><td><%= Bus %> </td></tr>
                <tr><td>From </td><td><%= from %> </td></tr>
                <tr><td>To </td><td><%= to %> </td></tr>
                <tr><td>User is </td><td><%= id %> </td></tr>
                <tr><td> Select no. of seats</td><td> <select name="seat" id="seat">
                <option value="1">1</option><option value="2">2</option>
                <option value="3">3</option><option value="4">4</option>
                <option value="5">5</option><option value="6">6</option>
                <option value="7">7</option><option value="8">8</option>
                <option value="9">9</option><option value="10">10</option>
                <option value="11">11</option><option value="12">12</option>
                <option value="13">13</option><option value="14">14</option>
                        </select></td><tr>
                <tr><td rowspan="2" align="center"><input type="submit" value="Book and print Ticket"></td></tr>
                </table></center>
        </form>
    </body>
</html>
