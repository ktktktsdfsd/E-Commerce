<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sipariş Detayları</title>

    <link href="<c:url value="/resources/admin/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <link href="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/css/sb-admin.css"/>" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row my-2">
        <div class="col-lg-12 order-lg-2">
            <ul class="nav nav-tabs">
                <li class="nav-item"><a href="" data-target="#profile"
                                        data-toggle="tab" class="nav-link active">Sipariş Bilgileri</a>
                </li>
            </ul>
            <div class="tab-content py-4">
                <div class="tab-pane active" id="profile">
                    <h5 class="mb-3">Kullanıcı Profili</h5>
                    <hr/>
                    <div class="row">
                        <div class="col-md-6">
                            <h6>Üye Adı Soyadı</h6>
                            <p>${order.member.name} ${order.member.surname}</p>
                            <h6>Tarih</h6>
                            <p>${order.date}</p>
                            <h6>Toplam Fiyat</h6>
                            <p>${order.sumPrice}</p>
                            <h6>Teslim Bilgisi</h6>
                            <c:choose>
                                <c:when test="${order.deliver}">
                                    <p>Teslim Edildi</p>
                                </c:when>
                                <c:otherwise>
                                    <p>Teslim Edilmedi</p>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                    <!--/row-->
                </div>

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
</body>
</html>
