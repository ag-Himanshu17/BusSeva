<%-- 
    Document   : userView
    Created on : 1 Sep, 2019, 11:13:45 AM
    Author     : Dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.vertical-menu {
  width: 150px;
}

.vertical-menu a {
  background-color: #cc00cc;
  color: white;
  display: block;
  padding: 14px 16px;
  text-decoration: none;
  left:200px;
  font-size: 20px; 
}

.vertical-menu a:hover {      
  background-color: #6600cc;
}

.vertical-menu a.active {
  background-color: #4CAF50;
  color: white;
}
#mihir{
    position: absolute;
    top:-8px;
    left:90%;
    z-index: 2;
}


</style>
<script>
     function refresh()
        {
           window.open("menu.jsp",target="t2");
         //  var newtab=windows.open("menu.jsp",target="t2");
          // newtab.document.location.reload(true);
        }
</script>
</head>
<body>
<div class="vertical-menu" id="mihir">
  <a href="profile.jsp">Profile</a>
  <a href="feedback.jsp">Feedback</a>
  <a href="logout.jsp" onclick="refresh()">Logout</a>
</div>
<jsp:include page="view.jsp"></jsp:include>
</body>
</html>

