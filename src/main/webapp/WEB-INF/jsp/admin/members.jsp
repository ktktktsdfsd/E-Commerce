<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Elektro Admin Panel-Kategoriler</title>
    <!-- Bootstrap core CSS-->
    <link href="<c:url value="/resources/admin/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="<c:url value="/resources/admin/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <!-- Page level plugin CSS-->
    <link href="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/admin/css/sb-admin.css"/>" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">


<div class="container-fluid">

    <!-- Example DataTables Card-->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fa fa-table"></i> Üyeler
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%"
                       cellspacing="0">
                    <thead>
                    <tr>
                        <th>Ad</th>
                        <th>Soyad</th>
                        <th>Mail Adres</th>
                        <th>Aktif</th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="item" items="${members}">


                        <tr>
                            <td>${item.name}</td>
                            <td>${item.surname}</td>
                            <td>${item.mail}</td>
                            <td class="d-flex justify-content-between align-items-center">

                                <c:choose>
                                    <c:when test="${item.active==true}">
                                        <input type="checkbox" disabled checked>
                                    </c:when>
                                    <c:otherwise>
                                        <input type="checkbox" disabled>
                                    </c:otherwise>
                                </c:choose>
                                <span>
                                    <a href="#" class="btn btn-danger">Sil</a>
                                    <a href="#" class="btn btn-primary">Düzenle</a>
                                    <a href="#" class="btn btn-warning">Ayrıntılar</a>
                                </span>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at
            11:59 PM
        </div>
    </div>

    <script src="<c:url value="/resources/admin/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/vendor/datatables/jquery.dataTables.js"/>"></script>
    <script src="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/sb-admin.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/sb-admin-datatables.min.js"/>"></script>
</div>
</body>

</html>
