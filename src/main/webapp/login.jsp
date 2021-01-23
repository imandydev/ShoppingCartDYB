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
	<title>Đăng Nhập</title>
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
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/about.css" type="text/css" media="screen" property="" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">

	<!-- //font-awesome-icons -->
	<link rel="stylesheet" href="css/login.css">

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

					<a href="${pageContext.request.contextPath}/login"><button class="trigger-overlay" type="submit"><i class="fa fa-user"></i></button></a>

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
		<div class="clearfix"></div>
		<!-- /banner_inner -->
		<div class="services-breadcrumb_w3ls_agileinfo">
			<div class="inner_breadcrumb_agileits_w3">

				<ul class="short">
					<li>Trang Chủ<i>|</i></li>
					<li>Đăng Nhập / Đăng Ký</li>
				</ul>
			</div>
		</div>
		<!-- //banner_inner -->
	</div>

	<!-- //banner -->
	<div>
		<div class="form">
			<div class="formdn">
				<h1>Đăng Nhập</h1>
                <form action="${pageContext.request.contextPath}/access-login" method="post">
				<label class="l1">Tên Đăng Nhập</label>
				<input type="text" name="username">
				<label class="l1" >Mật Khẩu</label>
				<input type="password" name="pass">
				<button type="submit" class="buttonx">Đăng Nhập</button>
				<hr>
                </form>
				<a class="qmk" href="forgetpass.html">Quên mật khẩu?</a>
			</div>
			<div class="formdk">
				<h1>Đăng Ký</h1>
				<form action="#" id="create-account">
					<label class="l1" >Tên Đăng Nhập</label>
					<input class="nput cre-username" type="text" name="username">
					<label class="l1" >Địa Chỉ Email</label>
					<input class="nput cre-email" type="email" name="email">
					<label class="l1" >Số Điện Thoại</label>
					<input class="nput cre-sdt" type="number" name="sdt">
					<label class="l1" >Mật khẩu</label>
					<input class="nput cre-pass" type="password" name="pass">
					<label class="l1" >Xác nhận mật khẩu</label>
					<input class="nput cre-verify" type="password" name="verify-pass">
					<button type="submit" class="buttonx ">Đăng Ký</button>
				</form>
			</div>

		</div>
	</div>


	<!-- /Properties -->
	<div class="mid_slider_w3lsagile">
		<div class="col-md-3 mid_slider_text">
			<h5>Mặt Hàng Khác</h5>
		</div>
		<div class="col-md-9 mid_slider_info">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1" class=""></li>
					<li data-target="#myCarousel" data-slide-to="2" class=""></li>
					<li data-target="#myCarousel" data-slide-to="3" class=""></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a>
								</div>
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
	<!-- cart-js -->
<%--	tạo tài khoản--%>
	<script src="js/addUser.js"></script>
	<script src="js/minicart.js"></script>
<%--	<script>--%>
<%--		shoe.render();--%>

<%--		shoe.cart.on('shoe_checkout', function (evt) {--%>
<%--			var items, len, i;--%>

<%--			if (this.subtotal() > 0) {--%>
<%--				items = this.items();--%>

<%--				for (i = 0, len = items.length; i < len; i++) { }--%>
<%--			}--%>
<%--		});--%>
<%--	</script>--%>
	<!-- //cart-js -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!--search-bar-->
	<script src="js/search.js"></script>
	<!--//search-bar-->
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
	<%--	sweetalert--%>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


</body>

</html>
