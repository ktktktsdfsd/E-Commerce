<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Elektro Admin Panel-Ürünler</title>

    <link href="<c:url value="/resources/admin/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <link href="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/css/sb-admin.css"/>" rel="stylesheet">
</head>
<body>

<div class="card mb-3">
    <div class="card-header d-flex justify-content-between align-items-center">
        <span><i class="fa fa-table"></i> Ürünler</span>
        <a href="admin/product/create" class="btn btn-success">Ekle</a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Adı</th>
                    <th>Başlık</th>
                    <th>Fiyat</th>
                    <th>Kategori</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="item" items="${products}">
                    <c:if test="${item.removed==false}">
                        <tr>
                            <td>${item.name}</td>
                            <td>${item.title}</td>
                            <td>${item.price}&nbsp;₺</td>
                            <td class="d-flex justify-content-between align-items-center">${item.category.name}
                                <span>
                                <button class="btn btn-danger" onclick="ajaxpost(${item.id})">Sil</button>
                                <a href="admin/product/details?id=${item.id}" class="btn btn-primary">Ayrıntılar</a>
                                </span>
                            </td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
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
    function ajaxpost(id) {

        var r = confirm("Silmek istediğinize emin misiniz?");
        if (r == true) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/deleteProduct",
                data: {"id": id},
                success: function () {
                    alert("Kategori Silindi!");
                    loadPage('admin/products')
                },
                error: function () {
                    alert("Silme Başarısız");
                }
            });
        }
    }
</script>

</body>
</html>