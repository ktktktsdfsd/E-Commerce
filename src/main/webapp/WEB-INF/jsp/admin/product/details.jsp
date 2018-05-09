<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Elektro Admin Panel-Ürün Detay Sayfası</title>

<link
	href="<c:url value="/resources/admin/vendor/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/admin/vendor/font-awesome/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/admin/css/sb-admin.css"/>"
	rel="stylesheet">
</head>
<body>

<<<<<<< HEAD
<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <!-- Product thumb imgs -->
        <div class="col-md-2  col-md-pull-5">
            <div id="product-imgs">
                <div class="product-preview">"
                    <img src=<c:url value="/resources/electro/img/product01.png"/>">
							</div>

						</div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class=" col-md-5">
                    <div class="product-details">
                        <h2 class="product-name">${product.name}</h2>
                        <h4 class="product-name">${product.category.name}</h4>
                        <div>
                            <h3 class="product-price"> ${product.price}</h3>
                        </div>
                        <p>${product.description}</p>
                        <div class="add-to-cart">

                        </div>
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
    </div>
    <!-- /SECTION -->

    <script src="<c:url value="/resources/admin/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/vendor/datatables/jquery.dataTables.js"/>"></script>
    <script src="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/sb-admin.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/sb-admin-datatables.min.js"/>"></script>
=======
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
					<h2 class="product-name">${product.name}</h2>
					<h4 class="product-name">${product.category.name}</h4>
					<div>
						<h3 class="product-price">${product.price}</h3>
					</div>
					<p>${product.description}</p>
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
	</div>
	<!-- /SECTION -->

	<script	src="<c:url value="/resources/admin/vendor/jquery/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/vendor/datatables/jquery.dataTables.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.js"/>"></script>
	<script src="<c:url value="/resources/admin/js/sb-admin.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/sb-admin-datatables.min.js"/>"></script>
>>>>>>> 834c8bfac8cebb5ee51407a6808fc89a118c879f

</body>
</html>