
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