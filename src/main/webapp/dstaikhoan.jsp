<%@ page import="beans.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<head>
    <title>Quản Lý Tài Khoản</title>
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
                                <li>Tên Tài Khoản</li>
                                <li>Địa Chỉ Gmail</li>
                                <li>Ngày Sửa</li>
                                <li>Ngày Thêm</li>
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
                            <li><a href="${pageContext.request.contextPath}/listnews?action=returns&id=1&page=1"><i class="fa fa-arrow-circle-right"></i>Cửa Hàng</a></li>
                            <li><a href="editaccount.html"><i class=" fa fa-suitcase"></i>Cá Nhân</a></li>
                            <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-key"></i> Đăng Xuất</a></li>
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
                            <a href="${pageContext.request.contextPath}/admin">
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
                            <a href="${pageContext.request.contextPath}/display-order">
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
                                <li><a href="${pageContext.request.contextPath}/list-product-manager">Tất Cả Sản Phẩm</a></li>
                                <li><a href="${pageContext.request.contextPath}/display-product-add">Thêm Sản Phẩm</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a class="active" href="javascript:;">
                                <i class=" fa fa-user"></i>
                                <span>Tài Khoản</span>
                            </a>
                            <ul class="sub">
                                <li><a  class="active" href="${pageContext.request.contextPath}/load-all-account">Tất Cả Tài Khoản</a></li>
                                <li><a  href="${pageContext.request.contextPath}/display-account-add">Thêm Tài Khoản</a></li>
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
                            <a  href="javascript:;">
                                <i class="fa fa-percent"></i>
                                <span>Mã Giảm Giá </span>
                            </a>
                            <ul class="sub">
                                <li><a  href="magiamgia.html">Tất Cả Mã Giảm Giá</a></li>
                                <li><a  href="themmagiamgia.html">Thêm Mã Giảm Giá</a></li>
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
                <div class="wthree-font-awesome">
                    <div class="grid_3 grid_4 w3_agileits_icons_page">
                        <div class="icons">
                            <h2 class="w3ls_head">Tất cả tài khoản</h2>
                            <div class="content_Promain">
                                <div class="content_Prosub">
                                    <div class="proright">
                                        <div class="proright_table">

                                            <div class="table_content" style="max-height: 650px;">
                                                <table class="table table-bordered table1">
                                                    <thead>
                                                        <tr class="active">
                                                            <th class="thac"></th>
                                                            <th class="p p1">
                                                                STT
                                                            </th>
                                                            <th class="p p1">
                                                                ID
                                                            </th>
                                                            <th class="p p2">
                                                                Tên Đăng Nhập
                                                            </th>
                                                            <th class="p p2_1">
                                                                Loại Tài Khoản
                                                            </th>
                                                            <th>
                                                                Địa Chỉ Gmail
                                                            </th>
                                                       
                                                            <th class="p p4">
                                                                Số Điện Thoại
                                                            </th>
                                                            <th class="p p5">
                                                                Xem/Sửa
                                                            </th>
                                                            <th class="p">
                                                                Xóa
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${listuser}" var="u" varStatus="loop">
                                                        <tr>
                                                            <td><input type="checkbox"></td>
                                                            <td>${loop.index + 1}</td>
                                                            <td>${u.id}</td>
                                                            <td>${u.username}</td>
                                                            <td>${u.loaiTaiKhoan}</td>
                                                            <td>${u.email}</td>
                                                            <td>${u.dateAdd}</td>
                                                            <td><i data-toggle="modal" data-target="#exampleModalCenterEditUser" class="fa fa-edit i-edit-user"></i></td>
                                                            <td><i data-toggle="modal" data-target="#exampleModalDeleteUser" class=" fa fa-trash i-delete-user"></i></td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <button type="submit">Xóa Nhiều Mục</button>
                                            <a href="canhanuser.html"><button class="add">Thêm Tài Khoản</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>

        </section>

        <!--main content end-->
    </section>
<%-- modal user--%>
<div class="modal fade" id="exampleModalCenterEditUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Chỉnh Sửa Thông Tin Tài Khoản</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="content-modal">
                    <div class="">
                        <label >ID</label><br>
                        <input  class="id-user-show" type="number" value="" readonly>
                    </div>
                    <div class="">
                        <label >Tên Đăng Nhập</label><br>
                        <input class="username-show" type="text" value="" readonly>
                    </div>
                    <div class="">
                        <label >Loại Tài Khoản</label><br>
                       <select class="select-kind-user-show">
                           <option value="admin">Admin</option>
                           <option value="user">User</option>
                       </select>
                    </div>
                    <div class="">
                        <label >Email</label><br>
                        <input data-dataemail="" class="email-user-show" type="text" value="" >
                    </div>
                    <div class="">
                        <label >Số Điện Thoại</label><br>
                        <input class="phone-user-show" type="number" value="0" >
                    </div>
                    <div class="">
                        <label >Địa Chỉ</label><br>
                        <input class="address-user-show" type="text" value="" >
                    </div>
                    <div class="">
                        <label >Ngày Tạo Tài Khoản</label><br>
                        <input class="date-add-user" type="text" value="" readonly>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="but-dialog btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button"  data-dismiss="modal" class="btn btn-primary but-dialog btn-save-edit-user">Lưu</button>
            </div>
        </div>
    </div>
</div>
<%-- end modal user--%>
<%--hộp thoại xác nhận xóa hay không--%>
<div class="modal fade" id="exampleModalDeleteUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xóa Tài Khoản</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Bạn có chắc chắn muốn xóa tài khoản? Tài Khoản không thể khôi phục sau khi xóa!
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary btn-delete-user">Xóa</button>
            </div>
        </div>
    </div>
</div>
    <script src="jsadmin_ajax/Account/DeleteAccount.js"></script>
    <script src="jsadmin_ajax/Account/EditAccount.js"></script>
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