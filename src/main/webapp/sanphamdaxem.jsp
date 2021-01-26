<%@ page import="beans.Product" %>
<%@ page import="beans.SPDaXem" %>
<%@ page import="java.util.Collection" %>




<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>DYB Áo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link rel="stylesheet" href="css/sapphamdaxem.css">
    <link rel="stylesheet" href="css/menuShop.css">
    <!-- //custom-theme -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
    <link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Owl-carousel-CSS -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
<!-- banner -->
<div class="banner_top innerpage" id="home" style="background: url(${images.img}) no-repeat 0px -221px">
    <div class="wrapper_top_w3layouts">
        <div class="header_agileits">
            <div class="logo inner_page_log">
                <h1><a class="navbar-brand" href="${pageContext.request.contextPath}${listMenu[0].link}?action=returns&id=${listMenu[0].id}"><span><c:out value="${infor.splitStr(infor.logo)[0]}"></c:out></span> <i><c:out value="${infor.splitStr(infor.logo)[1]}"></c:out></i></a></h1>
            </div>
            <!-- menu moi1 -->
            <div class="header_menu">
                <ul class="nav justify-content-center">
                    <c:forEach items="${listMenu}" var="m" >

                        <li class="nav-item">

                            <a class="nav-link" href="${pageContext.request.contextPath}${m.link}?action=returns&id=${m.id}&page=1">${m.name}</a>

                        </li>
                    </c:forEach>
                </ul>
            </div>


            <!-- <div class="mobile-nav-button">
                <button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
            </div> -->
            <!-- cart details -->

            <div class="mobile-nav-button">
                <div class="shoecart shoecart2 cart cart box_1">
                    <a href="${pageContext.request.contextPath}/checkout?action=cart"><button class="top_shoe_cart" type="submit" name="submit" value=""><i
                            class="fa fa-cart-arrow-down" aria-hidden="true"></i></button></a>
                </div>
            </div>
            <!-- cart details -->
            <div class="top_nav_right">
                <button class="trigger-overlay" type="submit"><i class="fa fa-user"></i></button>
                <div class="dropdown_user">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/profile">Thông Tin Cá Nhân</a></li>
                        <li><a href="donmua.html">Đơn Mua</a></li>
                        <li><a href="sanphamdaxem.html">Sản Phẩm Đã Xem</a></li>
                        <li><a href="hdmuahang.html">Hướng Dẫn Mua Hàng</a></li>
                        <li><a href="${pageContext.request.contextPath}/logout">Đăng Xuất</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- //cart details -->
    <!-- search -->
    <div class="search_w3ls_agileinfo">
        <div class="cd-main-header">
            <ul class="cd-header-buttons">
                <li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
            </ul>
        </div>
        <div id="cd-search" class="cd-search">
            <form action="#" method="post">
                <input name="Search" type="search" placeholder="Tìm kiếm...">
            </form>
        </div>
    </div>
    <!-- //search -->
    <!-- <div class="clearfix"></div> -->
    <!-- /banner_inner -->
    <div class="services-breadcrumb_w3ls_agileinfo">
        <div class="inner_breadcrumb_agileits_w3">

            <ul class="short">
                <li><a href="index.html">Trang Chủ</a><i>|</i></li>
                <li>Sản Phẩm Đã Xem</li>
            </ul>
        </div>
    </div>
    <!-- //banner_inner -->
</div>

