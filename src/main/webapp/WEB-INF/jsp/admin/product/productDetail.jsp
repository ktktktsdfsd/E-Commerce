<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Elektro Admin Panel-Ürün Detay Sayfası</title>

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
				<div class="row">
					<!-- Resimler Burada olacak  -->
					<div class="col-md-5 col-md-push-2">
						<div id="product-main-img">
							<div class="product-preview">
									<img src= <c:url value="/resources/electro/img/product01.png"/>">
							</div>

							<div class="product-preview">
								<img src= <c:url value="/resources/electro/img/product03.png"/>">
							</div>

							<div class="product-preview">
								<img src= <c:url value="/resources/electro/img/product06.png"/>">
							</div>

							<div class="product-preview">
								<img src= <c:url value="/resources/electro/img/product08.png"/>">
							</div>
						</div>
					</div>
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<div id="product-imgs">
							<div class="product-preview">"
								<img src= <c:url value="/resources/electro/img/product01.png"/>">
							</div>

							<div class="product-preview">
									<img src= <c:url value="/resources/electro/img/product03.png"/>">
							</div>

							<div class="product-preview">
									<img src= <c:url value="/resources/electro/img/product06.png"/>">
							</div>

							<div class="product-preview">
									<img src= <c:url value="/resources/electro/img/product08.png"/>">
							</div>
						</div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">product name goes here</h2>
							 
							<div>
								<h3 class="product-price"> 980.00 ₺ </h3>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<div class="add-to-cart">
							 
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Sepete Ekle</button>
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

</body>
</html>