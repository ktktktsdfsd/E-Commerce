<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SB Admin - Start Bootstrap Template</title>

    <link href="<c:url value="/resources/admin/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <link href="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/css/sb-admin.css"/>" rel="stylesheet">
</head>


<body>

<div class="card mb-3">
    <!-- Example DataTables Card-->
    <div class="card-header d-flex justify-content-between align-items-center">
        <span><i class="fa fa-table"></i> Kategoriler</span>
        <input type="button" class="btn btn-success" value="Ekle"></div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                <thead>
                <tr>
                    <th>Kategori Adı</th>
                </tr>
                </thead>

                <tbody>

                <c:forEach var="item" items="${categories}">
                    <tr>
                        <td class="d-flex justify-content-between align-items-center">${item.name}
                            <span>
                                <a href="#" class="btn btn-danger">Sil</a>
                                <a href="#" class="btn btn-primary">Düzenle</a>
                            </span>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>


<!-- Bootstrap core JavaScript-->
<script src="<c:url value="/resources/admin/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<!-- Core plugin JavaScript-->
<script src="<c:url value="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
<!-- Page level plugin JavaScript-->
<script src="<c:url value="/resources/admin/vendor/datatables/jquery.dataTables.js"/>"></script>
<script src="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.js"/>"></script>
<!-- Custom scripts for all pages-->
<script src="<c:url value="/resources/admin/js/sb-admin.min.js"/>"></script>
<!-- Custom scripts for this page-->
<script src="<c:url value="/resources/admin/js/sb-admin-datatables.min.js"/>"></script>
</body>

</html>
