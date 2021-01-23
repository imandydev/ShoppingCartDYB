<%@ page import="beans.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<head>
	<title>Thống Kê</title>
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
	<link rel="stylesheet" href="cssadmin/dashboard.css"/>
 
	<link href="cssadmin/style.css" rel="stylesheet" type='text/css'/>

	<link href="cssadmin/style-responsive.css" rel="stylesheet" />

	


	<!-- font CSS -->
	
	<!-- font-awesome icons -->
	<link rel="stylesheet" href="cssadmin/font.css" type="text/css" />
	<link href="cssadmin/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="cssadmin/morris.css" type="text/css" />
	<!-- calendar -->
	<link rel="stylesheet" href="cssadmin/monthly.css">
	<!-- //calendar -->
	<!-- //font-awesome icons -->
	<script src="jsadmin/jquery2.0.3.min.js"></script>
	<script src="jsadmin/raphael-min.js"></script>
	<script src="jsadmin/morris.js"></script>
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
                            <a class="active" href="${pageContext.request.contextPath}/admin">
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
			<section class="wrapper">
				<!-- //market-->
				<div class="market-updates">
					<div class="col-md-3 market-update-gd">
						<div class="market-update-block clr-block-0">
							<div class="col-md-4 market-update-right">
								<i class="fa fa-eye"> </i>
							</div>
							<div class="col-md-8 market-update-left">
								<h4>Lượt Xem</h4>
								<h3 class="number">5,000</h3>
								<p>Hiện Tại, Trong Ngày</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="col-md-3 market-update-gd">
						<div class="market-update-block clr-block-2">
							<div class="col-md-4 market-update-right">
								<i class="fa fa-user"> </i>
							</div>
							<div class="col-md-8 market-update-left">
								<h4>Đang Online</h4>
								<h3 class="number">50</h3>
								<p>Hiện Tại</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="col-md-3 market-update-gd">
						<div class="market-update-block clr-block-1">
							<div class="col-md-4 market-update-right">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<div class="col-md-8 market-update-left">
								<h4>Đặt Hàng</h4>
								<h3 class="number">1,250</h3>
								<p>Đơn, Trong Ngày</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="col-md-3 market-update-gd">
						<div class="market-update-block clr-block-3">
							<div class="col-md-4 market-update-right">
								<i class="fa fa-usd"></i>
							</div>
							<div class="col-md-8 market-update-left">
								<h4>Doanh Thu</h4>
								<h3 class="number">8,000,000đ</h3>
								<p>Hiện Tại, Trong Ngày</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="col-md-3 market-update-gd">
						<div class="market-update-block clr-block-4">
							<div class="col-md-4 market-update-right">
								<i class="fa fa-times-circle" aria-hidden="true"></i>
	
							</div>
							<div class="col-md-8 market-update-left">
								<h4>Hủy Hàng</h4>
								<h3 class="number">500</h3>
								<p>Đơn, Tổng Số</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<!-- //market-->


				<!-- sửa từ chỗ này -->
				<div class="boxx">
					<div class="boxx-top">
						<h3>10 Đơn Hàng Gần Nhất</h3>
						<a href="${pageContext.request.contextPath}/display-order"><button>Xem Tất Cả Đơn Hàng</button></a>
					</div>

					<table class="table table-bordered boxx-tb table1">
						<tr class="active tr-main">
							<th class="th1">Mã Đơn Hàng</th>
							<th class="th1_1">Mã Khách Hàng (ID)</th>
							<th class="th2" title="Phương Thức Thanh Toán">Số Lượng Sản Phẩm</th>
							<th class="th3" title="Ngày Đặt Hàng">Ngày Đặt</th>
						
							<th class="th5" title="Trạng Thái Đơn Hàng">Trạng Thái</th>
							<th class="th6">Tổng Tiền</th>
							<th class="th7">Xem/ Sửa</th>
						</tr>
						<tbody>
						<c:forEach items="${list10Pro}" var="i">
						<!-- don1 -->
						<tr class="tr-content">
							<td class="td1 id-order">${i.id}</td>
							<td>${i.idUser}</td>
							<td>${i.amount}</td>
							<td>${i.time}</td>
						
							<td><a class="status2">${i.status}</a></td>
							<td>${i.formatPrice()}đ</td>
							<td class="td-ctent">
								<i data-toggle="modal" data-target="#exampleModalCenter" class="fa fa-edit i-edit"></i>
							</td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>

				<!-- hết chỗ sửa -->

				
				
			</section>
			<!-- footer -->
		
			<!-- / footer -->
		</section>
		<!--main content end-->
	</section>
	<!-- modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
		  <div class="modal-content">
				<div class="modal-header">
				  <h5 class="modal-title" id="exampleModalLongTitle">Chỉnh Sửa Đơn Hàng</h5>
					 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
				  </button>
				</div>
				<div class="modal-body">
				  	<div class="content">
						 
										<div class="left">
											<div class="row1">
												<label >Mã Đơn Hàng</label><br>
												<input class="id-order-show" type="text" value="" readonly>
											</div>
											<div class="row2">
												<label >Mã Khách Hàng (ID)</label><br>
												<input class="id-user-show" type="text" value="" readonly>
											</div>
											<div class="row3">
												<label >Số Lượng Sản Phẩm</label><br>
												<input class="sum-amount-show" type="text" value="" readonly>
											</div>
											<div class="row4">
												<label >Ngày Đặt</label><br>
												<input class="date-order-show" type="text" value="" readonly>
											</div>
											<div class="row2">
												<label >Trạng Thái</label><br>
												<select  class="status-order-show">
													<option value="Đang Xử Lý">Đang Xử Lý</option>
													<option value="Chờ Lấy Hàng">Chờ Lấy Hàng</option>
													<option value="Đang Giao">Đang Giao</option>
													<option value="Đã Giao">Đã Giao</option>
													<option value="Đã Hủy">Đã Hủy</option>
												</select>
											</div>
										</div>
										<div class="right">
											<div class="row3">
												<label >Mã Giảm Giá</label><br>
												<input class="id-discount-show" type="text" value="" readonly>
											</div>
											<div class="row3">
												<label >Tổng Tiền</label><br>
												<input class="total-price-show" type="text" value="1.775.000" readonly>
											</div>
											<div class="row2">
												<label >Địa Chỉ</label><br>
												<textarea class="form-control address-user-show" rows="3" id="comment" readonly>Ký túc xá khu B Đại Học Quốc Gia Phường Đông Hòa Thị Xã Dĩ An Bình Dương</textarea>
												
											</div>
											
											<div class="row4">
												<label >Ghi Chú</label><br>
                                                <textarea class="form-control ghichu-show" rows="2" readonly>Giao hàng cẩn thận!</textarea>
											</div>
										</div>
							
					
				 	</div>
				</div>
				<div class="center" style="max-height: 500px;">
					<table class="table table-bordered table-show" >
						<thead>
						<tr class="active">
							<th>Mã Sản Phẩm</th>
							<th>Tên Sản Phẩm</th>
							<th>Kích Thước</th>
							<th>Màu Sắc</th>
							<th>Số Lượng</th>
							<th>Giá Tiền</th>
						</tr>
						</thead>
						<tbody class="tbody-show">

						
						</tbody>
						<tr></tr>
					</table>
				</div>
				<div class="modal-footer">
                    <button type="button" class="but-dialog" data-dismiss="modal">Đóng</button>
					  <button type="button"  data-dismiss="modal" class="but-dialog but-save-show">Lưu</button>
				</div>
		  </div>
		</div>
  </div>
	<!-- end modal -->
	<script src="jsadmin/bootstrap.js"></script>
	<script src="jsadmin/jquery.dcjqaccordion.2.7.js"></script>
	<script src="jsadmin/scripts.js"></script>
	<script src="jsadmin/jquery.slimscroll.js"></script>
	<script src="jsadmin/jquery.nicescroll.js"></script>
	<script src="jsadmin_ajax/Dashboard/dashBoardShowOrderDetail.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="jsadmin/flot-chart/excanvas.min.js"></script><![endif]-->
	<script src="jsadmin/jquery.scrollTo.js"></script>
	<!-- morris JavaScript -->
	<%--	sweetalert--%>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- //calendar -->
</body>

</html>