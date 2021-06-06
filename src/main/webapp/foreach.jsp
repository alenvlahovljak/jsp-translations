<%--
  Created by IntelliJ IDEA.
  User: alenvlahovljak
  Date: 27. 5. 2021.
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    String[] cities = {"Mumbai", "Singapore", "Philadelphia"};

    pageContext.setAttribute("cities", cities);
%>
<body>
<c:forEach var="city" items="${cities}">
    ${city}<br/>
</c:forEach>
</body>
</html>
