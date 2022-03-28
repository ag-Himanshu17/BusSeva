<%-- 
    Document   : busRecord
    Created on : 1 Sep, 2019, 10:51:58 AM
    Author     : Dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>   
        <script>  
/*
function valid(){
    var bn=document.ak.bn.value;
    var bt=document.ak.bt.value;
    var st=document.ak.st.value;
    var on=document.ak.on.value;
    var f1=document.ak.f1.value;
    var t1=document.ak.t1.value;
     var f2=document.ak.f2.value;
    var t2=document.ak.t2.value; 
    var at1=document.ak.at1.value;
    var at2=document.ak.at2.value;
    var dt1=document.ak.dt1.value;
    var dt2=document.ak.dt2.value;
    
    if (bn==null || bn=="" && bt==null || bt=="" && st==null || st=="" && on==null || on=="" && f1==null || f1=="" && t1==null || t1=="" && f2==null || f2=="" && t2==null || t2=="" at1==null || at1="" && at2==null || at2=="" && dt1==null || dt1=="" && dt2==null || dt2=="")
{  
  alert("All the fields are mandatory !");  
  return false;  
} 
}
function valid1(){
    var bn=document.ak.bn.value;
    if (bn==null || bn=="" )
        {  
  alert("Bus number cannot be empty !");  
  return false;  
} 
}*/
function click1()
{
    var f1=document.forms[0];
    f1.action="search.jsp";
   // return valid1();
    f1.submit();
    
}

function click4()
{
    var f4=document.forms[0];
    f4.action="busRecordOperation.jsp";
   // return valid();
    f4.submit();
}

function click5()
{
    var f5=document.forms[0];
    f5.action="readFeedback.jsp";
   
    f5.submit();
}
    </script>
        
        <style>
           body{
           margin:0;
           padding:0;
           font-family:sans-serif;
             background: linear-gradient(to right ,#1a0000,#ff3333);
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
                top:90%;
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
                
                width:400%;
             
            }
              .val_error{
                color:#ff1f1f;
            }
        </style></head>
    <body>
        <form name="ak" action="" method="post">
            
            <center> <h1><u>Bus Record</u></h1> </center> 
            <div class="bus">
           
            <div class="textbox">
                <input type="text" placeholder="Bus no." name="bn" autofocus value="">
          
            </div>
             <div class="textbox">
                <input type="text" placeholder="Bus type" name="bt">
            </div>
             <div class="textbox">
                <input type="text" placeholder="Seat type" name="st">
               
            </div>
             <div class="textbox">
                <input type="text" placeholder="Owner name" name="on">
          
            </div>
            <div class="textbox">
                <input type="text" placeholder="Arival time1" name="at1">
          
            </div>
                 <div class="textbox">
                <input type="text" placeholder="Arival time2" name="at2">
            </div>
                 <div class="textbox">
                <input type="text" placeholder="Departure time1" name="dt1">
          
            </div>
                 <div class="textbox">
                <input type="text" placeholder="Departure time2" name="dt2">
            </div>
                
            </div>
            
        <div class="bus1">
            <h3>Route1</h3>
            <div class="textbox">
                <input type="text" placeholder="From" name="f1" >
              
            </div>
              <div class="textbox">
                <input type="text" placeholder="To" name="t1">
                
              </div>
            
              <h3>Route2</h3>
            <div class="textbox">
                <input type="text" placeholder="From" name="f2">
              
            </div>
              <div class="textbox">
                <input type="text" placeholder="To" name="t2">
                
              </div>
        </div>
   
            <div class="bus2">
                
                  <h3>via:</h3>
            <div class="textbox">
                <input type="text" placeholder="Station1" name="st1">
              
            </div>
              <div class="textbox">
                <input type="text" placeholder="Station2" name="st2">
                
              </div>
                  <div class="textbox">
                <input type="text" placeholder="Station3" name="st3">
              
            </div>
              <div class="textbox">
                <input type="text" placeholder="Station4" name="st4" >
                
              </div>
                     <div class="textbox">
                <input type="text" placeholder="Station5" name="st5" >
              
            </div>
              <div class="textbox">
                <input type="text" placeholder="Station6" name="st6" >
                
              </div>
              </div>
           
            <div class="btcss">
                 <table>
            <tr>
                <td> <input class="btn" onclick="click4()" type="submit" value=" Add " ></td>
                <td> <input class="btn"  type="reset" value="Cancel" ></td>
                <td> <input class="btn" onclick="click1()" type="submit" value="Search" ></td>
                <td> <input class="btn" onclick="click5()" type="submit" value="Read_Feedback" ></td>
                </tr>
            </table>
            </div>
           </form>
    </body>
</html>