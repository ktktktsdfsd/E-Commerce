<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Elektro Admin Panel-Üye Detay Sayfası</title>

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
                <li class="nav-item">
                    <a href="" data-target="#profile" data-toggle="tab" class="nav-link active">Profil</a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#edit" data-toggle="tab" class="nav-link">Siparişler</a>
                </li>
            </ul>
            <div class="tab-content py-4">
                <!-- Profil sekmesi -->
                <div class="tab-pane active" id="profile">
                    <h5 class="mb-3">${member.name}&nbsp;${member.surname}</h5>
                    <div class="row">
                        <div class="col-md-6">

                            <%--<form name="member" action="admin/member/update?id=${member.id}" method="post">--%>
                            <form>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Adı </label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" id="name" value="${member.name}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Soyadı </label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" id="surname" value="${member.surname}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">E-Mail Adresi</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="email" id="mail" value="${member.mail}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Şifre </label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="password" id="password"
                                               value="${member.password}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Adresi</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" id="adress" value="${member.adress}">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label"></label>
                                    <div class="col-lg-9">
                                        <input type="button" onclick="ajaxpost()" class="btn btn-primary"
                                               value="Kaydet">
                                    </div>
                                </div>
                            </form>

                        </div>

                    </div>
                    <!--/row-->
                </div>
                <!-- Profil sekmesi -->


                <!-- Sipasiler sekmesi -->
                <div class="tab-pane" id="edit">
                    <form role="form">
                        <!-- Sipasiler sayfası -->
                        <!-- Example DataTables Card-->
                        <div class=" card mb-3 ">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <span>
                                    <i class="fa fa-table"></i> Siparişler</span>
                            </div>
                            <div class="card-body">

                                <div class="table-responsive">

                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                        <tr>
                                            <th>Kategori Adı</th>

                                        </tr>
                                        </thead>

                                        <tbody>
                                        <tr>
                                            <td class="d-flex justify-content-between align-items-center">Tiger
                                                NixonTiger
                                                <span>
                                                        <input type="button" class="btn btn-danger " value="Sil">
                                                    </span>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </form>
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

<script>
    function ajaxpost() {

        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/updateMember",
            data: {
                "id": ${member.id},
                "name": $('#name').val(),
                "surname": $('#surname').val(),
                "mail": $('#mail').val(),
                "password": $('#password').val(),
                "adress": $('#adress').val()
            },
            success: function (res) {
                alert("Üye Güncellendi!");
            },
            error: function () {
                alert("Güncelleme Başarısız");
            }
        });
    }

</script>
</body>

</html>

