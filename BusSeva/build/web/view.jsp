<%-- 
    Document   : view
    Created on : 1 Sep, 2019, 10:15:47 AM
    Author     : Dell
--%>

<html>
    <head>
                <style>
    body{
        background: linear-gradient(132deg, #ec5218, #1665c1);
        background-size:  400% 400%;
        animation: BackgroundGradient 10s ease infinite;
     
     }                
   @keyframes BackgroundGradient
  {
   0%{background-position: 0% 50%;}
   50%{background-position:100% 50%;}
   100%{background-position:0% 50%}
   }

   .slide{
               /* Image slide */
                width:50%;
                height: 400px;
                position:absolute;
                left:50%;
                top:50%;
                transform: translate(-50%, -50%);
               background-image: url("bus1.jpg");
               background-size: 100% 100%;
                box-shadow: 1px 2px 10px 2px #8f00b3;
               animation: slider 30s infinite linear;
             
            }
            @keyframes slider {
                0%{background-image: url("bus1.jpg");}
                25%{background-image: url("bus2.jpg");}
                50%{background-image: url("bus3.jpg");}
                75%{background-image: url("bus4.jpg");}
            }
   
        </style>
    </head>
    <body>
        <div class="slide">

         </div>   
    </body>
</html>


