<<<<<<< HEAD
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Mã Giảm Giá</title>
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
    <!-- bonnus -->
    <link rel="stylesheet" href="css/magiamgia.css">
    <!-- //custom-theme -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
    <link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Owl-carousel-CSS -->
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />


    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <link rel="stylesheet" href="css/home.css">
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

            <!-- sủa khúc này -->
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
                        <li><a href="${pageContext.request.contextPath}/donmua">Đơn Mua</a></li>
                        <li><a href="${pageContext.request.contextPath}/sanphamdaxem">Sản Phẩm Đã Xem</a></li>
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
    <div cl ass="clearfix"></div>
    <!-- /banner_inner -->
    <div class="services-breadcrumb_w3ls_agileinfo">
        <div class="inner_breadcrumb_agileits_w3">

            <ul class="short">
                <li><a href="index.html">Trang chủ</a><i>|</i></li>
                <li>Mã Giảm Giá</li>
            </ul>
        </div>
    </div>
    <!-- //banner_inner -->
</div>

<div class="center">
    <div class="center_main">
        <div class="main_left">
            <div class="content">
                <h3>Trung tâm cá nhân</h3>
                <div class="account c1">
                    <a href="profile.html">
                        <h4>Tài Khoản Của Tôi</h4>
                    </a>
                    <ul>
                        <li><a href="profile.html"><span >Thông Tin Của Tôi</span></a></li>
                        <li><a href="adress.html"><span>Địa Chỉ</span></a></li>
                        <li><a href="magiamgia.html"><span class="active">Mã Giảm Giá</span></a></li>
                        <li><a href="changepass.html"><span >Đổi Mật Khẩu</span></a> </li>
                    </ul>

                </div>
                <div class="donmua c1">
                    <a href="donmua.html">
                        <h4>Đơn Mua</h4>
                    </a>
                </div>
                <div class="dangxuat c1">
                    <a href="login.html">
                        <h4>Đăng Xuất</h4>
                    </a>
                </div>
            </div>
        </div>
        <div class="main_right">
            <div class="content_main">
                <div class="list_product">
                    <div class="content_pro_a">
                        <h2>Mã Giảm Giá</h2>
                    </div>
                    <div class="content_pro_b">

                    <c:forEach items="${listgiamgia}" var="l" >
                        <div class="p-giam-gia">
                            <h3>${l.maGiamGia}</h3>
                            <p>Ngày bắt đầu: ${l.dateStart}</p>
                            <p>Hiệu lực đến: ${l.dateEnd}</p>
                        </div>
                    </c:forEach>

<%--                        <div class="p-giam-gia">--%>
<%--                            <h3>B323155</h3>--%>
<%--                            <h4>Giảm 20%</h4>--%>
<%--                            <p>Hiệu lực đến: 31/11/2020</p>--%>
<%--                            <a href="checkout.html">Dùng Ngay</a>--%>
<%--                        </div>--%>

<%--                        <div class="p-giam-gia">--%>
<%--                            <h3>B323155</h3>--%>
<%--                            <h4>Giảm 30%</h4>--%>
<%--                            <p>Hiệu lực đến: 31/11/2020</p>--%>
<%--                            <a href="checkout.html">Dùng Ngay</a>--%>
<%--                        </div>--%>



                    </div>
                </div>
            </div>



        </div>
        <!-- finish center main -->
    </div>

    <div class="clearfix"></div>

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
                            <li><a href="accessories.htmlư">Phụ Kiện</a></li>
                            <li><a href="contact.html">Liên Lạc</a></li>
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
                        <img src="images/dathongbao.png" alt="" style="width: 230px;">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
            <p class="copy-right-w3ls-agileits">&copy 2020 DYB Store. All rights reserved | Design by <a
                    href="index.html">DYBTeam</a></p>
        </div>
    </div>
