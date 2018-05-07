<%@ tag import="com.commerce.service.CategoryManager" %>
<%@ tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="header" fragment="true" %>
<%@ attribute name="footer" fragment="true" %>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%request.setAttribute("categoryList", new CategoryManager().getList());%>

<html>
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/electro/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/electro/css/font-awesome.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/electro/css/style.css"/>"/>
</head>
<body>

<div id="pageheader">
    <jsp:invoke fragment="header"/>

    <!-- HEADER -->
    <header>
        <!-- TOP HEADER -->
        <div id="top-header">
            <div class="container">
                <ul class="header-links pull-left">
                    <li><a href="#"><i class="fa fa-phone"></i> +0362-362-55-55</a></li>
                    <li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
                    <li><a href="#"><i class="fa fa-map-marker"></i> Samsun / Turkey</a></li>
                </ul>
                <ul class="header-links pull-right">

                    <!-- FIXME Dinamik olarak güncellenecek -->

                    <li><a href="#"><i class="fa fa-user-o"></i> Giriş Yap</a></li>
                    <li><a href="#"><i class="fa fa-user-plus"></i> Üye Ol</a></li>
                </ul>
            </div>
        </div>
        <!-- /TOP HEADER -->

        <!-- MAIN HEADER -->
        <div id="header">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- LOGO -->
                    <div class="col-md-3">
                        <div class="header-logo">
                            <a href="#" class="logo">
                                <img src="<c:url value="/resources/electro/img/logo.png"/> " alt="">
                            </a>
                        </div>
                    </div>
                    <!-- /LOGO -->

                    <!-- SEARCH BAR -->
                    <div class="col-md-6">
                        <div class="header-search">
                            <form>
                                <select class="input-select">

                                    <!-- TODO Veritabanından çekildi -->
                                    <%-- FIXME Tıklama olayını düzenle --%>
                                    <option value="0">Kategoriler</option>
                                    <c:forEach var="item" items="${categoryList}">
                                        <option value="1">${item.name}</option>
                                    </c:forEach>

                                </select>
                                <input class="input" placeholder="Search here">
                                <button class="search-btn"><i class="fa fa-search"></i> Search</button>
                            </form>
                        </div>
                    </div>
                    <!-- /SEARCH BAR -->

                    <!-- ACCOUNT -->
                    <div class="col-md-3 clearfix">
                        <div class="header-ctn">
                            <!-- Cart -->
                            <div class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span>Sepetiniz</span>

                                    <!-- FIXME Ürün adeti dinamik olarak güncellenecek -->
                                    <div class="qty">3</div>

                                </a>
                                <div class="cart-dropdown">
                                    <div class="cart-list">

                                        <!-- FIXME Her ürün için for döngüsü -->
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="<c:url value="/resources/electro/img/product01.png"/>">
                                            </div>
                                            <div class="product-body">
                                                <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                <h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
                                            </div>
                                            <button class="delete"><i class="fa fa-close"></i></button>
                                        </div>


                                    </div>

                                    <!-- FIXME Toplam fiyat vs. -->

                                    <div class="cart-summary">
                                        <small>3 Item(s) selected</small>
                                        <h5>SUBTOTAL: $2940.00</h5>
                                    </div>
                                    <div class="cart-btns">
                                        <a href="#">View Cart</a>
                                        <a href="#">Checkout <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- /Cart -->

                            <!-- Menu Toogle -->
                            <div class="menu-toggle">
                                <a href="#">
                                    <i class="fa fa-bars"></i>
                                    <span>Menu</span>
                                </a>
                            </div>
                            <!-- /Menu Toogle -->
                        </div>
                    </div>
                    <!-- /ACCOUNT -->
                </div>
                <!-- row -->
            </div>
            <!-- container -->
        </div>
        <!-- /MAIN HEADER -->
    </header>
    <!-- /HEADER -->

    <!-- NAVIGATION -->
    <nav id="navigation">
        <!-- container -->
        <div class="container">
            <!-- responsive-nav -->
            <div id="responsive-nav">
                <!-- NAV -->
                <ul class="main-nav nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">Categories</a></li>
                    <li><a href="#">Laptops</a></li>
                    <li><a href="#">Smartphones</a></li>
                    <li><a href="#">Cameras</a></li>
                    <li><a href="#">Accessories</a></li>
                </ul>
                <!-- /NAV -->
            </div>
            <!-- /responsive-nav -->
        </div>
        <!-- /container -->
    </nav>
    <!-- /NAVIGATION -->

</div>

<div id="body">
    <jsp:doBody/>
</div>

<div id="pagefooter">
    <jsp:invoke fragment="footer"/>

    <!-- FOOTER -->
    <footer id="footer">
        <!-- top footer -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">About Us</h3>
                            <p>Türkiyenin en güvenilir E-Ticaret Sitesi</p>
                            <ul class="footer-links">
                                <li><a href="#"><i class="fa fa-map-marker"></i>Samsun / Turkey</a></li>
                                <li><a href="#"><i class="fa fa-phone"></i>+0362-362-55-55</a></li>
                                <li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Categories</h3>
                            <ul class="footer-links">


                                <!-- FIXME Linkleri düzenle -->
                                <c:forEach var="item" items="${categoryList}">
                                    <li><a href="#">${item.name}</a></li>
                                </c:forEach>


                            </ul>
                        </div>
                    </div>

                    <div class="clearfix visible-xs"></div>

                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Information</h3>
                            <ul class="footer-links">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Orders and Returns</a></li>
                                <li><a href="#">Terms & Conditions</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Service</h3>
                            <ul class="footer-links">
                                <li><a href="#">Hesabım</a></li>
                                <li><a href="#">View Cart</a></li>
                                <li><a href="#">Wishlist</a></li>
                                <li><a href="#">Track My Order</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /top footer -->

        <!-- bottom footer -->
        <div id="bottom-footer" class="section">
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12 text-center">
                        <ul class="footer-payments">
                            <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                            <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                        </ul>
                        <span class="copyright">Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        |  Samsun / Turkey</a>
                    </span>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /bottom footer -->
    </footer>
    <!-- /FOOTER -->

</div>

<script src="<c:url value="/resources/electro/js/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/electro/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/electro/js/slick.min.js"/>"></script>
<script src="<c:url value="/resources/electro/js/nouislider.min.js"/>"></script>
<script src="<c:url value="/resources/electro/js/jquery.zoom.min.js"/>"></script>
<script src="<c:url value="/resources/electro/js/main.js"/>"></script>

</body>
</html>