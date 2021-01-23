<%@ page import="java.util.List" %>
<%@ page import="beans.Product" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>DYB Áo</title>
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
	<link rel="stylesheet" href="css/menuShop.css">
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Owl-carousel-CSS -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
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
					</c:if>
				</div>
			</div>
		</div>

		<div class="services-breadcrumb_w3ls_agileinfo">
			<div class="inner_breadcrumb_agileits_w3">

				<ul class="short">
					<li >Trang Chủ<i>|</i></li>
					<c:if test="${checklink == true}">
					<li >Tìm kiếm</li>
					</c:if>
					<c:if test="${checklink == false}">
						<li >${menuSingle.name}</li>
					</c:if>
				</ul>
			</div>
		</div>
		<!-- //banner_inner -->
	</div>

	<!-- //banner -->
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<!-- tittle heading -->

			<!-- //tittle heading -->
			<!-- product left -->
			<div class="side-bar col-md-3">
				<div class="search-hotel">
					<h3 class="agileits-sear-head">Tìm Kiếm </h3>
						<form action="${pageContext.request.contextPath}/search?action=search&id=${menuSingle.id}&page=1" method="post">
						<input type="search" placeholder="Tên Sản Phẩm..." name="search" required="" value="${searchRep}">
						<input type="submit" value=" ">
					</form>
				</div>
				<!-- price range -->
				<div class="range">
					<h3 class="agileits-sear-head">Lọc Giá</h3>
					<form action="${pageContext.request.contextPath}/search?action=fill-price&id=${menuSingle.id}&search-rep=${searchRep}&page=1" method="post">
				<div class="content">
					<div class="input">
						<input type="number" class="tu" placeholder="₫ TỪ" name="priceStart" value="${priceS}">
					</div>
					<div class="input1">
						<input type="number" class="den" placeholder="₫ ĐẾN" name="priceEnd" value="${priceE}">
					</div>
				</div>
				<div class="apdung">
					<button type="submit" class="button">ÁP DỤNG</button>
				</div>
					</form>
				</div>
				<!-- //price range -->
				<!--preference -->
				<div class="left-side">
					<c:if test="${menuSingle.id == 5}">
					<h3 class="agileits-sear-head">Tất Cả</h3>
					</c:if>
					<c:if test="${menuSingle.id != 5}">
					<h3 class="agileits-sear-head">${menuSingle.name}</h3>
					</c:if>
					<ul>
						<c:forEach items="${listCate}" var="m">
							<a href="${pageContext.request.contextPath}/search?action=fillter-cate&id=${menuSingle.id}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${m.id}&page=1">
								<li>
									<c:if test="${idCate == m.id}">
										<span class="span active">${m.name}</span>
									</c:if>
									<c:if test="${idCate != m.id}">
									<span class="span">${m.name}</span>
									</c:if>
								</li>
							</a>
						</c:forEach>

					</ul>
				</div>
				<div class="customer-rev left-side">
					<h3 class="agileits-sear-head">Đánh Giá</h3>
					<ul>
						<c:forEach var="m" begin="1" end="5">
						<li>
							<a href="${pageContext.request.contextPath}/search?action=evaluate&id=${menuSingle.id}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${6-m}&page=1">
								<c:forEach begin="1" end="${6 - m}">
								<i class="fa fa-star" aria-hidden="true"></i>
								</c:forEach>
								<c:if test="${m>0}">
									<c:forEach begin="1" end="${m - 1}">
										<i class="fa fa-star-o" aria-hidden="true"></i>
									</c:forEach>
								</c:if>
								<span>${6-m}.0</span>
							</a>
						</li>
						</c:forEach>

					</ul>
				</div>
				</div>
			<!-- //product left -->
			<!-- product right -->
			<div class="left-ads-display col-md-9">
				<div class="wrapper_top_shop">

					<div class="clearfix"></div>
					<!-- product-sec1 -->
					<div class="product-sec1">
						<!--/mens-->
						<c:if test="${listPro.size() == 0}">
							<div class="not-find">
							<h4 class="not-find-pro">Không tìm thấy sản phẩm nào</h4>
								<h4 class="key-not-find">Hãy thử sử dụng các từ khóa chung chung hơn</h4>
							</div>
						</c:if>
						<c:forEach items="${listPro}" var="m" varStatus="loop">
									<div class="col-md-4 product-men women_two">
										<div class="product-shoe-info shoe">
											<div class="men-pro-item">
												<div class="men-thumb-item">
													<img src="${m.splitStrImg()[0]}" alt="">

													<div class="men-cart-pro">
														<div class="inner-men-cart-pro">
															<a href="${pageContext.request.contextPath}/single?action=detail&id=${m.id}" class="link-product-add-cart">Xem Chi Tiết</a>
														</div>
													</div>

													<!-- <span class="product-new-top">New</span> -->
												</div>
												<div class="item-info-product">
													<h4>
														<a href="${pageContext.request.contextPath}/single?action=detail&id=${m.id}">${m.name}</a>
													</h4>
													<div class="info-product-price">
														<div class="grid_meta">
															<div class="product_price">
																<div class="grid-price ">
																	<c:if test="${m.giamgia == 1 }">
																	<span class="money ">${m.currentFormatGia()}₫</span>
																	</c:if>
																	<c:if test="${m.giamgia != 1 }">
																		<span class="money "></span><br>
																	</c:if>
																</div>
															</div>

															<div class="grid-price ">
																<c:if test="${m.giamgia != 1}">
																<span class="moneySave ">${m.currentFormatGia()}₫</span>
																</c:if>
																<c:if test="${m.giamgia == 1}">
																	<span class="moneySave ">${m.currentFormatGiaKM()}₫</span>
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
<%--														<div class="shoe single-item hvr-outline-out">--%>
<%--															<form action="#" method="post" class="submit-pro">--%>
<%--																<input type="hidden" name="cmd" value="_cart">--%>
<%--																<input type="hidden" name="add" value="1">--%>
<%--																<input type="hidden" name="shoe_item" value="${m.name}">--%>
<%--																<c:if test="${m.giamgia == 1}">--%>
<%--																	<input type="hidden" name="amount" value="${m.giaKM}">--%>
<%--																</c:if>--%>

