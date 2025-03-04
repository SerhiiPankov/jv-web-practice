<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi drivers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Manufacturer</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${allManufacturers}" var="manufacturer">
    <tr>
        <td><c:out value="${manufacturer.id}" /></td>
        <td><c:out value="${manufacturer.name}" /></td>
        <td><c:out value="${manufacturer.country}" /></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete manufacturer</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
