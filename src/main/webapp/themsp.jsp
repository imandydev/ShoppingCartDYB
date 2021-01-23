<%@ page import="beans.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<head>
<title>Thêm Sản Phẩm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="cssadmin/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link rel="stylesheet" href="cssadmin/themsanpham.css">
<link href="cssadmin/style.css" rel='stylesheet' type='text/css' />
<link href="cssadmin/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->

<!-- font-awesome icons -->
<link href="cssadmin/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<script src="jsadmin/jquery2.0.3.min.js"></script>
<!-- ckeditor -->
<script src="ckeditor/ckeditor.js"></script>
</head>
<body>
<%
    User user = (User)session.getAttribute("auth");
    if(user == null || !user.accept("admin"))
        response.sendRedirect("/ProjectFinalTest_war_exploded/listnews?action=returns&id=1&page=1");
%>
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
                    <a  href="javascript:;">
                        <i class="fa fa-home"></i>
                        <span>Trang Chủ</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="dstin.html">Tất Cả Tin</a></li>
                        <li><a  href="themtin.html">Thêm Tin</a></li>
                    </ul>
                </li>
                <li >
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
                        <li><a href="${pageContext.request.contextPath}/list-product-manager">Tất Cả Sản Phẩm</a></li>
                        <li><a class="active" href="${pageContext.request.contextPath}/display-product-add">Thêm Sản Phẩm</a></li>
                    </ul>
                </li>
                
                <li class="sub-menu">
                    <a   href="javascript:;">
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
                    <a  href="mathangkhac.html">
                        <i class="fa fa-suitcase"></i>
                        <span>Mặt Hàng Khác</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a  href="javascript:;">
                        <i class="fa fa-desktop"></i>
                        <span>Giao Diện </span>
                    </a>
                    <ul class="sub">
                        <li><a  href="hinhanh.html">Hình Ảnh</a></li>
                        <li><a  href="thongtin.html">Thông Tin</a></li>
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
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper" >
		<div class="wthree-font-awesome">
			<div class="grid_3 grid_4 w3_agileits_icons_page">
					<div class="icons">
						<h2 class="w3ls_head">Thêm Sản Phẩm</h2>
						<div class="content_Promain">
							<div class="content_Prosub">
                                <div class="include_form">
							<form action="">
                                <div class="left">
                                    <div class="row4_3 p">
                                        <label >Tên Sản Phẩm:</label>
                                    </div>
                                    <div class="row1">
                                        <label >Hình ảnh chính:</label>
                                    </div>
                                    <div class="row1">
                                        <label >Hình ảnh:</label>
                                    </div>
                                    <div class="row4">
                                        <label >Danh Mục:</label>
                                    </div>

                                    <div class="row4_2 p">
                                        <label >Trạng Thái:</label>
                                    </div>

                                    <div class="row6 p">
                                        <label >Giá:</label>
                                    </div>
                                    <div class="row7 p">
                                        <label >Giá khuyến mãi:</label>
                                    </div>




                                    <div class="row10 p1">
                                        <label >Mô tả:</label>
                                    </div>
                                    <div class="row11">
                                        <label >Thông tin:</label>
                                    </div>
                                   
                                </div>
                                <div class="right">
                                    <div class="row4_3">
                                        <input type="text" class="input-name-pro">
                                    </div>
                                    <div class="row1">
                                        <input type="file" multiple="multiple" accept="image/*" class="input-image-main-pro" id="input-image-main-pro">
                                    </div>
<%--                                    Hiển thị hình ảnh chính--%>
                                    <div class="row1" style="display: flex">
                                        <div class="col-img-1">
                                            <img src="imagesadmin/admin.png"  id="changeimg-main" height="150" width="150" style="margin-right: 20px">
                                        </div>
                                    </div>
                                    <div class="row1">
                                        <input type="file" multiple="multiple" accept="image/*" class="input-image-pro" id="input-image-pro" >
                                    </div>
<%--                                    hiển thị hình ảnh đã upload lên--%>
                                    <div class="row1" style="display: flex">
                                        <div class="col-img-1">
                                            <img src="imagesadmin/admin.png" id="changeimg1" height="150" width="150" style="margin-right: 20px">
                                        </div>
                                        <div class="col-img-1">
                                            <img src="imagesadmin/admin.png" id="changeimg2" height="150" width="150" style="margin-right: 20px">
                                        </div>
                                        <div class="col-img-1">
                                            <img src="imagesadmin/admin.png" id="changeimg3" height="150" width="150">
                                        </div>
                                    </div>
                                    <div class="row4">
                                        <select class="combo_box selectX1 select-cate">
                                            <c:forEach items="${listcate}" var="i">
                                                <c:if test="${i.idMenu == 5}">
                                                    <option data-dataidcate="${i.id}" data-dataidmenu="${i.idMenu}">${i.name} (Giảm giá)</option>
                                                </c:if>
                                                <c:if test="${i.idMenu != 5}">
                                                    <option data-dataidcate="${i.id}" data-dataidmenu="${i.idMenu}">${i.name}</option>
                                                </c:if>
                                            </c:forEach>
                                          </select>
                                    </div>

                                    <div class="row4_2">
                                        <select class="combo_box selectX2 select-status">
                                            <option value="public">Public</option>
                                            <option value="private">Private</option>
                                          
                                          </select>
                                    </div>
                                   
                                    <div class="row6">
                                        <input type="number" class="input-price-pro">
                                    </div>
                                    <div class="row7">
                                         <input type="number" class="input-price-dis-pro">
                                    </div>


                                    <div class="row10">
                                        <textarea id="mota" class="wysihtml5 form-control" rows="9" ></textarea>

                                    </div>
                                    <div class="row11">
                                        <textarea id="thongtin" class="wysihtml5 form-control" rows="9"></textarea>

                                    </div>
                                     <div class="bottom">
                                         <button type="button" class="btn-savesss">Lưu</button>
                                    
                                </div>
                                </div>
                               
                            </form>
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
<script src="jsadmin_ajax/AddProduct/AddProduct.js"></script>
<script src="jsadmin/bootstrap.js"></script>
<script src="jsadmin/jquery.dcjqaccordion.2.7.js"></script>
<script src="jsadmin/scripts.js"></script>
<script src="jsadmin/jquery.slimscroll.js"></script>
<script src="jsadmin/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="jsadmin/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="jsadmin/jquery.scrollTo.js"></script>
<%--	sweetalert--%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>
