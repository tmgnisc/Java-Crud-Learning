<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>This is home page</title>
</head>
<body>
    <h1>Welcome: ${user}</h1>

    <form action="delete" method="post">
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="employee">
                    <tr>
                        <td><c:out value="${employee.id}"/></td>
                        <td><c:out value="${employee.firstName}"/></td>
                        <td><c:out value="${employee.lastName}"/></td>
                        <td><c:out value="${employee.username}"/></td>
                        <td>
                            <input type="hidden" name="id" value="${employee.id}"/>
                            <button type="submit">Delete</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </form>

</body>
</html>
