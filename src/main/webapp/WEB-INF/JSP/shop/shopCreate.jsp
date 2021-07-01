<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>상품추가</title>
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
    <style>
        .header_section {
            background-color: white;
        }
    </style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
    <!-- contact_section - start
        ================================================== -->
            <section class="contact_section sec_ptb_120 bg_default_gray">
                <div class="container">
                    <div class="contact_form bg_white wow fadeInUp" style="margin-top: 100px;" data-wow-delay=".1s">

                        <form action="insertShop.do" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="form_item">
                                        <h1>추가할 상품의 정보를 적어주세요.</h1>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form_item">

                                    </div>
                                </div>
                            </div>
                            <div>
                                <input type="radio" id="TO" name="orderCate" value="TO" checked>
                                <label for="TO">오리지널티</label>
                            </div>
                            <div>
                                <input type="radio" id="TB" name="orderCate" value="TB">
                                 <label for="TB">블렌딩티</label>
                            </div>
                            <div class="form_item">
                                <input type="text" name="teaName" placeholder="차 이름을 적어주세요" required>
                            </div>
                            <div class="form_item">
                                <textarea name="teaInfo" placeholder="상품 소개글을 적어주세요 :" required></textarea>
                            </div>
                            <div class="form_item">
                                <input type="text" name="teaPrice" placeholder="차 가격을 적어주세요" required>
                            </div>
                            
                            <h6> 베이스 선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagBase" value="HERB" > HERB</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagBase" value="GREEN" > GREEN</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagBase" value="BLACK" > BLACK</label>
                            </div>
                            <br>
                            
                            <h6> 카페인 선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagCaff" value="카페인" > 카페인</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagCaff" value="디카페인" > 디카페인</label>
                            </div>
                            <br>
                            
                            <h6> 계절별 선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagSeason" value="봄" > 봄</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagSeason" value="여름" > 여름</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagSeason" value="가을" > 가을</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagSeason" value="겨울" > 겨울</label>
                            </div>
                            <br>
                            
                            <h6> 사용자별  선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagUser" value="학생" > 학생</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagUser" value="직장인" > 직장인</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagUser" value="임산부" > 임산부</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagUser" value="어르신" > 어르신</label>
                            </div>
                            <br>
                            
                             <h6> 사용자별  선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="시원한맛" > 시원한맛</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="떫은맛" > 떫은맛</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="구수한맛" > 구수한맛</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="단맛" > 단맛</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="신맛" > 신맛</label>
                            </div>
                            <br>
                            
                            <h6> 효능  선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagEff" value="심신안정" > 심신안정</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagEff" value="활력" > 활력</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagEff" value="건강" > 건강</label>
                            </div>
                            <br>
                            
                            <h6> 효능  선택 </h6>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="꽃" > 꽃</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="과일" > 과일</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="시나몬" > 시나몬</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="초콜렛&과자" > 초콜렛&과자</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="믹스" > 믹스</label>
                            </div>
                            <br>
                            
                            <h6> 효능  선택 </h6>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="꽃" > 꽃</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="과일" > 과일</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="시나몬" > 시나몬</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="초콜렛&과자" > 초콜렛&과자</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="믹스" > 믹스</label>
                            </div>
                            <br>
                            
                             <h6> 효능  선택 </h6>
                            <div>
                            <label><input type="checkbox" name="tagDrink" value="아이스티" > 아이스티</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagDrink" value="밀크티" > 밀크티</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagDrink" value="핫티" > 핫티</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagDrink" value="식수대용" > 식수대용</label>
                            </div>
                            <br>
                           <!--  
                            <div class="form_item">
                                <input type="text" name="DB 보고 결정2" placeholder="DB 보고 결정2">
                            </div>
                            <div class="form_item">
                                <input type="text" name="DB 보고 결정3" placeholder="DB 보고 결정3">
                            </div> -->


                                <div class="file1">
                                    Image 1 : <input type="file" id="uploadFile" name="uploadFile">
                                    <div class="select_img"><img src="" /></div>
                                </div>
                                <br />
<!--                                 <div class="file2">
                                    Image 2 : <input
                                    type="file" name="file" accept="image/*">
                                </div>
                                <br />
                                <div class="file3">
                                    Image 2 : <input
                                        type="file" name="file" accept="image/*">
                                </div> -->
                                
                            <div class="text-center">
                                <button type="submit" class="btn btn_primary text-uppercase">등록</button>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </section>
            <!-- contact_section - end
        ================================================== -->



        </main>
        <!-- main body - end
      ================================================== -->

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>