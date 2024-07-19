<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.io.*" %>
<html>
<head>
    <title>Lotto Result</title>
</head>
<body>
<h2>Lotto Number Generator</h2>
<form action="lottoResult.jsp" method="post">
    <label for="inputNumber">Enter a Number:</label>
    <input type="number" id="inputNumber" name="inputNumber" required>
    <input type="submit" value="Generate Lotto Numbers">
</form>

<%
    String inputNumberStr = request.getParameter("inputNumber");
    if (inputNumberStr != null) {
        try {
            int inputNumber = Integer.parseInt(inputNumberStr);
            int numLottoSets = inputNumber / 1000;

            Random rand = new Random();

            out.println("<h3>Generated Lotto Numbers:</h3>");
            out.println("<ul>");

            for (int i = 0; i < numLottoSets; i++) {
                Set<Integer> lottoNumbers = new TreeSet<>();
                while (lottoNumbers.size() < 6) {
                    int number = rand.nextInt(45) + 1; // 1 to 45
                    lottoNumbers.add(number);
                }
                out.println("<li>" + lottoNumbers + "</li>");
            }

            out.println("</ul>");
        } catch (NumberFormatException e) {
            out.println("<p>Invalid input. Please enter a valid number.</p>");
        }
    }
%>
</body>
</html>
