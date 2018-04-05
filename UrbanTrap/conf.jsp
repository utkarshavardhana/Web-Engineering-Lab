<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*" %>
<html>
<head>
</head>
<body>
<h1 style="color:black;text-align:center">CONFIRMATION</h1>
<hr>
<h3>Dear <%out.print(request.getParameter("Name"));%>,</h3>
<p>we are pleased to have you as a part of Urban Trap.</p>
<p>please confirm your details:</br> <br>email address : <span style="background:yellow"> <%out.print(request.getParameter("email"));%></span><p>
</body>
</html>
