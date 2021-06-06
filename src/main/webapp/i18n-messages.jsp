<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="locale" value="${not empty param.locale ? param.locale : pageContext.request.locale}" scope="session"/>

<fmt:setLocale value="${locale}"/>

<fmt:setBundle basename="com.example.jsp_tags.i18n.resources.mylabels"/>

<html>
<head>
    <title>i18n messages</title>
</head>
<body>
<a href="i18n-messages.jsp?locale=en_US">English (US)</a>
|
<a href="i18n-messages.jsp?locale=es_ES">Spanish (ES)</a>
|
<a href="i18n-messages.jsp?locale=de_DE">German (DE)</a>
<br/>

<fmt:message key="label.greeting"/>
<br/>
<fmt:message key="label.firstName"/>: <i>John</i><br/>
<fmt:message key="label.lastName"/>: <i>Doe</i><br/>
<fmt:message key="label.welcome"/><br/>
<hr/>
Selected locale: ${locale}
</body>
</html>
