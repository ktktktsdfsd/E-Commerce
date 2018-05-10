<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Kaydol</title>
    <link href="<c:url value="/resources/admin/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
</head>
<body>

<!-- container -->
<div class="container col-md-5">
    <!-- row -->

    <form id="loginForm" method="POST" action="/signUpControl">
        <div class="form-group">
            <label for="email" class="control-label">E-Posta Adresi</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="example@gmail.com">
        </div>
        <div class="form-group">
            <label for="password" class="control-label">Şifre</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Şifreniz">
        </div>
        <button type="submit" class="btn btn-success btn-block">Kaydol</button>
    </form>
</div>

<script src="<c:url value="/resources/admin/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

</body>
</html>