<!-- //banner -->
<!-- top Products -->
<div class="ads-grid">
    <div class="shop_inner_inf">
        <!-- tittle heading -->

        <!-- //tittle heading -->
        <!-- product left -->

        <!-- //product left -->
        <!-- product right -->
        <div class="left-ads-display col-md">
            <div class="h4">
                <ul>
                    <li> Sản phẩm đã xem gần nhất</li>
                </ul>
            </div>

            <div class="wrapper_top_shop">

                <!-- <div class="col-md-6 shop_right">
                    <img src="images/banner2.jpg" alt="">

                </div> -->
                <div class="clearfix"></div>
                <!-- product-sec1 -->

                <%
                    SPDaXem c = SPDaXem.getSPDaXem(session);
                    Collection<Product> data = c.getData();
                    request.setAttribute("data",data);
                %>

                <div class="product-sec1">
                    <!--/mens-->
                    <c:forEach items="${data}" var="m" varStatus="loop">
                    <div class="col-md-4 product-men">
                        <div class="product-shoe-info shoe">
                            <div class="men-pro-item">
                                <div class="men-thumb-item">
                                    <img src="${m.splitStrImg()[0]}" alt="">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="${pageContext.request.contextPath}/single?action=detail&id=${m.id}" class="link-product-add-cart">Xem Chi Tiết</a>
                                        </div>
                                    </div>
                                    <!-- <span class="product-new-top">New</span> -->
                                </div>
                                <div class="item-info-product">
                                    <h4>
                                        <a href="single.html">${m.name}</a>
                                    </h4>
                                    <div class="info-product-price">
                                        <div class="grid_meta">
                                            <div class="product_price">
                                                <div class="grid-price ">
                                                    <c:if test="${m.giamgia == 1 }">
                                                        <span class="money ">${m.currentFormatGia()}₫</span>
                                                    </c:if>
                                                    <c:if test="${m.giamgia != 1 }">
                                                        <span class="money "></span><br>
                                                    </c:if>
                                                </div>
                                            </div>

                                            <div class="grid-price ">
                                                <c:if test="${m.giamgia != 1}">
                                                    <span class="moneySave ">${m.currentFormatGia()}₫</span>
                                                </c:if>
                                                <c:if test="${m.giamgia == 1}">
                                                    <span class="moneySave ">${m.currentFormatGiaKM()}₫</span>
                                                </c:if>
                                            </div>

                                            <ul class="stars">

                                                <c:forEach begin="1" end="${m.danhGia}">
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                </c:forEach>

                                                <c:choose>
                                                    <c:when test="${m.getOldEva() == 2}">
                                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    </c:when>
                                                    <c:when test="${m.getOldEva() == 1}">
                                                        <li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
                                                    </c:when>
                                                </c:choose>
                                            </ul>

                                        </div>
                                        <div class="shoe single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="shoe_item" value="Strength">
                                                <input type="hidden" name="amount" value="675000">
                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                                            </form>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
