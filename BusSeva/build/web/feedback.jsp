<%-- 
    Document   : feedback
    Created on : 1 Sep, 2019, 11:15:05 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        h1
        {
            color:BLACK;
        }
        textarea
        {
            background:blueviolet;
            color: white;
        }
        body{
             background: linear-gradient(to right ,#1a0000,#ff6633);
        }
        .mihir{
            width: 280px;
                position: absolute;
                top:65%;
                left:48%;
                transform: translate(-50%, -50%);
                color:white;
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
            .btn:hover{
                background:green;
                color:black;
            }
             table{
                
                width:130%;
             
            }
    </style>
    <body>
   
        <form name="ak" action="feed.jsp" method="post" onsubmit="return valid()" >
            <center>
                <h1><u>Give your Feedback </u></h1>
                <textarea rows="16" cols="80" name="a" autofocus>  </textarea>
            </center>
            <div class="mihir">
                <table>
                    <tr> <td>  <input class="btn" type="submit" name="b" value="Submitt"></td>
                        <td> <input class="btn" type="Reset" name="c" value="Cancel"></td></tr>
                </table>
            </div>
        </form>
    </body>
    <script>
        function valid(){
       var a=document.ak.a.value;
       if( a==null || a="")
       {
           alert("Please write a feedback");
           return false;
       }
    }
    </script>
</html>