</div>
</div>
<!-- //footer -->
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;">
		</span></a>
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

            for (i = 0, len = items.length; i < len; i++) { }
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
<script>

    $(document).ready(function () {
        $('.content_pro:first').show()
        $('.tab_navigation li:first').addClass('active');
        $('.tab_navigation li:first').css("color", "rgb(251, 56, 59)");
        $('.tab_navigation li').click(function (event) {
            index = $(this).index();
            $('.tab_navigation li').removeClass('active');
            $('.tab_navigation li').css("color", "rgb(34, 34, 34)");
            $(this).addClass('active');
            $(this).css("color", "rgb(251, 56, 59)");
            $('.content_pro').hide();
            $('.content_pro').eq(index).show();

        })
    })
</script>

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
=======

<%@ page import="beans.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<head>
    <title>Tất Cả Mã Giảm Giá</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script
        type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="cssadmin/bootstrap.min.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link rel="stylesheet" href="cssadmin/search.css">
    <link rel="stylesheet" href="cssadmin/dstaikhoan.css">
    <link href="cssadmin/style.css" rel='stylesheet' type='text/css' />
    <link href="cssadmin/style-responsive.css" rel="stylesheet" />
    <!-- font CSS -->

    <!-- font-awesome icons -->
    <link href="cssadmin/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <script src="jsadmin/jquery2.0.3.min.js"></script>
</head>

<body>
<%--<%--%>
<%--    User user = (User)session.getAttribute("auth");--%>
<%--    if(user == null || !user.accept("admin"))--%>
<%--        response.sendRedirect("/ProjectFinalTest_war_exploded/listnews?action=returns&id=1&page=1");--%>
<%--%>--%>
    <section id="container">
        <!--header start-->
        <header class="header fixed-top clearfix">
            <!--logo start-->
            <div class="brand">

                <a href="index.html" class="logo">
                    DYB Admin
                </a>
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars"></div>
                </div>
            </div>
            <!--logo end-->

            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                  
                    <!-- notification dropdown start-->
                    <li id="header_notification_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="fa fa-bell-o"></i>
                            <span class="badge bg-warning">3</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <li>
                                <p>Thông Báo</p>
                            </li>
                            <li>
                                <div class="alert alert-info clearfix">
                                    <span class="alert-icon" title="Xóa Thông Báo"><i class=" fa fa-trash"></i></span>
                                    <div class="noti-info">
										<a href="alldonhang.html" > 15 đơn hàng đang chờ xác nhận.</a>
										
									</div>
								
                                </div>
                            </li>
                            <li>
                                <div class="alert alert-danger clearfix">
                                    <span class="alert-icon" title="Xóa Thông Báo"><i class=" fa fa-trash"></i></span>
                                    <div class="noti-info">
                                        <a href="index.html"> Đang có hơn 50 người đang online.</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="alert alert-success clearfix">
                                    <span class="alert-icon" title="Xóa Thông Báo"><i class=" fa fa-trash"></i></span>
                                    <div class="noti-info">
                                        <a href="index.html"> Doanh thu đạt 8.000.000.</a>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </li>
                    <!-- notification dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            <div class="top-nav clearfix">
                <!--search & user info start-->
                <ul class="nav pull-right top-menu">
                    <li class="lis_search">
                        <div class="dropdown_1">
                            <div class="default_op">Chọn</div>
                            <ul>
                                <li>Chọn</li>
                                <li>Loại Giảm Giá</li>
                                <li>Giảm</li>
                                <li>Ngày Áp Dụng</li>
                                <li>Ngày Kết Thúc</li>
                            </ul>
                        </div>
                        <div class="search_f">
                            <input type="text" name="" id="" class="input_1">
                            <i class="fa fa-search"></i>
                        </div>
                    </li>

                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" src="imagesadmin/admin.png">
                            <span class="username">DYB Admin</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <li><a href="editaccount.html"><i class=" fa fa-suitcase"></i>Cá Nhân</a></li>
                            <li><a href="login.html"><i class="fa fa-key"></i> Đăng Xuất</a></li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->

                </ul>
                <!--search & user info end-->
            </div>
        </header>
        <!--header end-->
        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse">
                <!-- sidebar menu start-->
                <div class="leftside-navigation">
                    <ul class="sidebar-menu" id="nav-accordion">
                        <li>
                            <a href="index.html">
                                <i class="fa fa-dashboard"></i>
                                <span>Thống Kê</span>
                            </a>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-home"></i>
                                <span>Trang Chủ</span>
                            </a>
                            <ul class="sub">
                                <li><a href="dstin.html">Tất Cả Tin</a></li>
                                <li><a href="themtin.html">Thêm Tin</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="alldonhang.html">
                                <i class="fa fa-building"></i>
                                <span>Tất Cả Đơn Hàng</span>
                            </a>

                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class=" fa fa-product-hunt"></i>
                                <span>Sản Phẩm</span>
                            </a>
                            <ul class="sub">
                                <li><a href="allsanpham.html">Tất Cả Sản Phẩm</a></li>
                                <li><a href="themsp.html">Thêm Sản Phẩm</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a  href="javascript:;">
                                <i class=" fa fa-user"></i>
                                <span>Tài Khoản</span>
                            </a>
                            <ul class="sub">
                                <li><a  href="dstaikhoan.html">Tất Cả Tài Khoản</a></li>
                                <li><a href="canhanuser.html">Thêm Tài Khoản</a></li>
                            </ul>
                        </li>
                       


                        <li>
                            <a href="spchinh.html">
                                <i class="fa fa-shopping-bag"></i>
                                <span>Menu</span>
                            </a>
                        </li>
                        <li>
                            <a href="spphu.html">
                                <i class="fa fa-shopping-basket"></i>
                                <span>Danh Mục</span>
                            </a>
                        </li>
                        <li>
                            <a href="mathangkhac.html">
                                <i class="fa fa-suitcase"></i>
                                <span>Mặt Hàng Khác</span>
                            </a>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-desktop"></i>
                                <span>Giao Diện </span>
                            </a>
                            <ul class="sub">
                                <li><a href="hinhanh.html">Hình Ảnh</a></li>
                                <li><a href="thongtin.html">Thông Tin</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a class="active" href="javascript:;">
                                <i class="fa fa-percent"></i>
                                <span>Mã Giảm Giá </span>
                            </a>
                            <ul class="sub">
                                <li><a class="active" href="magiamgia.html">Tất Cả Mã Giảm Giá</a></li>
                                <li><a href="themmagiamgia.html">Thêm Mã Giảm Giá</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- sidebar menu end-->
            </div>
        </aside>
        <!--sidebar end-->
        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">
