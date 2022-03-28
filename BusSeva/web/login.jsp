<%-- 
    Document   : login
    Created on : 1 Sep, 2019, 10:20:54 AM
    Author     : Dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn</title>
        <style>
            @import "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
             body{
           margin:0;
           padding:0;
           font-family:sans-serif;
            background: url("bus13.jpg") no-repeat;   
            background-size: cover;
            }
            .login-box{
                width: 280px;
                position: absolute;
                top:50%;
                left:50%;
                transform: translate(-50%, -50%);
                color:white;
                
            }
            .login-box h1{
                float:left;
                font-size: 40px;
                border-bottom: 6px solid #4caf50;
                margin-bottom: 50px;
                padding:13px 0;
            }
            .textbox{
                width:100%;
                overflow: hidden;
                font-size: 20px;
                padding: 8px 0;
                margin: 8px 0;
                border-bottom: 1px solid #4caf50;
            }
            .textbox i{
                width: 26px;
                float: left;
                text-align:center;
                
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
                width:100%;
                background: none;
                border: 2px solid #4caf50;
                color: white;
                padding:5px;
                font-size:18px;
                cursor:pointer;
                margin: 12px 0;
            }
            .login-box h2{
                 float:left;
                font-size: 30px;
                margin-bottom: 10px;
                padding:13px 0;
            }
        </style>
    </head>
    <body>
        <form action="loginOperation.jsp" method="post">
        <div class="login-box">
            <h1>Login</h1>
              
            <h2>
                <input type="radio" name="radio1" value="1" checked> User
                <input type="radio" name="radio1" value="2">Admin
            </h2>
            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <input type="text" placeholder="Username" name="a" autofocus value="">
            </div>
            
            <div class="textbox">
                <i class="fa fa-lock" aria-hidden="true"></i>
                <input type="password" placeholder="Password" name="b" value="">
               
            </div>
            
            <input class="btn" type="submit" name="a" value="Sign in">
        </div>
        </form>
    </body>
</html>

