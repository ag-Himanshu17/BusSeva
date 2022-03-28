<%-- 
    Document   : user
    Created on : 1 Sep, 2019, 10:15:21 AM
    Author     : Dell
--%>


<html>
    <head>
        <style>
       
            body
            {
                background: linear-gradient(30deg,#000000,#8000ff);
            }
            input{
                color: whitesmoke;
                border-radius: 25px;
                padding: 18px;
                width: 140px;
                height: 30px;
                background: linear-gradient(to right ,rgba(255,0,0,0),rgba(255,0,0,1));
                font-size: 18px;
                font-family: sans-serif;
            }
            input:hover{
                background: linear-gradient(to right , rgba(255,0,0,1),rgba(255,0,0,0));
                box-shadow: 1px 1px 5px 3px #f0f0f0;
            }
            
        </style>
    </head>
    <body>
        <a href="login.jsp" target="t1"> <center><input type="submit" value="Login"></center></a>
        <a href="signup.jsp" target="t1"> <center><input type="submit" value="Signup"></input></center></a>
        <% String var1 = (String)session.getAttribute("ID");
           String var2 = (String)session.getAttribute("IDA");
            if( var2!=null && var2!="")
            { %>
       <a href="busRecord.jsp" target="t1"><center><input type="submit" value="Admin"></center></a>
         <% } 
            else{ %>
            <a href="#"> <center><input type="submit" value="Admin"></center></a>
            <%}%>   
           </body>
</html>

