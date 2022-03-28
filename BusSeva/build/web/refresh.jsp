<%-- 
    Document   : refresh
    Created on : 1 Sep, 2019, 10:48:38 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <style>
            h1{
                color:blueviolet;
                
            }
            .btn{
                 width:15%;
                background:green;
                border: 2px solid #4caf50;
                color: white;
                padding:5px;
                font-size:18px;
                cursor:pointer;
                margin: 12px 0;
            }
            body{
                background: black;
            }
            .mihir{
                position: absolute;
                top: 200px;
                left: 380px;
            }
        </style>
        
        <script>
        function refresh()
        {
         window.open("view.jsp",target="t1");
            window.open("user.jsp",target="t3");
        }
    </script>
    </head>
    <body>
    <center>
        <div class="mihir">
        <h1>Page require reload please click on the Refresh button</h1>
        <a href="menu.jsp" target="t2" ><input class="btn" onclick="refresh()" type="submit" value="Refresh"></a>
        </div>
    </center>
    </body>
    
</html>


