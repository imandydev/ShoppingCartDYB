<%@ page import="beans.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<head>
    <title>Tất Cả Sản Phẩm</title>
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
    <link rel="stylesheet" href="cssadmin/allsanpham.css">

    <link href="cssadmin/style.css" rel='stylesheet' type='text/css' />
    <link href="cssadmin/style-responsive.css" rel="stylesheet" />
    <!-- font CSS -->

    <!-- font-awesome icons -->
    <link rel="stylesheet" href="cssadmin/font.css" type="text/css" />
    <link href="cssadmin/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <script src="jsadmin/jquery2.0.3.min.js"></script>
</head>

<body>
<%--    <%--%>
<%--        User user = (User)session.getAttribute("auth");--%>
<%--        if(user == null || !user.accept("admin"))--%>
<%--            response.sendRedirect("/ProjectFinalTest_war_exploded/listnews?action=returns&id=1&page=1");--%>
<%--    %>--%>
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
                                <li>ID</li>
                                <li>Tên Sản Phẩm</li>
                                <li>Sản Phẩm Chính</li>
                                <li>Sản Phẩm Phụ</li>
                                <li>Trạng Thái</li>
                                <li>Đơn Giá</li>
                                <li>Tình Trạng</li>
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
                            <a class="active" href="javascript:;">
                                <i class=" fa fa-product-hunt"></i>
                                <span>Sản Phẩm</span>
                            </a>
                            <ul class="sub">
                                <li><a class="active" href="${pageContext.request.contextPath}/list-product-manager">Tất Cả Sản Phẩm</a></li>
                                <li><a href="${pageContext.request.contextPath}/display-product-add">Thêm Sản Phẩm</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class=" fa fa-user"></i>
                                <span>Tài Khoản</span>
                            </a>
                            <ul class="sub">
                                <li><a   href="${pageContext.request.contextPath}/load-all-account">Tất Cả Tài Khoản</a></li>
                                <li><a class="active" href="${pageContext.request.contextPath}/display-account-add">Thêm Tài Khoản</a></li>
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
                <div class="w3-agile-google_map">
                    <div class="box-sp">
                        <h2 class="w3ls_head">Tất Cả Sản Phẩm</h2>
                        <div class="content">
                            <div class="table_content" style="max-height: 650px;">
                                <table class="table table-bordered boxx-tb table1" >
                                    <thead>
                                        <tr class="active tr-main">
                                            <th></th>
                                            <th class="th0">Mã SP</th>
                                            <th class="th1">Hình Ảnh</th>
                                            <th class="th2">Tên Sản Phẩm</th>
                                            <th class="th6">Menu - Danh Mục</th>
                                            <th class="th4">Trạng Thái</th>
                                            <th class="th5">Giá</th>
                                            <th class="">Giá Khuyến Mãi</th>
                                            <th class="th8">Xem/Sửa</th>
                                            <th class="th9">Xóa</th>

                                        </tr>
                                    </thead>
                                    <!-- don1 -->
                                    <tbody>
                                    <c:forEach items="${listpro}" var="i">
                                        <tr class="tr-content">
                                            <td><input type="checkbox"></td>
                                            <td><span data-dataid="${i.id}">${i.id}</span></td>
                                            <td class="imgsp"><img src="${i.splitStrImg()[0]}" alt=""></td>
                                            <td>${i.name}</td>
                                            <td>${i.menuName} - ${i.menuCate}</td>
                                            <td>${i.status}</td>
                                            <td>${i.price}đ</td>
                                            <td>${i.priceDis}đ</td>
                                            <td class="td-ctent">
                                                <a href="${pageContext.request.contextPath}/edit-product?idPro=${i.id}"><i class="fa fa-edit"></i></a>
                                            </td>
                                            <td class="td-ctent i-del"> <i class="fa fa-trash" data-toggle="modal" data-target="#exampleModal"></i></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="content_but">
                                <a href="${pageContext.request.contextPath}/display-product-add"> <button class="add">Thêm Sản Phẩm</button></a>
                                <button>Xóa Nhiều Sản Phẩm</button>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
            <!-- footer -->

            <!-- / footer -->
        </section>

        <!-- main content end -->
    </section>
    <%--hộp thoại xác nhận xóa hay không--%>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xóa Sản Phẩm</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                   Bạn có chắc chắn muốn xóa sản phẩm? Sản phẩm không thể khôi phục sau khi xóa!
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary btn-delete">Xóa</button>
                </div>
            </div>
        </div>
    </div>
    <script src="jsadmin/bootstrap.js"></script>
    <script src="jsadmin/jquery.dcjqaccordion.2.7.js"></script>
    <script src="jsadmin/scripts.js"></script>
    <script src="jsadmin/jquery.slimscroll.js"></script>
    <script src="jsadmin/jquery.nicescroll.js"></script>
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="jsadmin/flot-chart/excanvas.min.js"></script><![endif]-->
    <script src="jsadmin/jquery.scrollTo.js"></script>
    <script src="jsadmin/search.js"></script>
    <script src="jsadmin_ajax/AddProduct/DeleteProduct.js"></script>
    <%--	sweetalert--%>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>

</html>