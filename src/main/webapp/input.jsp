<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input Form</title>
</head>
<body>
<h2>Enter Your Details</h2>
<form action="process.jsp" method="post">
    <label for="text">Text:</label>
    <input type="text" id="text" name="text" required><br>

    <label for="number">Number:</label>
    <input type="number" id="number" name="number" required><br>


    <label for="textarea">Message:</label>
    <textarea id="textarea" name="textarea"></textarea><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>
