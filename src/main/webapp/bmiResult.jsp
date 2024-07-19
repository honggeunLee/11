<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BMI Result</title>
</head>
<body>
<h2>BMI Result</h2>
<%
    String name = request.getParameter("name");
    String weightStr = request.getParameter("weight");
    String heightStr = request.getParameter("height");

    if (name != null && weightStr != null && heightStr != null) {
        try {
            double weight = Double.parseDouble(weightStr);
            double height = Double.parseDouble(heightStr);
            double bmi = weight / (height * height);

            out.println("<p>Name: " + name + "</p>");
            out.println("<p>Weight: " + weight + " kg</p>");
            out.println("<p>Height: " + height + " m</p>");
            out.println("<p>Your BMI is: " + String.format("%.2f", bmi) + "</p>");
        } catch (NumberFormatException e) {
            out.println("<p>Invalid input. Please enter valid numbers.</p>");
        }
    } else {
        out.println("<p>Please provide all the required information.</p>");
    }
%>
</body>
</html>
