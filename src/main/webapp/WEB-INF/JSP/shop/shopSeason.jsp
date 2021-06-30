<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!Doctype html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>Our Shop - Cafenod HTML5 Template</title>
	<link rel="shortcut icon" href="assets/images/logo/favourite_icon.png">

	<!-- fraimwork - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

	<!-- icon font - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

	<!-- animation - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/animate.css">

	<!-- carousel - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/slick.css">
	<link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

	<!-- popup - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">

	<!-- jquery-ui - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

	<!-- custom - css include -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">

</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<!-- breadcrumb_section - start
            ================================================== -->
			<section class="breadcrumb_section0919 text-uppercase"
				style="background-position: 70% 40%; background-image: url(./assets/images/breadcrumb/magazine.jpg);">
				<div class="container">
					<h1 class="page_title wow text-white fadeInUp" data-wow-delay=".1s">#계절별 차</h1>
					<ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
						<li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
						<li>Our Shop</li>
					</ul>
				</div>
				<div class="breadcrumb_icon_wrap">
					<div class="container">
						<div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
							<img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
							<span class="bg_shape"></span>
						</div>
					</div>
				</div>
			</section>
			<!-- breadcrumb_section - end
            ==================================================

          gallery_section - start
        ================================================== -->
			<section class="gallery_section sec_ptb_120 bg_default_gray">
				<div class="container" style="max-width:1300px; margin-top: 5%;">
					<!-- 탭-태그 -->
					<ul class="filters-button-group style_4 ul_li_center wow fadeInUp" data-wow-delay=".1s"
						style="margin: 0;">
						<li><button class="button text-uppercase active" data-filter="*">all</button></li>
						<li><button class="button text-uppercase" data-filter=".spring">봄</button></li>
						<li><button class="button text-uppercase" data-filter=".summer">여름</button></li>
						<li><button class="button text-uppercase" data-filter=".fall">가을</button></li>
						<li><button class="button text-uppercase" data-filter=".winter">겨울</button></li>
					</ul>
					<!-- 관리자 로그인 시에만 보임 -->
					<div style="display: flex; align-items: center; margin-top: 20px;">
						<div class="col-md-5 col-lg-5">
						</div>
						<div class="col-md-2 col-lg-2" style="text-align: center;">
							<a class="btn btn_primary text-uppercase" href="shop_create.html">상품 추가</a>
						</div>
						<div class="col-md-5 col-lg-5">
						</div>
					</div>
					<!--상품추가버튼 여기까지-->


					<!-- <div class="row gallery_item_grid grid wow fadeInUp " data-wow-delay=".2s">
   
                        <div class="element-item greentea" data-category="greentea">
                           <div class="gallery_card_item">
                              <a class="item_image" href="#!">
                                 <img src="assets/images/gallery/gallery_img_04.jpg" alt="image_not_found">
                              </a>
                              <div class="item_content" style="padding: 5px;">
                                 <h3 class="item_title">
                                    <a href="#!">
                                       상품명 안 넘치게 하고 싶은데
                                    </a>
                                 </h3>
                              </div>
                           </div>
                              </div> -->

					<!-- 상품목록 -->
					<div class="wrap" style="padding: 1%; ">
						<div class="related_products">
							<h4 class="area_title text-uppercase mb-0 wow fadeInUp" data-wow-delay=".1s">Spring</h4>
							<div class="row">

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                   <a class="item_price bg_default_brown">구매하기</a>
                                                   <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                    black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                   <a class="item_price bg_default_brown">구매하기</a>
                                                   <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                    black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>


								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                   <a class="item_price bg_default_brown">구매하기</a>
                                                   <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                    black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                   <a class="item_price bg_default_brown">구매하기</a>
                                                   <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                    black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 2번째 -->
						<div class="related_products">
							<h4 class="area_title text-uppercase mb-0 wow fadeInUp" data-wow-delay=".1s">Summer</h4>
							<div class="row">

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                <a class="item_price bg_default_brown">구매하기</a>
                                                <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                             </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                 black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                <a class="item_price bg_default_brown">구매하기</a>
                                                <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                             </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                 black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>


								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                <a class="item_price bg_default_brown">구매하기</a>
                                                <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                             </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                 black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                <a class="item_price bg_default_brown">구매하기</a>
                                                <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                             </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                 black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<!-- 3번째 -->
						<div class="related_products">
							<h4 class="area_title text-uppercase mb-0 wow fadeInUp" data-wow-delay=".1s">Fall</h4>
							<div class="row">

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                                        <a class="item_price bg_default_brown">구매하기</a>
                                                                        <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                                     </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                                         black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                                        <a class="item_price bg_default_brown">구매하기</a>
                                                                        <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                                     </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                                         black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>


								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                                        <a class="item_price bg_default_brown">구매하기</a>
                                                                        <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                                     </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                                         black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                                        <a class="item_price bg_default_brown">구매하기</a>
                                                                        <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                                                     </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                                         black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<!-- 4번째 -->
						<div class="related_products">
							<h4 class="area_title text-uppercase mb-0 wow fadeInUp" data-wow-delay=".1s">Winter</h4>
							<div class="row">

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                <a class="item_price bg_default_brown">구매하기</a>
                                                <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                             </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                 black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                <a class="item_price bg_default_brown">구매하기</a>
                                                <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                             </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                 black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>


								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                <a class="item_price bg_default_brown">구매하기</a>
                                                <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                             </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                 black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
										<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
										<a class="item_image" href="shop_details.html">
											<img src="assets/images/shop/img_03.png" alt="image_not_found">
										</a>
										<div class="item_content">
											<h3 class="item_title text-uppercase">
												<a href="shop_details.html">제주 영귤티
											</h3>
											<!-- <div class="btns_group" style="text-align:right">
                                                <a class="item_price bg_default_brown">구매하기</a>
                                                <a class="btn btn_border border_black text-uppercase" href="#!">Add To Cart</a>
                                             </div> -->
											<div>
												<p class="" style="font-size: 1rem; color:
                                                 black; font-weight: bold">8,800원</p></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>


			</section>
			<!-- gallery_section - end
                  ================================================== -->

		</main>
		<!-- main body - end
            ================================================== -->
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>