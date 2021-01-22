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
	<title>Sản Phẩm</title>
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
	<link rel="stylesheet" href="css/chitiet.css">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<!-- Owl-carousel-CSS -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">

	<!-- //font-awesome-icons -->
	<link
		href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
		rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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

						<c:forEach items="${listMenu}" var="m" varStatus="loop">

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
					<c:if test="${sessionScope.auth == null}">
						<a href="${pageContext.request.contextPath}/login"><button class="trigger-overlay" type="submit"><i class="fa fa-user"></i></button></a>
					</c:if>
					<c:if test="${sessionScope.auth != null}">
						<button class="trigger-overlay" type="submit"><i class="fa fa-user"></i></button>

						<div class="dropdown_user">
							<ul>
								<li><a href="${pageContext.request.contextPath}/profile">Thông Tin Cá Nhân</a></li>
								<li><a href="donmua.html">Đơn Mua</a></li>
								<li><a href="sanphamdaxem.html">Sản Phẩm Đã Xem</a></li>
								<li><a href="hdmuahang.html">Hướng Dẫn Mua Hàng</a></li>
								<li><a href="${pageContext.request.contextPath}/logout">Đăng Xuất</a></li>
							</ul>
						</div>
					</c:if>
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
					<input name="search" type="search" placeholder="Tìm kiếm...">
				</form>
			</div>
		</div>
		<!-- //search -->
		<div class="clearfix"></div>
		<!-- /banner_inner -->
		<div class="services-breadcrumb_w3ls_agileinfo">
			<div class="inner_breadcrumb_agileits_w3">

				<ul class="short">
					<li >Trang Chủ<i>|</i></li>
						<li >Chi Tiết Sản Phẩm</li>
				</ul>
			</div>
		</div>
		<!-- //banner_inner -->
	</div>

	<!-- //banner -->
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">

						<ul class="slides">
							<c:forEach var="i" begin="1" end="${pro.splitStrImg().size() - 1}">
							<li data-thumb="${pro.splitStrImg()[i]}">
								<div class="thumb-image" > <img src="${pro.splitStrImg()[i]}" data-imagezoom="true"
										class="img-responsive"> </div>
							</li>
							</c:forEach>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3>${pro.name}</h3>
				<p class="msp">Mã Sản Phẩm: <span id="id-pro">${pro.id}</span></p>
