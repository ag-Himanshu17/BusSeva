<%-- 
    Document   : search
    Created on : 1 Sep, 2019, 10:58:20 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <style>
           body{
           margin:0;
           padding:0;
           font-family:sans-serif;
            background: linear-gradient(90deg,#000000,#ff3333);
            }
            .bus{
                width: 280px;
                position: absolute;
                top:40%;
                left:15%;
                transform: translate(-50%, -50%);
                color:white;
                
            }
           
             .bus1{
                width: 280px;
                position: absolute;
                top:40%;
                left:50%;
                transform: translate(-50%, -50%);
                color:white;
                
            }
             .bus2{
                width: 280px;
                position: absolute;
                top:40%;
                left:80%;
                transform: translate(-50%, -50%);
                color:white;
                
            }
            .btcss{
                width: 280px;
                position: absolute;
                top:80%;
                left:35%;
                transform: translate(-50%, -50%);
                color:white;
            }
            .textbox{
                width:100%;
                overflow: hidden;
                font-size: 20px;
                padding: 8px 0;
                margin: 8px 0;
                border-bottom: 1px solid #4caf50;
                
            }
           
            .textbox input{
                border:none;
                outline:none;
                background:none;
                color:white;
                font-size:18px;
                width:80%;
                float:left;
                margin:0 10px;
            }
            .btn{
                
                width:50%;
                background: none;
                border: 2px solid #4caf50;
                color: white;
                padding:5px;
                font-size:18px;
                cursor:pointer;
                margin: 8px 0;
                
            }
            table{
                
                width:300%;
             
            }
              .val_error{
                color:#ff1f1f;
            }
        </style>
    <body>
        <form name="ak" method="post">
        <%
            String Bus_No=request.getParameter("bn");
    if(!Bus_No.equals("")){
            try
          {
          Class.forName("oracle.jdbc.OracleDriver");
          Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","mihir");
        String sql="SELECT * FROM busRecord where busNo=?";
            PreparedStatement stat =conn.prepareStatement(sql);
            stat.setString(1,Bus_No) ;
                ResultSet rs=stat.executeQuery();
                   int f=0;
                while(rs.next())
                {
                    f=1;
                    session.setAttribute("busNo",Bus_No);
                     %>
    <center> <h1><u>Bus Record</u></h1> </center> 
            <div class="bus">
           
            <div class="textbox">
                <input type="text" value="<%  out.println(rs.getString(1));%>" name="bn" readonly>
          
            </div>
             <div class="textbox">
                <input type="text" value="<%  out.println(rs.getString(2));%>" name="bt">
            </div>
             <div class="textbox">
                <input type="text" value="<%  out.println(rs.getString(3));%>" name="st" >
               
            </div>
             <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(4));%>" name="on">
          
            </div>
             <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(9));%>" name="at1">
            </div>
             <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(10));%>" name="at2">
            </div>
             <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(11));%>" name="dt1">
            </div>
             <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(12));%>" name="dt2">
            </div>
            </div>
            
        <div class="bus1">
            <h3>Route1</h3>
            <div class="textbox">
                <input type="text" value="<%  out.println(rs.getString(5));%>" name="f1">
              
            </div>
              <div class="textbox">
                <input type="text" value="<%  out.println(rs.getString(6));%>" name="t1">
              </div>
              <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(7));%>" name="f2" >
              
            </div>
              <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(8));%>" name="t2" >
                 
              </div>
        </div>
   
            <div class="bus2">
                <h3>Via:</h3>
                 <div class="textbox">
                <input type="text" value="<%  out.println(rs.getString(13));%>" name="st1">
              
            </div>
              <div class="textbox">
                <input type="text" value="<%  out.println(rs.getString(14));%>" name="st2">
              </div>
              <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(15));%>" name="st3" >
              
            </div>
              <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(16));%>" name="st4" >
                 
              </div>
                    <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(17));%>" name="st5" >
                 
              </div>
                <div class="textbox">
                <input type="text"  value="<%  out.println(rs.getString(18));%>" name="st6" >
                 
              </div>
            </div>
                  <div class="btcss">
                <table> 
            
                      <td>  <input class="btn" onclick="click2()" type="submit" value="Update"></td>
                      <td> <input class="btn" onclick="click3()" type="submit" value="Delete"></td>
                      <td> <input class="btn" onclick="click5()" type="submit" value="Back"></td>
                      </table>
                  </div>           
           <% 
                }
                if(f==0)
                {   %><h2><center>Bus not found!</center></h2> 
                 <jsp:include page="busRecord.jsp"></jsp:include><% }
          conn.close();
          }catch(Exception e){  out.print("Error");  }} else{ %>
<h2><center>Plz enter bus no!</center></h2> <% }%>
          
    
    <script>
        function valid1(){
    var bn=document.ak.bn.value;
    if (bn==null || bn=="" )
        {  
  alert("Bus number cannot be empty !");  
  return false;  
     } 
   }
        function click2()
{
    var f2=document.forms[0];
    f2.action="update.jsp";
    return valid1();
    f2.submit();
}
function click3()
{
    var f3=document.forms[0];
    f3.action="delete.jsp";
    return valid1();
    f3.submit();
}
function click5()
{
    var f5=document.forms[0];
    f5.action="busRecord.jsp";
    return valid1();
    f5.submit();
}
    </script>
    </form>
        </body>
</html>