<%--																<c:if test="${m.giamgia != 1}">--%>
<%--																<input type="hidden" name="amount" value="${m.gia}">--%>
<%--																</c:if>--%>
<%--																<button type="submit" class="shoe-cart pshoe-cart submit-cart" data-dataid="${m.id}" ><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--%>
<%--															</form>--%>
<%--														</div>--%>
													</div>
													<div class="clearfix"></div>
												</div>

											</div>
										</div>
									</div>


						</c:forEach>
						<c:if test="${listPro.size() != 0}">
							<nav aria-label="Page navigation example">

								<ul class="pagination">
								  <li class="page-item">
									  		<c:choose>
												<c:when test="${checklink == true}">
													<c:choose>
																<c:when test="${pageStart == 1}">
																	<a class="page-link" href="${pageContext.request.contextPath}/search?action=search-page&id=${menuSingle.id}&page=${pageStart}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${eva}" aria-label="Previous">
																</c:when>

																<c:when test="${pageStart != 1}">
																	<a class="page-link" href="${pageContext.request.contextPath}/search?action=search-page&id=${menuSingle.id}&page=${pageStart - 1}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${eva}" aria-label="Previous">
																</c:when>

														</c:choose>
												</c:when>

													<c:when test="${checklink == false}">
																		<c:choose>
																		<c:when test="${pageStart == 1}">
																			<a class="page-link" href="${pageContext.request.contextPath}/listproducts?action=returns&id=${menuSingle.id}&page=${pageStart}" aria-label="Previous">
                                                                                </c:when>
                                                                                <c:when test="${pageStart != 1}">
																					<a class="page-link" href="${pageContext.request.contextPath}/listproducts?action=returns&id=${menuSingle.id}&page=${pageStart - 1}" aria-label="Previous">
                                                                                        </c:when>
																	</c:choose>
													</c:when>
											</c:choose>
											  <span aria-hidden="true">&laquo;</span>
										  <span class="sr-only">Previous</span>
										</a>
									  </li>

									<c:set var="i" value="${pageNumber}"></c:set>

