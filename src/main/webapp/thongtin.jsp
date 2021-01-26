<%@ page import="beans.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<head>
<title>Thông Tin</title>
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
</head>
<body>
<%--<%--%>
<%--	User user = (User)session.getAttribute("auth");--%>
<%--	if(user == null || !user.accept("admin"))--%>
<%--		response.sendRedirect("/ProjectFinalTest_war_exploded/listnews?action=returns&id=1&page=1");--%>
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
                    <a  href="alldonhang.html">
                        <i class="fa fa-building"></i>
                        <span>Tất Cả Đơn Hàng</span>
                    </a>
                   
                </li>
                <li class="sub-menu">
                    <a  href="javascript:;">
                        <i class=" fa fa-product-hunt"></i>
                        <span>Sản Phẩm</span>
                    </a>
                    <ul class="sub">
                        <li><a href="allsanpham.html">Tất Cả Sản Phẩm</a></li>
                        <li><a  href="themsp.html">Thêm Sản Phẩm</a></li>
                    </ul>
                </li>
                
                <li class="sub-menu">
                    <a   href="javascript:;">
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
                    <a  href="mathangkhac.html">
                        <i class="fa fa-suitcase"></i>
                        <span>Mặt Hàng Khác</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a class="active" href="javascript:;">
                        <i class="fa fa-desktop"></i>
                        <span>Giao Diện </span>
                    </a>
                    <ul class="sub">
                        <li><a  href="hinhanh.html">Hình Ảnh</a></li>
                        <li><a class="active" href="thongtin.html">Thông Tin</a></li>
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
						<h2 class="w3ls_head">Quản Lý Thông Tin</h2>
						<div class="content_Promain">
							<div class="content_Prosub">
                                <div class="include_form">
							<form action="#" id="from-infor">
                                <div class="left">

                                    <div class="row0_1">
                                        <label >Logo:</label>
                                    </div>
                                    <div class="rowtt_3">
                                        <label >Tên Công Ty:</label>
                                    </div>
                                    <div class="rowtt_4 rowa4">
                                        <label >Địa Chỉ:</label>
                                    </div>
                                    <div class="row4_1 p">
                                        <label >Hotline:</label>
                                    </div>
                                    <div class="row4_1 p">
                                        <label >Email:</label>
                                        </div>
                                  
                                    <div class="row6 p">
                                        <label style="margin-bottom: 10px">Copyright:</label>
                                    </div>
                                    <div class="row7 p">
                                        <label >Facebook:</label>
                                    </div>
                                    <div class="row8 p">
                                        <label >Instagram:</label>
                                    </div>
                                    <div class="row9 p">
                                        <label >Twitter:</label>
                                    </div>
                                    <div class="row9_1 p">
                                        <label >Pinterest:</label>
                                    </div>
                                    <div class="row10 ">
                                        <label >Bản Đồ:</label>
                                    </div>

                                   
                                </div>
                                <div class="right">
                                    <div class="row0_1">
                                        <input class="logo-1-show" type="text" value="${infor.splitStr()[0]}" style="width: 40%; margin-right: 18%">
                                        <input class="logo-2-show" type="text" value="${infor.splitStr()[1]}"  style="width: 40%">
                                    </div>
                                    <div class="row3">
                                        <input class="ten-cong-ty-show" type="text" value="${infor.tenCongTy}">
                                    </div>
                                    <div class="row4">
                                        <input class="dia-chi-show" type="text" value="${infor.diaChi}">
                                    </div>
                                    <div class="row4_1">
                                        <input class="sdt-show" type="number" value="${infor.hotLine}" >
                                        </div>
                                    <div class="row4_2">
                                        <input class="email-show" type="email" value="${infor.email}">
                                    </div>
                                   
                                    <div class="row6">
                                        <input class="coppyr-show" type="text" value="${infor.copyRight}">
                                    </div>
                                    <div class="row7">
                                         <input class="fb-show" type="text" value="${infor.fb}">
                                    </div>
                                    <div class="row8">
                                        <input class="ins-show" type="text" value="${infor.ins}">
                                    </div>
                                    <div class="row9">
                                        <input class="twi-show" type="text" value="${infor.twi}">
                                    </div>
                                    <div class="row9_1">
                                        <input class="pin-show" type="text" value="${infor.pri}">
                                    </div>
                                    <div class="row9_1">
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="5">${infor.banDo}</textarea>
                                    </div>
                                     <div class="bottom">
                                         <button type="submit" class="save-infor">Lưu</button>
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
<script src="jsadmin_ajax/Infor/UpdateInfor.js"></script>
<script src="jsadmin/bootstrap.js"></script>
<script src="jsadmin/jquery.dcjqaccordion.2.7.js"></script>
<script src="jsadmin/scripts.js"></script>
<script src="jsadmin/jquery.slimscroll.js"></script>
<script src="jsadmin/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="jsadmin/jquery.scrollTo.js"></script>
<%--	sweetalert--%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>
