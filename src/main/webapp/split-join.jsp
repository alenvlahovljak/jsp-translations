<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Split and Join functions</title>
</head>
<body>
<c:set var="citiesString" value="London,New York,Madrid,Paris"/>

<c:set var="citiesArray" value="${fn:split(citiesString, ',')}"/>
<h3>Cities:</h3>
<c:forEach var="city" items="${citiesArray}">
    ${city}<br/>
</c:forEach>

<c:set var="joinedCities" value="${fn:join(citiesArray, '-')}"/>
<br/>
Joined cities: ${joinedCities}
</body>
</html>