<%--										 nếu trang đang chọn == số lượng trang--%>
										<c:if test="${pageStart == i}">
													<c:choose>

<%--														 nếu là trang tìm kiếm--%>
														<c:when test="${checklink == true}">
														<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/search?action=search-page&id=${menuSingle.id}&page=${pageStart}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${eva}">${pageStart}</a></li>
														</c:when>

<%--														 nếu không là trang tìm kiếm--%>
														<c:when test="${checklink == false}">
															<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/listproducts?action=returns&id=${menuSingle.id}&page=${pageStart}">${pageStart}</a></li>
														</c:when>

													</c:choose>

										</c:if>

										<c:if test="${pageStart != i}">
											<c:choose>

<%--												 nếu không là trang tìm kiếm--%>
												<c:when test="${checklink == false}">

<%--													 nếu chỉ mục 3 trang tiếp theo < tổng số trang--%>
													<c:if test="${(pageStart + 3) < i }">
														<c:forEach var="m" begin="${pageStart}" end="${pageStart + 3}">
                                                            <c:if test="${pageStart == m}">
															<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/listproducts?action=returns&id=${menuSingle.id}&page=${m}">${m}</a></li>
                                                            </c:if>
                                                            <c:if test="${pageStart != m}">
                                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/listproducts?action=returns&id=${menuSingle.id}&page=${m}">${m}</a></li>
                                                            </c:if>
                                                        </c:forEach>
													</c:if>

<%--													nếu chỉ mục 3 trang tiếp theo >= tổng số trang--%>
													<c:if test="${(pageStart + 3) >= i}">
														<c:forEach var="m" begin="${pageStart}" end="${i}">
<%--                                                            vị trí đang chọn thì set màu khác--%>
                                                            <c:if test="${pageStart == m}">
															<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/listproducts?action=returns&id=${menuSingle.id}&page=${m}">${m}</a></li>
                                                            </c:if>
                                                            <c:if test="${pageStart != m}">
                                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/listproducts?action=returns&id=${menuSingle.id}&page=${m}">${m}</a></li>
                                                            </c:if>
                                                        </c:forEach>
													</c:if>
												</c:when>

<%--												là trang tìm kiếm--%>
												<c:when test="${checklink == true}">

<%--													nếu chỉ mục 3 trang tiếp theo < tổng số trang--%>
													<c:if test="${(pageStart + 3) < i }">
														<c:forEach var="m" begin="${pageStart}" end="${pageStart + 3}">
															<c:if test="${pageStart == m}">
															<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/search?action=search-page&id=${menuSingle.id}&page=${m}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${eva}">${m}</a></li>
															</c:if>
															<c:if test="${pageStart != m}">
																<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/search?action=search-page&id=${menuSingle.id}&page=${m}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${eva}">${m}</a></li>
															</c:if>
														</c:forEach>
													</c:if>