<%--                <div class="wthree-font-awesome">--%>
                    <div class="grid_3 grid_4 w3_agileits_icons_page">
                        <div class="icons">
                            <h2 class="w3ls_head">Tất Cả Mã Giảm Giá</h2>
                            <div class="content_Promain">
                                <div class="content_Prosub">
                                    <div class="proright">
                                        <div class="proright_table">
                                            <div class="table_content" style="max-height: 650px;">
                                                <table class="table table-bordered table1">
                                                    <thead>
                                                        <tr class="active">
                                                            <th class="p p1">
                                                                STT
                                                            </th>
                                                            <th class="p p2">
                                                                Mã Giảm Giá
                                                            </th>
                                                            <th>
                                                                Nội Dung
                                                            </th>
                                                            <th>
                                                                Tiền Giảm
                                                            </th>
                                                            <th class="p p3">
                                                                Thời Gian Áp Dụng
                                                            </th>
                                                            <th class="p p4">
                                                                Thời Gian Kết Thúc
                                                            </th>
                                                            <th class="p p5">
                                                                Xem/Sửa
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${listDis}" var="d" varStatus="loop">
                                                        <tr>
                                                            <td>${loop.index + 1}</td>
                                                            <td>${d.id}</td>
                                                            <td>${d.maGiamGia}</td>
                                                            <td>${d.currentFormatGia()}đ</td>
                                                            <td>${d.dateStart}</td>
                                                            <td>${d.dateEnd}</td>
                                                            <td><a  ><i data-toggle="modal" data-target="#exampleModalCenterEditDiscount" class="fa fa-edit i-edit-discount"></i></a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <button data-target="#exampleModalCenterAddDiscount" data-toggle="modal" class="btn-add-discount">Thêm Mã Giảm Giá</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<%--                </div>--%>

            </section>

        </section>

        <!--main content end-->
    </section>
