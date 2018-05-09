<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Kategori Güncelle</title>

    <link href="<c:url value="/resources/admin/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <link href="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/css/sb-admin.css"/>" rel="stylesheet">
</head>
<body>

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">

        <!-- Product details -->
        <div class="col-md-5">
            <div class="product-details">
                <h2 class="product-name">Kategori Adı</h2>

                <input class="form-control" type="text" id="name" value="${category.name}">
                <input type="button" onclick="ajaxpost()" class="btn btn-primary" value="Güncelle">
            </div>
        </div>
        <!-- /Product details -->

        <!-- Product tab -->
        <hr>
        <!-- /product tab -->
    </div>
    <!-- /row -->
</div>
<!-- /container -->

<script src="<c:url value="/resources/admin/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/resources/admin/vendor/datatables/jquery.dataTables.js"/>"></script>
<script src="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.js"/>"></script>
<script src="<c:url value="/resources/admin/js/sb-admin.min.js"/>"></script>
<script src="<c:url value="/resources/admin/js/sb-admin-datatables.min.js"/>"></script>

<script>
    function ajaxpost() {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/updateCategory",
            data: {
                "id": ${category.id},
                "name": $('#name').val(),
            },
            success: function (res) {
                alert("Kategori Güncellendi!");
            },
            error: function () {
                alert("Güncelleme Başarısız");
            }
        });
    }
</script>


</body>
</html>