<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Tea U</title>
  <link rel="shortcut icon" href="assets/images/feature/11.jpg">

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



  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Sacramento&display=swap" rel="stylesheet">   

</head>

<body>

  <!-- body_wrap - strart -->
  <div class="body_wrap">

    <!-- backtotop - start -->
    <div class="backtotop">
      <a href="#" class="scroll">
        <i class="far fa-arrow-up"></i>
        <i class="far fa-arrow-up"></i>
      </a>
    </div>
    <!-- backtotop - end -->

    <!-- preloader - start -->
    <div id="preloader"></div>
    <!-- preloader - end -->

    <!-- header_section - start
      ================================================== -->
    <header class="header_section style_3">
      <div class="content_wrap">
        <div class="container maxw_1720">
          <div class="row align-items-center">

            <div class="col-lg-2 col-md-6 col-6">
              <div class="brand_logo">
                <a class="brand_link" href="index.jsp">
                  <img src="assets/images/logo/TeaU.png"
                    alt="logo_not_found">
                </a>
              </div>
            </div>

            <div class="col-lg-10 col-md-6 col-6">
              <nav class="main_menu navbar navbar-expand-lg">
                <button class="mobile_menu_btn navbar-toggler" type="button" data-bs-toggle="collapse"
                  data-bs-target="#main_menu_dropdown" aria-controls="main_menu_dropdown" aria-expanded="false"
                  aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"><i class="fal fa-bars"></i></span>
                </button>
                <div class="main_menu_inner collapse navbar-collapse" id="main_menu_dropdown">
                  <ul class="main_menu_list ul_li">
                    <li class="active dropdown">
                      <a class="nav-link" href="subscribe_main.do" id="home_submenu">
                        Subscribe
                      </a>
                    </li>
                    <li class="dropdown">
                      <a class="nav-link" href="#" id="portfolio_submenu" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        shop
                      </a>
                      <ul class="submenu dropdown-menu" aria-labelledby="portfolio_submenu">
                        <li><a href="shopSeason.do">#계절</a></li>
                        <li><a href="shopUser.do">#사용자</a></li>
                        <li><a href="shopBlend.do">#베이스</a></li>
                      </ul>
                    </li>
                    <li class="dropdown">
                      <a class="nav-link" href="" id="services_submenu" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        board
                      </a>
                      <ul class="submenu dropdown-menu" aria-labelledby="services_submenu">
                        <li><a href="toBoard.do">씨앗 리뷰</a></li>
                        <li><a href="tbBoard.do">새싹&나무 리뷰</a></li>
                        <li><a href="rankBoard.do">새싹&나무 랭킹</a></li>
                        <li><a href="webapp/WEB-INF/JSP/faq.jsp">F.A.Q.</a></li>
                      </ul>
                    </li>
                    <li class="dropdown">
                      <a class="nav-link" href="magazine.html" id="experience_submenu">
                        Magazine
                      </a>
                    </li>
                    <li>
                      <a class="nav-link" href="tea_finder_detail.html">Tea finder</a>
                    </li>
                  </ul>
                </div>

                <ul class="header_btns_group ul_li_right">
                  <li>
                    <button type="button" class="main_search_btn">
                      <a class="fal fa-user" onclick="myAndLog();" style="color:black;"></a>
                    </button>
                  </li>
                  <li>
                    <button type="button" class="cart_btn">
                      <i class="fal fa-shopping-bag"></i>
                      <small class="cart_counter">2</small>
                    </button>
                  </li>
                  <li>
                    <input type="button" id = "logInOut" class="btn btn_primary text-uppercase" value="LOGIN" onclick="logInOut();"/>
                  </li>
                </ul>
              </nav>
            </div>

          </div>
        </div>
      </div>

      <!-- collapse search - start -->
      <div class="main_search_collapse collapse" id="main_search_collapse">
        <div class="main_search_form card">
          <div class="container maxw_1560">
            <form action="#">
              <div class="form_item">
                <input type="search" name="search" placeholder="Search here...">
                <button type="submit" class="submit_btn"><i class="fal fa-search"></i></button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- collapse search - end -->
    </header>
    <!-- header_section - end
      ================================================== -->

    <!-- main body - start
      ================================================== -->
    <main>

      <!-- cart_sidebar - start
        ================================================== -->
      <div class="sidebar-menu-wrapper">
        <div class="cart_sidebar">
          <button type="button" class="close_btn"><i class="fal fa-times"></i></button>
          <h2 class="heading_title text-uppercase">Cart Items - <span>4</span></h2>

          <div class="cart_items_list">
            <div class="cart_item">
              <div class="item_image">
                <img src="assets/images/recent_post/img_03.jpg" alt="image_not_found">
              </div>
              <div class="item_content">
                <h4 class="item_title">
                  Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                </h4>
                <span class="item_price">$19.00</span>
                <button type="button" class="remove_btn"><i class="fal fa-times"></i></button>
              </div>
            </div>

            <div class="cart_item">
              <div class="item_image">
                <img src="assets/images/recent_post/img_04.jpg" alt="image_not_found">
              </div>
              <div class="item_content">
                <h4 class="item_title">
                  Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                </h4>
                <span class="item_price">$19.00</span>
                <button type="button" class="remove_btn"><i class="fal fa-times"></i></button>
              </div>
            </div>

            <div class="cart_item">
              <div class="item_image">
                <img src="assets/images/recent_post/img_05.jpg" alt="image_not_found">
              </div>
              <div class="item_content">
                <h4 class="item_title">
                  Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                </h4>
                <span class="item_price">$19.00</span>
                <button type="button" class="remove_btn"><i class="fal fa-times"></i></button>
              </div>
            </div>

            <div class="cart_item">
              <div class="item_image">
                <img src="assets/images/recent_post/img_06.jpg" alt="image_not_found">
              </div>
              <div class="item_content">
                <h4 class="item_title">
                  Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                </h4>
                <span class="item_price">$19.00</span>
                <button type="button" class="remove_btn"><i class="fal fa-times"></i></button>
              </div>
            </div>
          </div>
          <div class="total_price text-uppercase">
            <span>Sub Total:</span>
            <span>$76.00</span>
          </div>
          <ul class="btns_group ul_li">
            <li><a href="cart.html" class="btn btn_primary text-uppercase">View Cart</a></li>
            <li><a href="checkout.html" class="btn btn_border border_black text-uppercase">Checkout</a></li>
          </ul>
        </div>
        <div class="cart_sidebar_overlay"></div>
      </div>
      <!-- cart_sidebar - end
        ================================================== -->

      <!-- slider_section - start
        ================================================== -->
      <section class="slider_section slider_light">
        <div class="container maxw_1720 position-relative">
          <div class="main_slider wow fadeInUp"
            style="background-image: url(assets/images/backgrounds/bg_09.png);height:53rem;">
            <div class="slider_item">
              <div class="row align-items-center justify-content-lg-between">
                <div class="col-lg-5">
                  <div class="slider_image">
                  </div>
                </div>
              </div>
              <strong class="big_text text-center" data-animation="fadeInRight" data-delay=".4s">Tea U</strong>
            </div>
          </div>
        </div>
      </section>
      <!-- slider_section - end
        ================================================== -->

  <!-- about_section - start
        ================================================== -->
        <section class="about_section sec_ptb_120">
          <div class="container">
            <div class="row align-items-center justifytent-lg-between">
              <div class="col-lg-6 col-md-6 order-last">
                <div class="about_image1 wow fadeInRight" data-wow-delay=".1s">
                  <img src="assets/images/finder/2.jpg" alt="image_not_found">
                </div>
              </div>
              <div class="col-lg-6 col-md-6">
                <div class="about_content">
                  <div class="section_title text-uppercase">
                    <h2 class="small_title wow fadeInUp" data-wow-delay=".1s"><i class="fas fa-coffee"></i> Tea finder</h2>
                    <h3 class="big_title wow fadeInUp" data-wow-delay=".2s">
                      티 파인더로 차 취향을 찾아보세요!
                    </h3>
                  </div>
                  <p class="wow fadeInUp" data-wow-delay=".3s">
                    취향을 파악해서 딱 맞는 차를 추천해드릴게요
                  </p>
                  <ul class="about_info ul_li_block">
                    <li class="wow fadeInUp" data-wow-delay=".4s">
                      <h4 class="text-uppercase"><i class="fas fa-check"></i>평소에 물을 많이 마시는 편인가요? </h4>
                      <p class="mb-0">
                        분위기 있게 즐길 수 있는 차를 추천해드릴게요. <br>
                      </p>
                    </li>
                    <li class="wow fadeInUp" data-wow-delay=".5s">
                      <h4 class="text-uppercase"><i class="fas fa-check"></i>물 대신 마실 차를 찾으시나요?</h4>
                      <p class="mb-0"> 
                        심심한 물 대신 마실 수 있는 향긋하고 고소한 각양각색의 차를 갖추고 있답니다.
                      </p>
                    </li>
                  </ul>
                  <ul class="btns_group ul_li_center" data-wow-delay=".6s">
                    <li>
                      <a class="btn btn_primary" href="tea_finder_detail.html">티 파인더</a>
                    </li>
                    <li>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          
        </section>
        <!-- about_section - end
              ================================================== -->

  <!-- introduce_section - start
        ================================================== -->
  <section class="testimonial_section sec_ptb_120 deco_wrap">
    <div class="container">
      <div class="testimonial_slider wow fadeInUp" data-wow-delay=".2s">
        <div class="testimonial_item_1 slider_item">
          <div class="row align-items-center">
            <div class="col-lg-6">
              <div class="item_image">
                <img src="assets/images/testimonial/img_03.jpg" alt="image_not_found">
                <div class="quote_icon">
                  <!-- <img src="assets/images/testimonial/icon_01.png" alt="image_not_found"> -->
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="item_content">
                <div class="section_title text-uppercase">
                  <h3 class="small_title"><i class="fas fa-coffee"></i> Introduce</h3>
                  <h4 class="big_title">
                    취향에 맞는 차로 <br>힐링하세요.
                  </h4>
                </div>
                <p>                 
                  이제 무엇을 마셔야 하나? 고민하지마세요.<br>
                  40여 가지 다양한 차를 내 취향에 맞게 매 달 선물받는 기분을 느껴보세요:) <br>
                  <br>
                  저희 Tea U는 구독서비스를 이용해 취향에 맞는 차들을 매달 랜덤키트에 담아 받아보실수 있습니다.<br>
                  평소 물 마시기 어려운 분이나 맹물 맛을 좋아하지 않는 분들을 위해 다양한 차를 준비하여 
                  단계별 구독 시스템을 통해 차의 맛과 깊이를 알아갈 수 있게 준비했습니다!
                </p>
                <div class="testimonial_admin text-uppercase">
                  <h5 class="admin_name">힐링이 필요할 땐</h5>
                  <span class="admin_title">Tea U</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="deco_item thumbnail_1 wow fadeInUp" data-wow-delay=".1s">
      <img src="assets/images/testimonial/thumbnail_03.png" alt="image_not_found">
    </div>
    <div class="deco_item thumbnail_2 wow fadeInUp" data-wow-delay=".2s">
      <img src="assets/images/testimonial/thumbnail_03.png" alt="image_not_found">
    </div>
    <div class="deco_item thumbnail_3 wow fadeInUp" data-wow-delay=".3s">
      <img src="assets/images/testimonial/thumbnail_03.png" alt="image_not_found">
    </div>
    <div class="deco_item thumbnail_4 wow fadeInUp" data-wow-delay=".4s">
      <img src="assets/images/testimonial/thumbnail_03.png" alt="image_not_found">
    </div>
  </section>
  <!-- testimonial_section - end
        ================================================== -->
  </main>
  <!-- main body - end
      ================================================== -->

  <!-- footer_section - start
      ================================================== -->
  <footer class="footer_section">
    <div class="footer_widget_area" >
      <div class="container">
      

        <div class="row justify-content-lg-between">
          <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="footer_widget footer_about wow fadeInUp" data-wow-delay=".1s">
              <div class="brand_logo">
                <a class="brand_link" href="index.html">
                  <img src="assets/images/logo/TeaU.png" srcset="assets/images/logo/logo_black_2x.png 2x"
                    alt="logo_not_found">
                </a>
              </div>

              <ul class="social_links social_icons ul_li">
                <li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="https://twitter.com/?lang=ko" target="_blank"><i class="fab fa-twitter"></i></a></li>
                <li><a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a></li>
                <li><a href="https://www.youtube.com/" target="_blank"><i class="fab fa-youtube"></i></a></li>
              </ul>
            </div>
          </div>

          <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="footer_widget footer_contact wow fadeInUp" data-wow-delay=".2s">
              <h3 class="footer_widget_title text-uppercase">Contact us</h3>
              <ul class="ul_li_block">
                <li><strong class="text-uppercase">Adress:</strong> 8638 Amarica Stranfod Mailbon Star</li>
                <li><strong class="text-uppercase">Mail:</strong> Israfilsupol836@gmail.com</li>
              </ul>
            </div>
          </div>
          <div class="col-lg-6 col-md-4 col-sm-6">
            <div class="footer_widget footer_recent_post wow fadeInUp" data-wow-delay=".4s">
              <h3 class="footer_widget_title text-uppercase" id="footerc">RECENT MAGAZINE</h3>

              <div class="recent_post" >
                <a class="item_image" href="magazine.html">
                  <img src="assets/images/blog/2.jpg" alt="image_not_found"  style="width: 75px; height: 75px;" > 
                </a>
                <div class="item_content">
                  <h4 class="item_title">
                    <a href="magazine.html" style="font-size: 11px;">차를 맛있게 마시는 방법들!</a>
                  </h4>
                  <span class="post_date text-uppercase">December 30 - 2021</span>
                </div>
              </div>

              <div class="recent_post">
                <a class="item_image" href="magazine.html">
                  <img src="assets/images/blog/1.jpg" alt="image_not_found"  style="width: 75px; height: 75px;">
                </a>
                <div class="item_content">
                  <h4 class="item_title">
                    <a href="magazine.html" style="font-size: 11px;">블렌딩이란?</a>
                  </h4>
                  <span class="post_date text-uppercase">Nobember 30 - 2021</span>
                </div>
              </div>


            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="footer_bottom text-center">
      <div class="container">
        <p class="copyright_text mb-0">Copyright@ 2021 Desing by <a
            href="https://themeforest.net/user/xpressrow">Girl's Main</a></p>
      </div>
    </div>
  </footer>
  <!-- footer_section - end
      ================================================== -->

  </div>
  <!-- body_wrap - end -->

  <!-- fraimwork - jquery include -->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>

  <!-- animation - jquery include -->
  <script src="assets/js/wow.min.js"></script>

  <!-- carousel - jquery include -->
  <script src="assets/js/slick.min.js"></script>

  <!-- popup - jquery include -->
  <script src="assets/js/magnific-popup.min.js"></script>

  <!-- isotope filter - jquery include -->
  <script src="assets/js/isotope.pkgd.min.js"></script>

  <!-- google map - jquery include -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk2HrmqE4sWSei0XdKGbOMOHN3Mm2Bf-M&ver=2.1.6"></script>
  <script src="assets/js/gmaps.min.js"></script>

  <!-- jquery-ui - jquery include -->
  <script src="assets/js/jquery-ui.js"></script>

  <!-- off canvas sidebar - jquery include -->
  <script src="assets/js/mCustomScrollbar.js"></script>

  <!-- custom - jquery include -->
  <script src="assets/js/main.js"></script>
  
  
<script src = "assets/js/com_lib.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type = "text/javascript">
$(document).ready(function(){
	getMemberInfo();
});

	
let id ='';
function sessionCheck(obj) {
	if(obj["member"]!= null){
	    id = obj["member"].memberId;
	}else{
		id = null;
	}
	console.log(id);
	logText(id);
}

function logText(id){
	if(id == null){
		$('#logInOut').val("LOGIN");
	}else{
		$('#logInOut').val("LOGOUT");
	}
}

function logInOut(){
	if(id == null){
		location.href="login.do";
	}else{
		location.href="logout.do";
	}
}

function myAndLog(){
	if(id == null){
		location.href="login.do";
	}else{
		location.href="mypage.do";
	}
}

</script>
</body>
</html>