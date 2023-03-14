<%@ page import="com.example.tp2jpa.Repository.CompteRepository" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link href="${pageContext.request.contextPath}/css/home.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>


<body>
<div class="wrap" style="
    justify-content: center;
">
    <table>
        <thead>
        <c:if test="${not empty error}">
            <div class="alert alert-success" role="alert">
                    ${error}
            </div>
        </c:if>
        <th>Email</th>
        <th>Name</th>
        <th>Password</th>
        <th>Modify</th>
        <th>Delete</th>
        </thead>
        <tbody>
        <c:forEach items="${comptes}" var="compte" >
            <tr>
                <td>${compte.mail}</td>
                <td>${compte.name}</td>
                <td>${compte.password}</td>
                <td><a class="link-success" href="/modify/${compte.id}"><i class="bi bi-pencil-square"></i></a></td>
                <td><a class="link-danger" href="/delete/${compte.id}"><i class="bi bi-trash"></i></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>