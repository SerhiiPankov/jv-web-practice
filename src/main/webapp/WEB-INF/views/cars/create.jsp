<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi cars</title>
</head>
<body>
<h1>Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <table>
        <tr>
            <td>Car's model</td>
            <td><input type="text" name="model"><br></td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td>
                <select name="manufacturer_id">
                    <option selected="selected">Select manufacturer</option>
                    <c:forEach items="${allManufacturers}" var="manufacturer">
                        <option value="${manufacturer.id}">${manufacturer.name} - ${manufacturer.country}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
    </table>
    <button type="submit">Create</button>
    <br>
</form>
</body>
</html>
