<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>Process Number</title>
</head>
<body>
<h2>Processed Result</h2>
<%
    String numberStr = request.getParameter("number");
    try {
        int number = Integer.parseInt(numberStr);
        out.println("<p>You entered: " + number + "</p>");
    } catch (NumberFormatException e) {
        out.println("<p>Invalid input. Please enter a valid number.</p>");
    }
%>
</body>
</html>
