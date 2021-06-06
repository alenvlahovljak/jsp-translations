<%--
  Created by IntelliJ IDEA.
  User: alenvlahovljak
  Date: 27. 5. 2021.
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Function</title>
</head>
<body>
<c:set var="name" value="Alen"/>
Length of name ${name} is ${fn:length(name)}
<br/>
Uppercase name: ${fn:toUpperCase(name)}
<br/>
Does the string ${name} start with <b>Al</b>? ${fn:startsWith(name, "Al")}
</body>
<hr/>

</html>
