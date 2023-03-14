<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link href="${pageContext.request.contextPath}/css/edit.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>

<div class="wrap" style="
	display: flex;
    justify-content: center;
    height: 100vh;
    align-items: center;
">

    <div class="main">
        <c:if test="${not empty error}">
            <div class="alert alert-success" role="alert">
                    ${error}
            </div>
        </c:if>
        <div class="form-box">
            <form class="form" action="/modify-account/${compte.id}" method="POST">
                <span class="title">Modify</span>
                <div class="form-container">
                <input class="input" type="text" name="name" placeholder="Nom d'utilisateur" required="" value="${compte.name}">
                <input class="input" type="email" name="email" placeholder="Email" required="" value="${compte.mail}">
                <input class="input" type="password" name="pswd" placeholder="Mot de passe" required="" value="${compte.password}">
                </div>
                <button type="submit" >Submit</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
