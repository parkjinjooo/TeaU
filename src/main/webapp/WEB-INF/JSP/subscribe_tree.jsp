<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Subscribe - Tree</title>
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
  <link rel="stylesheet" type="text/css" href="assets/css/teau.css">


</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <!-- breadcrumb_section - start
        ================================================== -->
      <section class="breadcrumb_section text-uppercase"
        style="background-image: url(assets/images/breadcrumb/tree.jpg);">
        <div class="container">
          <h1 class="page_title text-white wow fadeInUp" data-wow-delay=".1s">나무 구독</h1>
          <ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
            <li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
            <li>나무 구독</li>
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
      <section class="reserve_table_section sec_ptb_120 bg-grey">
        <div id="sub_tree" class="container">
          <div class="reserve_table_form wow fadeInUp bg-white" style="padding-left: 0px; padding-right: 0px;"
            data-wow-delay=".1s">
            <div class="subcribe_title">
              <h2 class="form_title text-center text-uppercase" style="font-size: 35px;">원하는 항목을 골라보세요(중복가능)</h2>
            </div>

            <div class="row justify-content-center">
              <div id="tt_base" class="sub_tree">
                <p class="sub_tree_title">베이스 선택</p>

                <div class="list_wrap">
                  <ul>
                    <li class="tt_goods tt_base">
                      <label for="chk1">
                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 녹차 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_1.png" alt="[상품명]세작" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="1[상품고유번호]" name="tt_name" id="chk1">
                            <p class="tt_name"> 세작</p> </input>
                            <p class="tt_explain">어린잎을 덖어 만든 푸릇하고 깔끔한 풀맛 녹차 </p>
                          </div>
                      </label>
                    </li>
                    <li class="tt_goods">
                      <label>
                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 녹차</span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_2.png" alt="호지차" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="2[상품고유번호]" name="tt_name" id="chk2">
                            <p class="tt_name"> 호지차 </p></input>
                            <p class="tt_explain"> 찻잎을 볶아 만든 고소한 맛과 풍부한 향 </p>
                          </div>
                      </label>
                    </li>
                    <li class="tt_goods">
                      <label>
                        <div>
                          <div class="tt_cate">
                            <span> 반발효차</span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_3.png" alt="백차" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="3[상품고유번호]" name="tt_name">
                            <p class="tt_name">백차</p> </input>
                            <p class="tt_explain"> 산뜻한 맛과 향 </p>
                          </div>
                      </label>
                    </li>

                    <li class="tt_goods">
                      <label>
                        <div>
                          <div class="tt_cate">
                            <span>반발효차</span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_4.png" alt="우롱차" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="4[상품고유번호]" name="tt_name">
                            <p class="tt_name">우롱차</p></input>
                            <p class="tt_explain"> 부드러운 향기 </p>
                          </div>
                      </label>
                    </li>

                    <li class="tt_goods">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>홍차</span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_5.png" alt="홍차" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="5[상품고유번호]" name="tt_name">
                            <p class="tt_name">아쌈</p> </input>
                            <p class="tt_explain"> 진한 맛과 맥아향 <br> ☆밀크티 추천 </p>
                          </div>
                      </label>
                    </li>

                    <li class="tt_goods">
                      <label>
                        <div>
                          <div class="tt_cate">
                            <span>홍차</span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_6.png" alt="홍차" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="6[상품고유번호]" name="tt_name">
                            <p class="tt_name">실론</p></input>
                            <p class="tt_explain">[상세설명 출력위치] </p>
                          </div>
                      </label>
                    </li>

                    <li class="tt_goods">
                      <label>
                        <div>
                          <div class="tt_cate">
                            <span>홍차</span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_7.png" alt="홍차" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="7[상품고유번호]" name="tt_name">
                            <p class="tt_name">보이차</p></input>
                            <p class="tt_explain">[상세설명 출력위치] </p>
                          </div>
                      </label>
                    </li>

                    <li class="tt_goods">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>홍차</span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_8.png" alt="홍차" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="8[상품고유번호]" name="tt_name">
                            <p class="tt_name">루이보스</p></input>
                            <p class="tt_explain">[상세설명 출력위치] </p>
                          </div>
                      </label>
                    </li>
                  </ul>
                </div>
              </div>


              <div id="tt_blend" class="sub_tree tt_blend">
                <p class="sub_tree_title">블렌딩 선택</p>

                <div class="list_wrap">
                  <ul>
                    <li class="tt_goods tt_base">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 허브 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_9.png" alt="[상품명]세이지" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="9" name="tt_name">
                            <p class="tt_name"> 세이지</p> </input>
                            <p class="tt_explain">어린잎을 덖어 만든 푸릇하고 깔끔한 풀맛 녹차 </p>
                          </div>
                      </label>
                    </li>
                    <li class="tt_goods">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 허브 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_10.png" alt="로즈마리" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="10" name="tt_name">
                            <p class="tt_name"> 로즈마리 </p></input>
                            <p class="tt_explain"> 찻잎을 볶아 만든 고소한 맛과 풍부한 향 </p>
                          </div>
                      </label>
                    </li>
                    <li class="tt_goods">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 허브 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_11.png" alt="레몬밤" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="11" name="tt_name">
                            <p class="tt_name"> 레몬밤 </p></input>
                            <p class="tt_explain"> 설명 </p>
                          </div>
                      </label>
                    </li>
                    <li class="tt_goods">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 허브 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_12.png" alt="레몬밤" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="12" name="tt_name">
                            <p class="tt_name"> 레몬그라스 </p></input>
                            <p class="tt_explain"> 설명 </p>
                          </div>
                      </label>
                    </li>
                    <li class="tt_goods">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 허브 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_13.png" alt="레몬밤" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="13" name="tt_name">
                            <p class="tt_name"> 페퍼민트 </p></input>
                            <p class="tt_explain"> 설명 </p>
                          </div>
                      </label>
                    </li>
                    <li class="tt_goods">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 허브 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_14.png" alt="레몬밤" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="14" name="tt_name">
                            <p class="tt_name"> 로즈힙 </p></input>
                            <p class="tt_explain"> 설명 </p>
                          </div>
                      </label>
                    </li>
                    <li class="tt_goods">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 허브 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_15.png" alt="레몬밤" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="15" name="tt_name">
                            <p class="tt_name"> 스테비아 </p></input>
                            <p class="tt_explain"> 설명 </p>
                          </div>
                      </label>
                    </li>
                    <li class="tt_goods">
                      <label>

                        <div>
                          <div class="tt_cate">
                            <span>[카테출력] 허브 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_16.png" alt="레몬밤" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="16" name="tt_name">
                            <p class="tt_name"> 허니부쉬 </p></input>
                            <p class="tt_explain"> 설명 </p>
                          </div>
                      </label>
                    </li>
                  </ul>
                </div>
              </div>

              
              <div id="tt_blend" class="sub_tree tt_add">
                <p class="sub_tree_title">추가 선택</p>
              
                <div class="list_wrap">
                  <ul>
                    <li class="tt_goods tt_base">
                      <label>
                        <div>
                          <div class="tt_cate">
                            <span> 부자재 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_49.png" alt="[상품명]" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="49" name="tt_name">
                            <p class="tt_name"> 틴케이스(2개) </p> </input>
                            <p class="tt_price">[가격출력] 5,000원 </p>
                          </div>
                      </label>
                    </li>
              
                    <li class="tt_goods tt_base">
                      <label>
                        <div>
                          <div class="tt_cate">
                            <span> 부자재 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_50.png" alt="[상품명]" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="50" name="tt_name">
                            <p class="tt_name"> 티백 </p> </input>
                            <p class="tt_price">[가격출력] 5,000원 </p>
                          </div>
                      </label>
                    </li>
              
                    <li class="tt_goods tt_base">
                      <label>
                        <div>
                          <div class="tt_cate">
                            <span> 부자재 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_51.png" alt="[상품명]" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="51" name="tt_name">
                            <p class="tt_name"> 은박포장지 </p> </input>
                            <p class="tt_price">[가격출력] 1,000원 </p>
                          </div>
                      </label>
                    </li>
                  </ul>
                </div>

                <div id="tt_req" class="sub_tree">
                  <p class="sub_tree_title">요청사항</p>
                  <p>알레르기 여부 등 요청사항이 있으면 작성해주세요.</p>
                <div>
                  <textarea placeholder=""" name="tt_req" value="" required> </textarea>
                </div>
              </div>

              <div class="text-center">
                <br />
                <br />
                <br />
                <button type="submit" class="btn btn_primary text-uppercase">나무 구독 신청</button>
              </div>
            </div>

            <!--여기 위 부분을 수정-->

            <div class="decoration_icon">
              <img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
              <span class="bg_shape"></span>
            </div>
          </div>
          <div class="reserve_banner_image wow fadeInUp" data-wow-delay=".3s">
            <img src="assets/images/reserve/tree_bottom.jpg" alt="image_not_found">
          </div>
        </div>
      </section>
      <!-- reserve_table_section - end
        ================================================== -->
    </main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>