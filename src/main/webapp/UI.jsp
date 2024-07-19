<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BMI Calculator</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        form { margin-bottom: 20px; }
        label { display: block; margin-top: 10px; }
        input[type="text"], input[type="number"] { width: 200px; }
        input[type="submit"] { margin-top: 10px; }
    </style>
</head>
<body>
<h2>BMI Calculator</h2>
<form action="UI.jsp" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="weight">Weight (kg):</label>
    <input type="number" id="weight" name="weight" step="0.1" required><br>

    <label for="height">Height (m):</label>
    <input type="number" id="height" name="height" step="0.01" required><br>

    <input type="submit" value="Calculate BMI">
</form>

<%
    String name = request.getParameter("name");
    String weightStr = request.getParameter("weight");
    String heightStr = request.getParameter("height");

    if (name != null && weightStr != null && heightStr != null) {
        try {
            double weight = Double.parseDouble(weightStr);
            double height = Double.parseDouble(heightStr);
            double bmi = weight / (height * height);

            out.println("<h3>Result</h3>");
            out.println("<p>Name: " + name + "</p>");
            out.println("<p>Weight: " + weight + " kg</p>");
            out.println("<p>Height: " + height + " m</p>");
            out.println("<p>Your BMI is: " + String.format("%.2f", bmi) + "</p>");
        } catch (NumberFormatException e) {
            out.println("<p>Invalid input. Please enter valid numbers.</p>");
        }
    }
%>
</body>
</html>
