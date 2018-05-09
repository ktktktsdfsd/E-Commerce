<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Kategori Ekle</title>

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
        <!-- row -->
        <!-- Product thumb imgs -->
        <div class="col-md-2  col-md-pull-5">
            <div id="product-imgs">
                <div class="product-preview">
                    <img src="<c:url value="/resources/electro/img/product01.png"/>">
                </div>
            </div>
        </div>
        <!-- /Product thumb imgs -->
        <!-- Product details -->
        <div class="col-md-5">
            <div class="product-details">
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Başlık </label>
                    <div class="col-lg-9">
                        <input class="form-control" type="text" id="title">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Adı </label>
                    <div class="col-lg-9">
                        <input class="form-control" type="text" id="name">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Kategori</label>
                    <div class="col-lg-9">
                        <select class="form-control" id="selectCategory">
                            <c:forEach var="item" items="${categories}">
                                <option id="${item.id}" value="${item.id}">${item.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Fiyatı </label>
                    <div class="col-lg-9">
                        <input class="form-control" type="text" id="price">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Açıklama </label>
                    <div class="col-lg-9">
                        <textarea class="form-control" id="description"></textarea>
                    </div>
                </div>
                <button onclick="ajaxpost()" class="btn btn-primary">Ekle</button>
            </div>
        </div>
    </div>
</div>

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
            url: "${pageContext.request.contextPath}/createProduct",
            data: {
                "name": $('#name').val(),
                "title": $('#title').val(),
                "price": $('#price').val(),
                "description": $('#description').val(),
                "categoryId": $('#selectCategory').val()
            },
            success: function (res) {
                alert("Ürün Eklendi!");
                $('#name').attr("value", "");
            },
            error: function () {
                alert("Ekleme Başarısız");
            }
        });
    }
</script>

</body>
</html>