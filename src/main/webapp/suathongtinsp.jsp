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

                        <div class="content">
                            <h3 style="margin: 20px 0">Sản phẩm</h3>
                            <div class="table_content" style="max-height: 650px;">
                                <table class="table table-bordered boxx-tb table-product" >
                                    <thead>
                                        <tr class="active tr-main">
                                            <th class="th0">Mã SP</th>
                                            <th class="th1">Hình Ảnh</th>
                                            <th class="th2">Tên Sản Phẩm</th>
                                            <th class="th6">Menu - Danh Mục</th>
                                            <th class="th4">Trạng Thái</th>
                                            <th class="th5">Giá</th>
                                            <th class="">Giá Khuyến Mãi</th>
                                            <th class="th8">Sửa</th>
                                        </tr>
                                    </thead>
                                    <!-- don1 -->
                                    <tbody>
                                        <tr class="tr-content">
                                            <td><span data-dataid="${product.id}">${product.id}</span></td>
                                            <td class="imgsp"><img src="${product.splitStrImg()[0]}" alt=""></td>
                                            <td>${product.name}</td>
                                            <td>${product.menuName} - ${product.menuCate}</td>
                                            <td>${product.status}</td>
                                            <td>${product.price}đ</td>
                                            <td>${product.priceDis}đ</td>
                                            <td class="td-ctent">
                                                <i data-toggle="modal" data-target="#exampleModalCenterProduct" class="fa fa-edit i-edit"></i>
                                            </td>
                                        </tr>
                                        <!-- don2 -->

                                    </tbody>
                                </table>
                            </div>
                            <div style="margin: 20px 0"><h3>Chi tiết sản phẩm</h3></div>
                            <div class="table_content" style="max-height: 650px;">
                                <table class="table table-bordered boxx-tb table-detail-product" >
                                    <thead>
                                    <tr class="active tr-main">
                                        <th class="">Mã CTSP</th>
                                        <th class="th1">Mã Sản Phẩm</th>
                                        <th class="th2">Màu Sắc</th>
                                        <th class="th6">Kích Thước</th>
                                        <th class="th4">Số Lượng</th>
                                        <th class="th5">Giá</th>
                                        <th class="">Giá Khuyến Mãi</th>
                                        <th class="">Giảm Giá</th>
                                        <th class="th8">Sửa</th>
                                    </tr>
                                    </thead>
                                    <!-- don1 -->
                                    <tbody>
                                    <c:forEach items="${listDe}" var="i">
                                    <tr class="tr-content">
                                        <td><span data-dataid="${i.id}">${i.id}</span></td>
                                        <td>${i.idPro}</td>
                                        <td>${i.mau}</td>
                                        <td>${i.size}</td>
                                        <td>${i.soLuong}</td>
                                        <td>${i.currentFormatGia()}đ</td>
                                        <td>${i.currentFormatGiaKM()}đ</td>
                                        <c:if test="${i.giamGia == 0}">
                                            <td>Không</td>
                                        </c:if>
                                        <c:if test="${i.giamGia == 1}">
                                            <td>Có</td>
                                        </c:if>
                                        <td class="td-ctent">
                                            <i data-toggle="modal" data-target="#exampleModalCenterDetail" class="fa fa-edit i-edit-detail"></i>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                    <!-- don2 -->
                                    </tbody>
                                </table>
                            </div>
                            <div class="content_but">
                                <button type="submit" class="add-detail-product" data-toggle="modal" data-target="#exampleModalCenterDetailAdd">Thêm Chi Tiết Sản Phẩm</button>
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
<!-- modal product-->
<div class="modal fade" id="exampleModalCenterProduct" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Chỉnh Sửa Sản Phẩm</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="content-modal">
                        <div class="">
                            <label >Mã Sản Phẩm</label><br>
                            <input class="id-pro-show" type="text" value="" readonly>
                        </div>
                        <div class="">
                            <label >Tên Sản Phẩm</label><br>
                            <input class="name-pro-show" type="text" value="" >
                        </div>
                        <div class="">
                            <label >Danh Mục</label><br>
                            <select  class="cate-pro-show">
                                <c:forEach items="${listcate}" var="m">
                                    <c:if test="${m.idMenu == 5}">
                                        <option value="${m.id}" data-dataidmenu="${m.idMenu}">${m.name} (Giảm giá)</option>
                                    </c:if>
                                    <c:if test="${m.idMenu != 5}">
                                        <option value="${m.id}" data-dataidmenu="${m.idMenu}">${m.name}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="">
                            <label >Trạng Thái</label><br>
                            <select  class="status-pro-show">
                                <option value="public">Public</option>
                                <option value="private">Private</option>
                            </select>
                        </div>
                        <div>
                            <label>Hình Ảnh Chính</label>
                            <input type="file" class="img-main-show" id="img-main-show" accept="image/*">
                        </div>
                        <div>
                            <img id="img-main" src="imagesadmin/admin.png" height="150" width="150">
                        </div>
                        <div>
                            <label>Hình Ảnh Chi Tiết 1</label>
                            <input type="file" class="img-1-show" id="img-1-show" accept="image/*">
                        </div>
                        <div>
                            <img src="imagesadmin/admin.png" height="150" width="150" id="img-change-1">
                        </div>
                        <div>
                            <label>Hình Ảnh Chi Tiết 2</label>
                            <input type="file" class="img-2-show" id="img-2-show" accept="image/*">
                        </div>
                        <div>
                            <img  src="imagesadmin/admin.png" height="150" width="150" id="img-change-2">
                        </div>
                        <div>
                            <label>Hình Ảnh Chi Tiết 3</label>
                            <input type="file" class="img-3-show" id="img-3-show" accept="image/*">
                        </div>
                        <div>
                            <img src="imagesadmin/admin.png" height="150" width="150" id="img-change-3">
                        </div>
                        <div class="">
                            <label >Giá</label><br>
                            <input class="price-pro-show" type="number" value="0" >
                        </div>
                        <div class="">
                            <label >Giá Khuyến Mãi</label><br>
                            <input class="price-dis-pro-show" type="number" value="0" >
                        </div>
                        <div class="">
                            <label >Mô Tả</label><br>
                            <textarea id="mota-pro-show" class="wysihtml5 form-control" rows="9" ></textarea>
                        </div>
                        <div class="">
                            <label >Thông Tin</label><br>
                            <textarea id="thongtin-pro-show" class="wysihtml5 form-control" rows="9"></textarea>
                        </div>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="but-dialog btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button"  data-dismiss="modal" class="btn btn-primary but-dialog but-save-show">Lưu</button>
            </div>
        </div>
    </div>
