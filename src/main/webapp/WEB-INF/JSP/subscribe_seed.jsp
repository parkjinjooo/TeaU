<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Subscribe - Seed</title>
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
  <style>
    .header_section {
      background-color: white;
    }
  </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
     <!-- breadcrumb_section - start
        ================================================== -->
      <section class="breadcrumb_section text-uppercase"
        style="background-image: url(assets/images/breadcrumb/seed.jpg);">
        <div class="container">
          <h1 class="page_title text-white wow fadeInUp" data-wow-delay=".1s">씨앗 구독</h1>
          <ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
            <li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
            <li>씨앗 구독</li>
          </ul>
        </div>
        <div class="breadcrumb_icon_wrap">
          <div class="container">
            <div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
              <img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
              <!--지금 커피아이콘 => 씨앗아이콘으로-->
              <span class="bg_shape"></span>
            </div>
          </div>
        </div>
      </section>
      <!-- breadcrumb_section - end
        ================================================== -->

      <!-- reserve_table_section - start
        ================================================== -->
      <section class="reserve_table_section sec_ptb_120">
        <div class="container">
          <div class="reserve_table_form wow fadeInUp" data-wow-delay=".1s">
            <h2 class="form_title text-center text-uppercase" style="font-size: 35px;">원하는 항목을 골라보세요(중복
              가능)</h2>
            <form action="#">
              <div class="row justify-content-center">


                <!--나눠놓은 기준은 행 단위-->
                <div class="col-lg-3"></div>
                <div class="col-lg-3 sub_seed">

                  <input type="checkbox" name="name"> 시원한 맛(민트) </input>
                  <br />
                  <input type="checkbox" name="name"> 떫은맛(마테차) </input>
                  <br />
                  <input type="checkbox" name="name"> 구수한 맛(얼그레이)</input>

                </div>
                <div class="col-lg-3 sub_seed">
                  <input type="checkbox" name="name"> 단맛(오미자차)</input>
                  <br />
                  <input type="checkbox" name="name"> 신맛(히비스커스)</input>
                </div>
                <div class="col-lg-3"></div>


                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                  <hr size="5" noshade>
                </div>
                <div class="col-lg-2"></div>



                <div class="col-lg-3"></div>
                <div class="col-lg-3 sub_seed">
                  <input type="checkbox" name="name"> 카페인</input>
                </div>

                <div class="col-lg-3 sub_seed">
                  <input type="checkbox" name="name"> 디카페인</input>
                </div>
                <div class="col-lg-3"></div>

                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                  <hr size="5" noshade>
                </div>
                <div class="col-lg-2"></div>

                <div class="col-lg-3"></div>
                <div class="col-lg-3 sub_seed">
                  <input type="checkbox" name="name"> 심신안정</input>
                  <br />
                  <input type="checkbox" name="name"> 활력</input>
                </div>

                <div class="col-lg-3 sub_seed">
                  <input type="checkbox" name="name"> 건강</input>
                </div>
                <div class="col-lg-3"></div>




                <!-- <div class="col-lg-12 sub">
                  
                    <input type="checkbox" name="name">카페인 </input>
                    <input type="checkbox" name="name">디카페인</input>
                    <hr size="5" width="50%" noshade>
                  </div>
    
                  <div class="col-lg-12 sub">
                    <input type="checkbox" name="name">심신안정</input>
                    <input type="checkbox" name="name">활력</input>
                    <br/>
                    <input type="checkbox" name="name">건강</input>
                  </div> -->


                <div class="text-center">
                  <br />
                  <br />
                  <br />
                  <button type="submit" class="btn btn_primary text-uppercase">씨앗 구독 신청</button>
                </div>
              </div>
            </form>
            <!--여기 위 부분을 수정-->

            <div class="decoration_icon">
              <img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
              <span class="bg_shape"></span>
            </div>
          </div>
          <div class="reserve_banner_image wow fadeInUp" data-wow-delay=".3s">
            <img src="assets/images/reserve/seed_bottom.jpg" alt="image_not_found">
          </div>
        </div>
      </section>
      <!-- reserve_table_section - end
        ================================================== -->
    </main>
    <!-- main body - end
      ================================================== -->

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>