<%--                    <div class="col-md-4 product-men">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/s2.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html"> Never Give Up</a> </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">405.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value=" Never Give Up">--%>
<%--                                                <input type="hidden" name="amount" value="399000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/s3.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">Poder </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">375.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="Poder">--%>
<%--                                                <input type="hidden" name="amount" value="355000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- //mens -->--%>
<%--                    <!-- /womens -->--%>
<%--                    <div class="col-md-4 product-men ">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/s4.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html"> Mystic </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">575.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="Mystic">--%>
<%--                                                <input type="hidden" name="amount" value="475000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men women_two">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/s5.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html"> DYB Hoodie  </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">325.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Hoodie">--%>
<%--                                                <input type="hidden" name="amount" value="280000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men women_two">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/s6.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">DYB Dynamic</a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">425.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Dynamic">--%>
<%--                                                <input type="hidden" name="amount" value="375000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- //womens -->--%>
<%--                    <!-- /mens -->--%>
<%--                    <div class="col-md-4 product-men women_two ">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/s7.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">DYB Elegant</a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">875.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Elegant">--%>
<%--                                                <input type="hidden" name="amount" value="790000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men women_two">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/s8.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html"> DYB Sukun</a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">505.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Sukun">--%>
<%--                                                <input type="hidden" name="amount" value="450000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/s9.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html"> DYB Marvel</a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">635.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Marvel">--%>
<%--                                                <input type="hidden" name="amount" value="600000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/q1.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html"> DYB Cool </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">1.250.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Cool">--%>
<%--                                                <input type="hidden" name="amount" value="1050000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/q2.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html"> DYB Chikku  </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">899.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Chikku">--%>
<%--                                                <input type="hidden" name="amount" value="799000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/q3.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html"> DYB Men </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">975.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Men">--%>
<%--                                                <input type="hidden" name="amount" value="855000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men women_two">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/q4.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html"> DYB Shuberry  </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">575.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Shuberry">--%>
<%--                                                <input type="hidden" name="amount" value="475000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men women_two">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/q5.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">DYB Bellies </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">825.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Bellies">--%>
<%--                                                <input type="hidden" name="amount" value="780000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men women_two">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/a4.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">DYB TaTa </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">180.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB TaTa">--%>
<%--                                                <input type="hidden" name="amount" value="155000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i--%>
<%--                                                        class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men women_two">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/a5.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">DYB AliKh </a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">70.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB AliKh">--%>
<%--                                                <input type="hidden" name="amount" value="55000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i--%>
<%--                                                        class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men ">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/a6.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">DYB Biggie</a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">450.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB Biggie">--%>
<%--                                                <input type="hidden" name="amount" value="399000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i--%>
<%--                                                        class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/a7.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">DYB HaDyB</a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">1.075.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB HaDyB">--%>
<%--                                                <input type="hidden" name="amount" value="990000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i--%>
<%--                                                        class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/a8.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">DYB BLD</a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">4.575.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB BLD">--%>
<%--                                                <input type="hidden" name="amount" value="4250000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i--%>
<%--                                                        class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-4 product-men">--%>
<%--                        <div class="product-shoe-info shoe">--%>
<%--                            <div class="men-pro-item">--%>
<%--                                <div class="men-thumb-item">--%>
<%--                                    <img src="images/a9.jpg" alt="">--%>
<%--                                    <div class="men-cart-pro">--%>
<%--                                        <div class="inner-men-cart-pro">--%>
<%--                                            <a href="single.html" class="link-product-add-cart">Xem Chi Tiết</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <!-- <span class="product-new-top">New</span> -->--%>
<%--                                </div>--%>
<%--                                <div class="item-info-product">--%>
<%--                                    <h4>--%>
<%--                                        <a href="single.html">DYB GD</a>--%>
<%--                                    </h4>--%>
<%--                                    <div class="info-product-price">--%>
<%--                                        <div class="grid_meta">--%>
<%--                                            <div class="product_price">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="money "></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <ul class="stars">--%>
<%--                                                <div class="grid-price ">--%>
<%--                                                    <span class="moneySave ">499.000₫</span>--%>
<%--                                                </div>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="shoe single-item hvr-outline-out">--%>
<%--                                            <form action="#" method="post">--%>
<%--                                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                                <input type="hidden" name="add" value="1">--%>
<%--                                                <input type="hidden" name="shoe_item" value="DYB GD">--%>
<%--                                                <input type="hidden" name="amount" value="469000">--%>
<%--                                                <button type="submit" class="shoe-cart pshoe-cart"><i--%>
<%--                                                        class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>

<%--                                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>--%>
<%--                                            </form>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="clearfix"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <nav aria-label="Page navigation example">--%>
<%--                        <ul class="pagination">--%>
<%--                            <li class="page-item">--%>
<%--                                <a class="page-link" href="#" aria-label="Previous">--%>
<%--                                    <span aria-hidden="true">&laquo;</span>--%>
<%--                                    <span class="sr-only">Previous</span>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#">1</a></li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#">2</a></li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#">...</a></li>--%>
<%--                            <li class="page-item">--%>
<%--                                <a class="page-link" href="#" aria-label="Next">--%>
<%--                                    <span aria-hidden="true">&raquo;</span>--%>
<%--                                    <span class="sr-only">Next</span>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </nav>--%>
                    <!-- //mens -->
                    <div class="clearfix"></div>

                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //top products -->