<%-- modal add detail--%>
<div class="modal fade" id="exampleModalCenterEditDiscount" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Thêm Chi Tiết Sản Phẩm</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="content-modal">
                    <div class="">
                        <label >Mã Sản Phẩm</label><br>
                        <input  class="id-pro-show-add-detail" type="number" value="${product.id}">
                    </div>
                    <div class="">
                        <label >Màu Sắc</label><br>
                        <input class="color-add-detail-pro-show" type="text" value="" >
                    </div>
                    <div class="">
                        <label >Kích Thước</label><br>
                        <input class="size-add-detail-pro-show" type="text" value="" >

                    </div>
                    <div class="">
                        <label >Số Lượng</label><br>
                        <input class="amount-add-detail-pro-show" type="number" value="0" >
                    </div>
                    <div class="">
                        <label >Giá</label><br>
                        <input class="price-add-detail-pro-show" type="number" value="0" >
                    </div>
                    <div class="">
                        <label >Giá Khuyến Mãi</label><br>
                        <input class="price-add-detail-dis-pro-show" type="number" value="0" >
                    </div>
                    <div>
                        <label >Giảm Giá</label><br>
                        <select class="selec-add-discount-detail-show">
                            <option value="1">Có</option>
                            <option value="0">Không</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="but-dialog btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button"  data-dismiss="modal" class="btn btn-primary but-dialog but-save-discount-show">Lưu</button>
            </div>
        </div>
    </div>
</div>
<%-- end modal edit discount--%>

<%-- modal add discount--%>
<div class="modal fade" id="exampleModalCenterAddDiscount" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Thêm Chi Tiết Sản Phẩm</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="content-modal">
                    <div class="">
                        <label >Mã Sản Phẩm</label><br>
                        <input  class="id-pro-show-add-detail" type="number" value="${product.id}">
                    </div>
                    <div class="">
                        <label >Màu Sắc</label><br>
                        <input class="color-add-detail-pro-show" type="text" value="" >
                    </div>
                    <div class="">
                        <label >Kích Thước</label><br>
                        <input class="size-add-detail-pro-show" type="text" value="" >

                    </div>
                    <div class="">
                        <label >Số Lượng</label><br>
                        <input class="amount-add-detail-pro-show" type="number" value="0" >
                    </div>
                    <div class="">
                        <label >Giá</label><br>
                        <input class="price-add-detail-pro-show" type="number" value="0" >
                    </div>
                    <div class="">
                        <label >Giá Khuyến Mãi</label><br>
                        <input class="price-add-detail-dis-pro-show" type="number" value="0" >
                    </div>
                    <div>
                        <label >Giảm Giá</label><br>
                        <select class="selec-add-discount-detail-show">
                            <option value="1">Có</option>
                            <option value="0">Không</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="but-dialog btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button"  data-dismiss="modal" class="btn btn-primary but-dialog but-add-discount-show">Lưu</button>
            </div>
        </div>
    </div>
</div>
<%-- end modal editdiscount--%>
    <script src="jsadmin/bootstrap.js"></script>
    <script src="jsadmin/jquery.dcjqaccordion.2.7.js"></script>
    <script src="jsadmin/scripts.js"></script>
    <script src="jsadmin/jquery.slimscroll.js"></script>
    <script src="jsadmin/jquery.nicescroll.js"></script>
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
    <script src="jsadmin/jquery.scrollTo.js"></script>
    <script src="jsadmin/search.js"></script>
<%--	sweetalert--%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>

</html>
>>>>>>> 7121e643fbe33bf459ca90115acc7b52305fbff2
