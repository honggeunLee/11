<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BMI Calculator</title>
</head>
<body>
<h2>BMI Calculator</h2>
<form action="bmiResult.jsp" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="weight">Weight (kg):</label>
    <input type="number" id="weight" name="weight" step="0.1" required><br>

    <label for="height">Height (m):</label>
    <input type="number" id="height" name="height" step="0.01" required><br>

    <input type="submit" value="Calculate BMI">
</form>
</body>
</html>
