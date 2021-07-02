<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>board_create</title>
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

                        <form action="#">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="form_item">
                                        <h1>수정할 상품의 정보를 적어주세요.</h1>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form_item">

                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="form_item">
                            <label>
                            <h6> 상품 이름 </h6>
                                <input type="text" name="subject" placeholder="차 이름을 적어주세요" value="${teaDetail.teaName }">
                            </label>
                            </div>
                            
                           
                            <div class="form_item">
                            <h6> 상품 설명 </h6>
                                <textarea name="message" placeholder="상품 소개글을 적어주세요 :">${teaDetail.teaInfo }</textarea>
                            </div>
                            
                            <div class="form_item">
                            <label>
                            <h6> 상품 가격 </h6>
                                <input type="text" name="price" placeholder="차 가격을 적어주세요" value="${teaDetail.teaPrice }">
                            </label>
                            </div>
                           


                            
                            <form method="post" action="upload" enctype="multipart/form-data">

                                <div class="file1">
                                    Image 1 : <input type="file" name="file" accept="image/*">
                                </div>
                                <br />
                                <div class="file2">
                                    Image 2 : <input
                                    type="file" name="file" accept="image/*">
                                </div>
                                <br />
                                <div class="file3">
                                    Image 2 : <input
                                        type="file" name="file" accept="image/*">
                                </div>
                            </form>

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