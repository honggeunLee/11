<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2024-07-19
  Time: 오후 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    System.out.println("bmiResult jsp run.......");

    String heightStr = request.getParameter("height");
    String weightStr = request.getParameter("weight");
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>RESULT</h1>
    <h1><%= heightStr%></h1>
    <h1><%= weightStr%></h1>
</body>
</html>