<div class="mid_slider_w3lsagile">
    <div class="col-md-3 mid_slider_text">
        <h5>Mặt Hàng Khác</h5>
    </div>
    <div class="col-md-9 mid_slider_info">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                <li data-target="#myCarousel" data-slide-to="3" class=""></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                    </div>
                </div>
                <div class="item active">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a></div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="fa fa-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="fa fa-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            <!-- The Modal -->

        </div>
    </div>

    <div class="clearfix"> </div>
</div>
<!-- /newsletter-->
<div class="newsletter_w3layouts_agile">

</div>
<!-- //newsletter-->
<!-- footer -->
<div class="footer_agileinfo_w3">
    <div class="footer_inner_info_w3ls_agileits">
        <div class="footer_content_in">
            <div class="col-md-3 footer-left">
                <h2><a href="index.html"><span>DYB</span> Store </a></h2>
                <ul class="social-nav model-3d-0 footer-social social two">
                    <li>
                        <a href="#" class="facebook">
                            <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="twitter">
                            <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="instagram">
                            <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="pinterest">
                            <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                            <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-9 footer-right">
                <div class="sign-grds">
                    <div class="col-md-4 sign-gd">
                        <h4>Thông tin của chúng tôi</h4>
                        <ul>
                            <li><a href="index.html">Trang Chủ</a></li>
                            <li><a href="trousersShop.html">Quần</a></li>
                            <li><a href="shop.html">Áo</a></li>
                            <li><a href="accessories.html">Phụ Kiện</a></li>
                            <li><a href="giamgia.html">Giảm Giá</a></li>
                            <li><a href="contact.html">Liên Hệ</a></li>
                        </ul>
                    </div>

                    <div class="col-md-5 sign-gd-two">
                        <h4>Thông tin cửa hàng</h4>
                        <div class="address">
                            <div class="address-grid">
                                <div class="address-left">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                </div>
                                <div class="address-right">
                                    <h6>Số Điện Thoại</h6>
                                    <p>+1 234 567 8901</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="address-grid">
                                <div class="address-left">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </div>
                                <div class="address-right">
                                    <h6>Địa Chỉ Email</h6>
                                    <p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="address-grid">
                                <div class="address-left">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </div>
                                <div class="address-right">
                                    <h6>Địa Chỉ</h6>
                                    <p> Đại học Nông Lâm, phường Linh Trung, quận Thủ Đức, TP. HCM, Việt Nam.

                                    </p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 sign-gd flickr-post">
                        <h4>Chứng nhận</h4>
                        <img src="images/dathongbao.png" alt="" style="width: 230px;" >
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
            <p class="copy-right-w3ls-agileits">&copy 2020 DYB Store. All rights reserved | Design by <a href="index.html">DYBTeam</a></p>
        </div>
    </div>
</div>
</div>
<!-- //footer -->
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart-js -->
<script src="js/minicart.js"></script>
<script>
    shoe.render();

    shoe.cart.on('shoe_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {}
        }
    });
</script>
<!-- //cart-js -->
<!-- /nav -->
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="js/classie.js"></script>

<!-- //nav -->
<!--search-bar-->
<script src="js/search.js"></script>
<!--//search-bar-->
<!-- price range (top products) -->
<script src="js/jquery-ui.js"></script>
<script>
    //<![CDATA[
    $(window).load(function () {
        $("#slider-range").slider({
            range: true,
            min: 0,
            max: 20000000,
            values: [0, 10000000],
            slide: function (event, ui) {
                $("#amount").val(ui.values[0]+"₫" + " - " + ui.values[1]+"₫");
            }
        });
        $("#amount").val( $("#slider-range").slider("values", 0)+"₫" + " - " + $("#slider-range").slider("values", 1)+"₫	");

    }); //]]>
</script>
<!-- //price range (top products) -->

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smoth-scrolling -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


</body>

</html>