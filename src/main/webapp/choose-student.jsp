<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*,com.example.jsp_tags.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Foreach Student</title>
</head>

<%
    // just create some sample data
    List<Student> students = new ArrayList<>();

    students.add(new Student("John", "Doe", true));
    students.add(new Student("Adam", "Smith", false));
    students.add(new Student("Sally", "Pearson", false));
    students.add(new Student("Samantha", "Jackson", true));

    pageContext.setAttribute("studentList", students);
%>

<body>
<table>
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Gold customer</th>
    </tr>
    <c:forEach var="student" items="${studentList}">
        <tr>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>
                <c:choose>
                    <c:when test="${student.goldCustomer}">
                        Special discount
                    </c:when>
                    <c:otherwise>
                        Unlucky
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