<%--				nếu chi tiết sản phẩm không có giảm giá thì hiển thị giá gốc--%>
				<c:if test="${detail.giamGia == 0}">
					<p id="price"><span class="item_price" >${detail.currentFormatGia()}đ</span>
				</c:if>
				<c:if test="${detail.giamGia != 0}">
					<p id="price"><span class="item_price" >${detail.currentFormatGiaKM()}đ</span>
					<del id="price-sale">${detail.currentFormatGia()}đ</del>
				</c:if>
				</p>
				<div class="rating1">
					<ul class="stars">

						<c:forEach begin="1" end="${pro.danhGia}">
							<li><i class="fa fa-star" aria-hidden="true"></i></li>
						</c:forEach>

						<c:choose>
							<c:when test="${pro.getOldEva() == 2}">
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
							</c:when>
							<c:when test="${pro.getOldEva() == 1}">
								<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
							</c:when>
						</c:choose>

					</ul>
				</div>
				<div class="color-quality">
					<div class="color-quality-right">
						<h5>Số Lượng :</h5>

						<div class="buttons_added">
							<input class="minus is-form" id="minus" type="button" value="-">
							<input id="amount-product" aria-label="quantity" class="input-qty" max="100" min="1" name="" type="number"
								value="1">
							<input class="plus is-form" id="plus" type="button" value="+">
						</div>
					</div>
				</div>

				<div class="color-box">
					<h5>Màu Sắc :</h5>
					<div class="choses-color">
						<select name="color-selec" class="color-selec" id="color-selec">
						<c:forEach items="${listPro}" varStatus="loop" var="m">
							<option value="${m.mau}">${m.mau}</option>
						</c:forEach>
						</select>
					</div>
				</div>

				<div class="size-box">
					<h5>Size :</h5>
					<div class="choses-size">
						<select name="size-selec" class="size-selec" id="size-selec">
							<c:forEach items="${listSize}" varStatus="loop" var="m">
								<option value="${m.size}">${m.size}</option>
							</c:forEach>
						</select>

					</div>
					<c:if test="${detail.soLuong == 0}"><span class="soluong-conlai">Hết Hàng</span></c:if>
				</div>



				<div class="occasion-cart">
					<div class="shoe single-item single_page_b">
						<form action="#" method="post" id="buy-product" class="submit-pro">
							<input type="hidden" name="cmd" value="_cart">
							<input id="amount-submit" type="hidden" name="add" value="1">
							<input type="hidden" name="shoe_item" value="${pro.name}">
							<c:if test="${detail.giamGia == 1}">
							<input id="buy-price" type="hidden" name="amount"  value="${detail.giaGiam}">
							</c:if>
							<c:if test="${detail.giamGia == 0}">
								<input id="buy-price" type="hidden" name="amount"  value="${detail.gia}">
							</c:if>
							<input type="submit" name="submit" data-dataid="${pro.id}" data-dataid-pro="${detail.id}" value="Thêm Vào Giỏ Hàng" class="button add" id="submit-cart">

							<a href="#" data-toggle="modal" data-target="#myModal1"></a>
						</form>

					</div>

				</div>
			
			</div>
			<div class="clearfix"> </div>
			<!--/tabs-->
			<div class="responsive_tabs">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>Mô Tả Sản Phẩm</li>
						<li>Thông Tin Sản Phẩm</li>
						<li>Nhận Xét</li>
					
					</ul>
					<div class="resp-tabs-container">
						<!--/tab_one-->
						<div class="tab1">

							<div class="single_page">
							<p>
								${pro.moTa}
							</p>

							</div>
						</div>

						<div class="tab2">

							<div class="single_page">
								<p>${pro.thongTin}</p>
							</div>
						</div>
						<div class="tab3">

							<div class="single_page">
								<div id="fb-root"></div>
								<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0" nonce="EtetXXmo"></script>
								<div class="fb-comments" data-href="http://localhost/facebookcomment/index.html" data-numposts="5" data-width="100%"></div>
							</div>
						</div>


					</div>
				</div>
			</div>
			<!--//tabs-->
			<!-- /new_arrivals -->
			<div class="new_arrivals">
				<h3>SẢN PHẨM NỔI BẬT</h3>
				<!-- /womens -->
				<c:forEach items="${hot}" var="m">
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img src="${m.splitStrImg()[0]}" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="${pageContext.request.contextPath}/single?action=detail&id=${m.id}" class="link-product-add-cart">Xem Chi Tiết</a>
									</div>
								</div>

							</div>
							<div class="item-info-product">
								<h4>
									<a href="${pageContext.request.contextPath}/single?action=detail&id=${m.id}">MYSTIC </a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<c:if test="${m.currentFormatGiaKM() != '0' }">
													<span class="money ">${m.currentFormatGia()}₫</span>
												</c:if>
												<c:if test="${m.currentFormatGiaKM() == '0'  }">
													<span class="money "></span><br>
												</c:if>
											</div>
										</div>
										<div class="grid-price ">
											<c:if test="${m.currentFormatGiaKM() != '0'}">
												<span class="moneySave ">${m.currentFormatGiaKM()}₫</span>
											</c:if>
											<c:if test="${m.currentFormatGiaKM() == '0'}">
												<span class="moneySave ">${m.currentFormatGia()}₫</span>
											</c:if>
										</div>
										<ul class="stars">
											<c:forEach begin="1" end="${m.danhGia}">
												<li><i class="fa fa-star" aria-hidden="true"></i></li>
											</c:forEach>

											<c:choose>
												<c:when test="${m.getOldEva() == 2}">
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
												</c:when>
												<c:when test="${m.getOldEva() == 1}">
													<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
												</c:when>
											</c:choose>
										</ul>
										
									</div>
									<div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="${m.name}">
											<c:if test="${m.giamgia != 1}">
												<input type="hidden" name="amount" value="${m.gia}">
											</c:if>
											<c:if test="${m.giamgia == 1}">
												<input type="hidden" name="amount" value="${m.giaKM}">
											</c:if>
											<button type="submit" class="shoe-cart pshoe-cart"><i
													class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>

				<!-- //womens -->
				<div class="clearfix"></div>
			</div>
			<!--//new_arrivals-->


		</div>
	</div>
	<!-- //top products -->
	<div class="mid_slider_w3lsagile">
		<div class="col-md-3 mid_slider_text">
			<h5>Mặt Hàng Khác</h5>
		</div>
		<div class="col-md-9 mid_slider_info">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class=""></li>
					<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="2" class=""></li>
					<li data-target="#myCarousel" data-slide-to="3" class=""></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
						</div>
					</div>
					<div class="item active">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></a></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><a href="single.html"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a></div>
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
	<!-- /newsletter-->
	<div class="newsletter_w3layouts_agile">

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
									<li><a href="${pageContext.request.contextPath}${m.link}?action=returns&id=${m.id}&page=1">${m.name}</a></li>
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
										<p>Email :<a href="mailto"<c:out value="${infor.email}"></c:out>><c:out value="${infor.email}"></c:out></a></p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="address-grid">
									<div class="address-left">
										<i class="fa fa-map-marker" aria-hidden="true"></i>
									</div>
									<div class="address-right">
										<h6>Địa Chỉ</h6>
										<p> <c:out value="${infor.diaChi}"></c:out>
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
<%--	<script src="js/minicart.js"></script>--%>
	<script src="js/single.js"></script>
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
	<!-- /nav -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie.js"></script>
	
	<!-- //nav -->
	<!-- single -->
	<script src="js/imagezoom.js"></script>
	<!-- single -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>

	<!-- danh gia -->
		<!-- <script>
				const btn = document.querySelector("button");
				const post = document.querySelector(".post");
				const widget = document.querySelector(".star-widget");
				const editBtn = document.querySelector(".edit");
				btn.onclick = ()=>{
				widget.style.display = "none";
				post.style.display = "block";
				editBtn.onclick = ()=>{
					widget.style.display = "block";
					post.style.display = "none";
				}
				return false;
				}
	  	</script> -->
	<!-- end -->
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
	<!-- FlexSlider -->
	<script src="js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->

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