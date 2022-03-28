<%-- 
    Document   : menu
    Created on : 1 Sep, 2019, 10:15:34 AM
    Author     : Dell
--%>


<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<html>
   <head>
       <!--<meta http-equiv="refresh" content="5">-->
      <style>
      @import "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
         ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background: linear-gradient(30deg,#1a001a,#cc00cc);
            position: fixed;
            top: 0;
            left:0;
            bottom:0;
            width: 100%;
            }
         ul li {
            float: left;
            list-style: none;
            }

         ul li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 20px; 
           }
          ul li.active a{
             background: #6600cc;
             color: black;
            }
           ul li:hover{
                background: #6600cc;
             
            }
           i{
                width: 26px;
                float: left;
                text-align:center;
            }    
    </style>     
    </head>
    <body>
        <%  String var1 = (String)session.getAttribute("ID");
             String var2 = (String)session.getAttribute("IDA"); %>
        <div>
          <ul>       
                <li class="active"><a  href="view.jsp" target="t1"> Home</a> </li>
                <li><a href="#">News</a></li>
                <li><a href="#" >Contact</a></li>   
                <li><a href="bookTicket.jsp" target="t1">BookTicket</a><li>
                <li><a href="cancelTicket.jsp" target="t1">CancelTicket</a><li>
                <li><a href="#" >Tracking</a><li>
                <li><a href="#" >Route</a><li>   
                <li><a  href="#">About</a></li>
        <% if(var2!=null && var1=="")
            { %>
                <li style="float:right"><a  href="logout.jsp" target="t1" onclick='refresh()'>Logout</a></li>
            <% } %>
        <li style="float:right" >
            <%  
            if( var1!=null && var2=="")
            { 
            %>   
                <a href="userView.jsp" target="t1" ><i class="fa fa-user" aria-hidden="true"></i> User </a>
              <% } %>      
                    </li>
          </ul>      
        </div>
        <!-- This two script is used for active -->
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script>
             function refresh()
        {
            location.reload();
             window.open("user.jsp",target="t3");
             window.open("menu.jsp",target="t2");
        }
            
        </script>
        <script type="text/javascript">
           
            $(document).on('click','ul li',function(){
                $(this).addClass('active').siblings().removeClass('active')
                
            });
           
          
        </script>
        
    </body>
</html>