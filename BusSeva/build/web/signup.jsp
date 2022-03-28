<%-- 
    Document   : Signup
    Created on : 1 Sep, 2019, 10:23:12 AM
    Author     : Dell
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <style>
           body{
           margin:0;
           padding:0;
           font-family:sans-serif;
            background: url("nature.jpg") no-repeat;   
            background-size: cover;
            }
            .signup-box{
                width: 280px;
                position: absolute;
                top:45%;
                left:50%;
                transform: translate(-50%, -50%);
                color:white;
                
            }
            .signup-box h1{
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
              .val_error{
                color:#ff1f1f;
            }
        </style>
    </head>
    <body>
        <form name="ak" action="signupOperation.jsp" method="post" onsubmit="return valid()">
        <div class="signup-box">
            <h1>Sign up</h1>
            <div class="textbox">
                <input type="text" placeholder="Name" name="n" autofocus value="">
          
            </div>
             <div class="textbox">
                <input type="number" placeholder="Mobile.No." name="m" value="">
            </div>
             <div class="textbox">
                <input type="email" placeholder="Email ID" name="e" value="">
               
            </div>
             <div class="textbox">
                <input type="text" placeholder="Username" name="u" value="">
          
            </div>
            
            <div class="textbox">
                <input type="password" placeholder="Password" name="p" value="">
              
            </div>
              <div class="textbox">
                <input type="password" placeholder="Confirm password" name="cp" value="">
                
            </div>
            
            <input class="btn" type="Submit" value="Sign up" >
        </div>
   
     <script>  
function valid(){
var n=document.ak.n.value;
var m=document.ak.m.value;
var e=document.ak.e.value;
var u=document.ak.u.value;
var p=document.ak.p.value;
var cp=document.ak.cp.value;
var at=e.indexOf("@");  
var dot=e.lastIndexOf(".");

if (p!=cp)
{
   alert("Password not matched !") 
   return false;
}
if (n==null || n=="" && m==null || m=="" && e==null || e=="" && u==null || u=="" && p==null || p=="" && cp==null || cp=="")
{  
  alert("All the fields are mandatory !");  
  return false;  
} 
if(p.length<6 || p.length>20)
 {  
  alert("Password must be at least 6 and at most 20 characters long.");  
  return false;  
  }
if(m.length<10 || m.length>12)
 {  
  alert("Mobile No. must be at least 10 and at most 12 characters long.");  
  return false;  
  }
if(n.length<5 || n.length>30)
 {  
  alert("Name must be at least 5  and at most 30 characters long.");  
  return false;  
  }
if(e.length<6 || e.length>50)
 {  
  alert("Email must be at least 6 and at most 50 characters long.");  
  return false;  
  }
if(u.length<6 || u.length>20)
 {  
  alert("User Id must be at least 6 and at most 20 characters long.");  
  return false;  
  }
  if (at<3 || dot<at+2 || dot+2>=e.length)
{  
  alert("Please enter a valid e-mail address \n atpostion:"+at+"\n dotposition:"+dot);  
  return false;  
}
}  
 </script> </form>
        
    </body>
</html>
