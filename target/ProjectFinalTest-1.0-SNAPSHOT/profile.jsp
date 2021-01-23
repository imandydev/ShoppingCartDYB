<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Thông Tin Tài Khoản</title>
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
	<link rel="stylesheet" href="css/profile.css">
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Owl-carousel-CSS -->
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />

	<link rel="stylesheet" type="text/css" href="css/checkout.css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">

	<!-- //font-awesome-icons -->
	<link
		href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
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
								<c:if test="${sessionScope.auth.loaiTaiKhoan == 'admin'}">
									<li><a href="${pageContext.request.contextPath}/admin">Quản Lý Trang Web</a></li>
								</c:if>
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
		<div cl ass="clearfix"></div>
		<!-- /banner_inner -->
		<div class="services-breadcrumb_w3ls_agileinfo">
			<div class="inner_breadcrumb_agileits_w3">

				<ul class="short">
					<li><a href="index.html">Trang chủ</a><i>|</i></li>
					<li>Thông Tin Tài Khoản</li>
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
						<a href="#">
							<h4>Tài Khoản Của Tôi</h4>
						</a>
						<ul>
							<li><a href="${pageContext.request.contextPath}/profile"><span class="active">Thông Tin Của Tôi</span></a></li>
							<li><a href="${pageContext.request.contextPath}/address"><span>Địa Chỉ</span></a></li>
							<li><a href="magiamgia.html"><span>Mã Giảm Giá</span></a></li>
							<li><a href="${pageContext.request.contextPath}/changepass"><span>Đổi Mật Khẩu</span></a> </li>
						</ul>

					</div>
					<div class="donmua c1">
						<a href="donmua.html">
							<h4>Đơn Mua</h4>
						</a>
					</div>
					<div class="dangxuat c1">
						<a href="${pageContext.request.contextPath}/logout">
							<h4>Đăng Xuất</h4>
						</a>
					</div>
				</div>
			</div>
			<div class="main_right">
				<div class="content_main">
					<div class="list_product">
						<div class="content_pro_a">
							<h2>Thông tin của tôi</h2>
							<h4>Quản lý thông tin để bảo mật tài khoản</h4>
						</div>
						<div class="content_pro_b">
							<div class="element_left">
								<form action="update-profile?action=set-profile" method="post" class="save-profile">
									<div class="element">
										<div class="cl1"><h3>Tên Đăng Nhập</h3></div>
										<div class="cl2"><p class="get-username" >${sessionScope.auth.username}</p></div>
									</div>
									<div class="element">
                                        <input name="emailbf" style="display: none" value="${sessionScope.auth.email}">
										<div class="cl1 clx"><h3>Email</h3></div>
										<div class="cl2"><input class="get-email" type="email" name="email" value="${sessionScope.auth.email}"></div>
									</div>

									<div class="element">
										<div class="cl1 clx"><h3>Số Điện Thoại</h3></div>
										<div class="cl2"><input class="get-numberP" type="number" name="sdt" value="${sessionScope.auth.sdt}"></div>
									</div>
									<div class="element">
										<div class="cl3 "><button type="submit" class="button">Lưu</button></div>
									</div>
								</form>
							</div>
							<!-- moi then 14/11 -->


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
					<h2><a href="${pageContext.request.contextPath}${listMenu[0].link}?action=returns&id=${listMenu[0].id}"><span><c:out value="${infor.splitStr(infor.logo)[0]}"></c:out></span> <c:out value="${infor.splitStr(infor.logo)[1]}"></c:out> </a></h2>
					<ul class="social-nav model-3d-0 footer-social social two">
						<li>
							<a href="<c:out value="${infor.fb}"></c:out>" class="facebook">
								<div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
								<div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
							</a>
						</li>
						<li>
							<a href="<c:out value="${infor.twi}"></c:out>" class="twitter">
								<div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
								<div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
							</a>
						</li>
						<li>
							<a href="<c:out value="${infor.ins}"></c:out>" class="instagram">
								<div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
								<div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
							</a>
						</li>
						<li>
							<a href="<c:out value="${infor.pri}"></c:out>" class="pinterest">
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
								<c:forEach items="${listMenu}" var="m">
									<li><a href="${pageContext.request.contextPath}${m.link}?action=returns&id=${m.id}">${m.name}</a></li>
								</c:forEach>
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
										<p><c:out value="0${infor.hotLine}"></c:out></p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="address-grid">
									<div class="address-left">
										<i class="fa fa-envelope" aria-hidden="true"></i>
									</div>
									<div class="address-right">
										<h6>Địa Chỉ Email</h6>
										<p>Email :<a href="mailto"<c:out value="${infor.email}"></c:out>> <c:out value="${infor.email}"></c:out></a></p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="address-grid">
									<div class="address-left">
										<i class="fa fa-map-marker" aria-hidden="true"></i>
									</div>
									<div class="address-right">
										<h6>Địa Chỉ</h6>
										<p> <c:out value="${infor.diaChi}"></c:out></p>

										</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<div class="col-md-3 sign-gd flickr-post">
							<h4>Chứng nhận</h4>
							<img src="<c:out value="${infor.imgLogo}"></c:out>" alt="" style="width: 230px;" >
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
				<p class="copy-right-w3ls-agileits"><c:out value="${infor.splitStr(infor.copyRight)[0]}"></c:out> <a><c:out value="${infor.splitStr(infor.copyRight)[1]}"></c:out></a></p>

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
	<!-- create year -->



</body>

</html>