<%--													nếu chỉ mục 3 trang tiếp theo >= tổng số trang--%>
													<c:if test="${(pageStart + 3) >= i}">
														<c:forEach var="m" begin="${pageStart}" end="${i}">
															<c:if test="${pageStart == m}">
															<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/search?action=search-page&id=${menuSingle.id}&page=${m}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${eva}">${m}</a></li>
															</c:if>
															<c:if test="${pageStart != m}">
																<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/search?action=search-page&id=${menuSingle.id}&page=${m}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${eva}">${m}</a></li>
															</c:if>
														</c:forEach>
													</c:if>
												</c:when>

											</c:choose>

										</c:if>
								  <li class="page-item">


                                      <c:choose>
                                        <c:when test="${checklink == true}">
                                         <c:choose>
                                             <c:when test="${pageStart == i}">
                                                 <a class="page-link" href="${pageContext.request.contextPath}/search?action=search-page&id=${menuSingle.id}&page=${i}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${eva}" aria-label="Next">
                                          </c:when>

                                            <c:when test="${pageStart != i}">
                                                <a class="page-link" href="${pageContext.request.contextPath}/search?action=search-page&id=${menuSingle.id}&page=${pageStart + 1}&search-rep=${searchRep}&priceStart=${priceS}&priceEnd=${priceE}&idCateSelected=${idCate}&eva=${eva}" aria-label="Next">
                                              </c:when>

                                                    </c:choose>
                                              </c:when>

                                              <c:when test="${checklink == false}">
                                              <c:choose>
                                              <c:when test="${pageStart == i}">
                                              <a class="page-link"
                                                 href="${pageContext.request.contextPath}/listproducts?action=returns&id=${menuSingle.id}&page=${i}"
                                                 aria-label="Next">
                                                  </c:when>
                                                  <c:when test="${pageStart != i}">
                                                  <a class="page-link"
                                                     href="${pageContext.request.contextPath}/listproducts?action=returns&id=${menuSingle.id}&page=${pageStart + 1}"
                                                     aria-label="Next">
                                                      </c:when>
                                                      </c:choose>
                                                      </c:when>
                                                      </c:choose>
									  <span aria-hidden="true">&raquo;</span>
									  <span class="sr-only">Next</span>
									</a>
								  </li>
							   </ul>

							 </nav>
						</c:if>
						<!-- //mens -->
						<div class="clearfix"></div>

					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
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
								<div class="thumbnail"><a href="single.html  "><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></a></div>
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
<%--				<div class="carousel-inner" role="listbox">--%>
<%--					<div class="item active">--%>

<%--						<div class="row">--%>
<%--							<c:forEach  var="m" begin="0" end="3">--%>
<%--								<div class="col-md-3 col-sm-3 col-xs-3 slidering">--%>
<%--									<div class="thumbnail"><a href="${pageContext.request.contextPath}/single?action=detail&id=${other[m].idPro}"><img src="${other[m].img}" alt="Image" style="max-width:100%;"></a></div>--%>
<%--								</div>--%>
<%--							</c:forEach>--%>

<%--						</div>--%>
<%--					</div>--%>
<%--					<div class="item">--%>
<%--						<div class="row">--%>
<%--							<c:forEach  var="m" begin="4" end="7">--%>
<%--								<div class="col-md-3 col-sm-3 col-xs-3 slidering">--%>
<%--									<div class="thumbnail"><a href="${pageContext.request.contextPath}/single?action=detail&id=${other[m].idPro}"><img src="${other[m].img}" alt="Image" style="max-width:100%;"></a></div>--%>
<%--								</div>--%>
<%--							</c:forEach>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--					<div class="item">--%>
<%--						<div class="row">--%>
<%--							<c:forEach  var="m" begin="8" end="11">--%>
<%--								<div class="col-md-3 col-sm-3 col-xs-3 slidering">--%>
<%--									<div class="thumbnail"><a href="${pageContext.request.contextPath}/single?action=detail&id=${other[m].idPro}"><img src="${other[m].img}" alt="Image" style="max-width:100%;"></a></div>--%>
<%--								</div>--%>
<%--							</c:forEach>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--					<div class="item">--%>
<%--						<div class="row">--%>
<%--							<c:forEach  var="m" begin="12" end="15">--%>
<%--								<div class="col-md-3 col-sm-3 col-xs-3 slidering">--%>
<%--									<div class="thumbnail"><a href="${pageContext.request.contextPath}/single?action=detail&id=${other[m].idPro}"><img src="${other[m].img}" alt="Image" style="max-width:100%;"></a></div>--%>
<%--								</div>--%>
<%--							</c:forEach>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--				</div>--%>
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
	<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
<%--	<script src="js/minicart.js"></script>--%>
	<script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- /nav -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie.js"></script>
	<%--Send value product to cart--%>
	<!-- //nav -->
	<!--search-bar-->
	<script src="js/search.js"></script>
	<!--//search-bar-->
	<!-- price range (top products) -->
	<script src="js/jquery-ui.js"></script>

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


</body>

</html>