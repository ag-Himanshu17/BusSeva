<%-- 
    Document   : head
    Created on : 1 Sep, 2019, 10:15:08 AM
    Author     : Dell
--%>
<html>
    <head>
         <script>
            function startTime() {
              var today = new Date();
              var h = today.getHours();
              var m = today.getMinutes();
              var s = today.getSeconds();
              m = checkTime(m);
              s = checkTime(s);
              document.getElementById('txt').innerHTML =h + ":" + m + ":" + s;
              var t = setTimeout(startTime, 500);
              // Below two line codes for Finding the date
              var today= new Date();
              document.getElementById("date_str").innerHTML=today.toDateString();
            }
            function checkTime(i) {
              if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
              return i;
            }
        </script>
        <style>
           .head
            {
                font-size:22px;
                font-style: normal;
                font-weight: bold;
            }  
            body
            {
                background: linear-gradient(30deg,#000000,#9933ff,#000000);
            }
            .abc
            {
                position:fixed;
                top:0%;
                left:460;
                color:#000000;
                font-size:110px;
                text-shadow: 3px 2px red;
                font-family: serif;
                display: flex;
                justify-content:center;
            }  
            .pos
            {
                position: absolute;
                left: 1%;
                top:80%
            }
        </style>
        </head>
        <body class="head" onload="startTime()">
            <center> 
                <div class="abc">BusSeva</div>
                <font color="white"> 
                    <div id="txt"  align=right></div>
                    <div class="pos" id="date_str"  align=right></div>
                </font> 
            </center>  
        </body>
</html>