</div>
<!-- end modal -->
<%-- modal detail--%>
<div class="modal fade" id="exampleModalCenterDetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Chỉnh Sửa Chi Tiết Sản Phẩm</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="content-modal">
                    <div class="">
                        <label >Mã Chi Tiết Sản Phẩm</label><br>
                        <input class="id-detail-pro-show" type="text" value="" readonly>
                    </div>
                    <div class="">
                        <label >Mã Sản Phẩm</label><br>
                        <input data-dataidprobf="" class="id-pro-show-detail" type="number" value="">
                    </div>
                    <div class="">
                        <label >Màu Sắc</label><br>
                        <input class="color-detail-pro-show" type="text" value="" >
                    </div>
                    <div class="">
                        <label >Kích Thước</label><br>
                        <input class="size-detail-pro-show" type="text" value="" >

                    </div>
                    <div class="">
                        <label >Số Lượng</label><br>
                        <input class="amount-detail-pro-show" type="text" value="" >
                    </div>
                    <div class="">
                        <label >Giá</label><br>
                        <input class="price-detail-pro-show" type="number" value="0" >
                    </div>
                    <div class="">
                        <label >Giá Khuyến Mãi</label><br>
                        <input class="price-detail-dis-pro-show" type="number" value="0" >
                    </div>
                    <div>
                        <label >Giảm Giá</label><br>
                        <select class="selec-discount-detail-show">
                            <option value="1">Có</option>
                            <option value="0">Không</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="but-dialog btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button"  data-dismiss="modal" class="btn btn-primary but-dialog but-save-detail-show">Lưu</button>
            </div>
        </div>
    </div>
</div>
<%-- end modal detail--%>

<%-- modal add detail--%>
<div class="modal fade" id="exampleModalCenterDetailAdd" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
                <button type="button"  data-dismiss="modal" class="btn btn-primary but-dialog but-save-add-detail-show">Lưu</button>
            </div>
        </div>
    </div>
</div>
<%-- end modal add detail--%>
    <!-- ckeditor -->
    <script src="ckeditor/ckeditor.js"></script>
    <script src="jsadmin_ajax/AddProduct/AddDetailProduct.js"></script>
    <script src="jsadmin_ajax/AddProduct/EditProduct.js"></script>
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