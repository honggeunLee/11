<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    // 지시자 - directives
    // 코드조각 - scriptlet
    // 표현식 - expression
    String msg = "My Hello World";

    for (int i = 0; i < 10; i++) {

    }

%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= msg %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

</body>
</html>