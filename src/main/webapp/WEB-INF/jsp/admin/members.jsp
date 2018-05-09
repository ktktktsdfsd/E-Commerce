<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Elektro Admin Panel-Üyeler</title>

    <link href="<c:url value="/resources/admin/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <link href="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/admin/css/sb-admin.css"/>" rel="stylesheet">
</head>

<body>

<!-- Example DataTables Card-->
<div class="card mb-3">
    <div class="card-header">
        <i class="fa fa-table"></i> Üyeler
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

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
                    <c:if test="${item.removed==false}">
                        <tr>
                            <td>${item.name}</td>
                            <td>${item.surname}</td>
                            <td>${item.mail}</td>
                            <td class="d-flex justify-content-between align-items-center">
                                <c:choose>
                                    <c:when test="${item.active==true}"><input type="checkbox" disabled
                                                                               checked></c:when>
                                    <c:otherwise><input type="checkbox" disabled></c:otherwise>
                                </c:choose>
                                <span>
                                <a href="#" class="btn btn-danger">Sil</a>
                                <a href="admin/member/details?id=${item.id}" class="btn btn-primary">Ayrıntılar</a>
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
                url: "${pageContext.request.contextPath}/deleteMember",
                data: {"id": id},
                success: function () {
                    alert("Üye Silindi!");
                    loadPage('admin/members')
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
