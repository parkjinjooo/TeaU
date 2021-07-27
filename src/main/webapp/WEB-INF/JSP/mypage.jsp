<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>My page</title>
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
    <!-- contact_section - start
        ================================================== -->  
        <section class="contact_section sec_ptb_120 bg_default_gray">
          <!--회원이름&포인트-->
          <div class="container">
            <div class="contact_form bg_white">
              <div class="row">
                <div class="offset-md-1 col-md-3">
                  <div class="item_content img-fluid">
                    <h3><i class="fas fa-user"></i>${member.memberId } 님 </h3>
                  </div>
                </div>
                <div class="offset-md-3 col-md-5">
                  <div class="item_content">
                    <h3 class="item_title text-uppercase">보유 포인트 : ${member.memberPoint }점</h3>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
          <div class="container">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              <!-- 회원 정보 불러오기 -->
              <!-- <form action="#"> -->

                <div class="hi container"><div class="hi section">
                  <div class="row">
                    <div class="col-sm-9">
                      <h3>내 정보</h3><br>
                      <table class="hi table table-divider">
                        <tbody>
                          <tr>
                            <th class="hi width-xsmall">이름<span class="hi text-danger">*</span></th>
                            <td>${member.memberName }</td>
                          </tr>
                          <tr>
                            <th class="hi width-xsmall">이메일 주소<span class="hi text-danger">*</span></th>
                            <td>${member.memberEmail }</td>
                          </tr>
                          <tr>
                            <th class="hi width-xsmall">전화번호<span class="hi text-danger">*</span></th>
                            <td>${member.memberPhone }</td>
                          </tr>
  
                          <!-- <tr>
                              <th class="hi width-xsmall">회원 등급</th>
                              <td>그린티회원</td>
                            </tr> -->
                          <!-- <tr>
                            <th class="hi width-xsmall">포인트</th>
                            <td>3000</td>
                          </tr> -->
  
                          <tr>
                            <th class="hi width-xsmall">주소</th>
                            <td>${member.memberAddress } </td>
                          </tr>
  
                          <!-- <tr>
                                <th class="hi width-xsmall">최근 로그인</th>
                                <td>2021-05-27</td>
                              </tr> -->
                        </tbody>
                      </table>
                    </div>
  
                    <div class="col-sm-3">
                      <h3>회원 정보</h3>
                      <hr class="hi hr">
                      
                      <ul class="hi list-menu">
                        <li><a href="mypage_edit.do">회원정보 변경</a></li>
                      </ul>
                    </div>  </div>
                </div>
                  </div>


                <!-- <div class="text-center">
                  <button type="submit" class="btn btn_primary text-uppercase">Send massage</button>
                </div> -->
              <!-- </form> -->
            </div>
          </div>
          <br>
          <!-- 구독정보 -->
          <div class="container">
            <div id="subscribe_order"  class="contact_form bg_white">
              <h3>구독 정보</h3><br>
              <ul>
                <li>

                  <div class="row">
                    <div class="col-md-4 col-xs-4">
                  <div class="item_content">
                    <img src="./assets/images/finder/3.jpg" class="img-responsive">
                  </div>
                </div>
                
                <div class="col-md-7 col-xs-4">
                <form method="POST">
                <input type= "hidden" id= "memberSub" value="${member.memberSub}" >
                 <input type="hidden" id="memberId" name="memberId" value="${sub.subUser}" >
                  <div class="item_content">
                    <div>
                      <div>
                        <div>
                        
                          <br>
                          <h4>${sub.orderCate} 구독 
                                       <button type="button" class="btn btn_primary text-uppercase" style="margin-left:10%;"
                                          onclick="updateCheck();">수정</button>
                                       <button type="button" class="btn btn_primary text-uppercase"
                                          onclick="deletesub();">해지</button>
                                       <button type="button" class="btn btn_primary text-uppercase" id="check_module" onclick="checkModule();">결제</button>
                           </h4>
                        </div>
                        <hr> 
                        <div>
                          <dt>주문번호(구독번호)</dt>
                          <dd><fmt:formatDate value="${sub.subDate}" pattern="yyyyMMdd"/>${sub.subId}</dd>
                        </div>
                        <div>
                          <dt>결제금액</dt>
                          <dd>${sub.subPrice}원/월</dd>
                        </div>
                        <div>
                                       <dt>취향선택</dt>
                                       <dd id="tea_tag">
                                          ${sub.tagSeason}${sub.tagBase}${sub.tagDrink}
                                          ${sub.tagBlend} ${sub.tagTaste} ${sub.tagCaff}
                                          ${sub.tagEffect} ${sub.treeSelect}
                                       </dd>
                                    </div>
                                    <div class="hiddenDiv"> </div>
                                 </div>
                      
                    </div>
                  </div>
                 </form>
                </div>
              </div>              
              
            </li>
              </ul>
            </div>
          </div>
          <br>
          <!--배송정보-->
          <div class="container">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              
              <div class="main_contact_info_wrap">
                
                <div class="contact_info_item">
                  
                  <div class="item_icon"><i class="fas fa-archive"></i></div>
                  <div class="item_content">
                    <h3 class="item_title text-uppercase">상품 준비중</h3>
                    <p>고객님의 상품을 준비중입니다.</p>
                    
                  </div>
                </div>
                <div class="contact_info_item">
                  <div class="item_icon"><i class="fas fa-truck"></i></div>
                  <div class="item_content">
                    <h3 class="item_title text-uppercase">배송중</h3>
                    <p>배송이 시작되었습니다.</p>
                    <p>잠시만 기다려주세요!</p>
                  </div>
                </div>
                <div class="contact_info_item">
                  <div class="item_icon"><i class="fas fa-home"></i></div>
                  <div class="item_content">
                    <h3 class="item_title text-uppercase">배송완료</h3>
                    <p>배송이 완료되었습니다.</p>
                    <p>후기를 남겨주세요!</p>
                  </div>
                </div>
              </div>              
            </div>
          </div>

          <br>

          <div class="container">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              <!-- <div class="main_contact_info_wrap"> -->
                <div class="head_aticle">
                  <h3>주문/배송내역</h3>
                  <br>
                </div>
                
                <div id="viewOrderLIst" class="">
                  <div class="search_date">
                  </div>
                  <div>
                    <ul class="list_order">
                    <c:forEach items="${OrdersList }" var="orders">
							<li class="order_item">
								<div class="row order_header">
									<div class="col-md-9 col-xs-9">
										<div class="order_date">
											<dt>${orders.ordersDate }</dt>
										</div>
										<div class="order_name">
											<a href="/buy_detail.html"><h5>${orders.teaName }</h5></a>
										</div>
									</div>
									<div class="col-md-3 col-xs-3 order_button ">
										<span class="button"><a class="link">주문취소</a></span> <span
											class="button"><a class="link">1:1문의</a></span>
									</div>
								</div>
								<hr>
								<div class="row order_info">
									<div class="col-xs-9 order_goods">
										<div class="order_id">
											<dt>주문번호</dt>
											<a href="#"><dd>${orders.ordersId }</dd></a>
										</div>
										<div class="order_price">
											<dt>결제금액</dt>
											<dd>${orders.ordersTotal }</dd>
										</div>
										<div class="order_status">
											<dt>주문상태</dt>
											<dd>배송중</dd>
											<button>배송조회</button>
										</div>
									</div>

								</div>
							</li>

							</c:forEach>
                  </ul>
                </div>
              </div>


        </section>
        <!-- contact_section - end
        ================================================== -->

      </main>
      <!-- main body - end
      ================================================== -->
<script type="text/javascript"
      src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
      src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<jsp:include page="footer.jsp"></jsp:include>
<script>

	$(document).ready(function(){
		var memberSub = $('#memberSub').val();
		
		if(memberSub == 0){
		//document.getElementById('subscribe_order').style.display = 'none'; 	// javascript
		$("#subscribe_order").hide() // jquery
		}else{
		//document.getElementById('subscribe_order').style.display = 'block';
		$("#subscribe_order").show()
		}
	});
	



function updateCheck(){
	 var check = '${sub.orderCate}';
	
	if(check == '씨앗'){
		var seed = 'seed';
		updateJson(seed);
	}else if(check == '새싹'){
		var leaf = 'leaf';
		updateJson(leaf);
	}else if(check == '나무'){
		var tree = 'tree';
		updateJson(tree);
	}
}



function updateJson(check){
	
	var memberId = $('#memberId').val();
	$.ajax({
		type:'POST',
		url:'sub' + check +'update.do',
		dataType:'text',
		data: {'memberId' : memberId},
		success:function(data){
			// encodeURIComponent : URI로 데이터를 전달하기 위해서 문자열을 인코딩
			window.location.href=("subscribe_"+check+".do?data="+encodeURIComponent(JSON.stringify(data))); // JSON -> String 
		},
		error: function(e){
			console.log(e);
		}
	});
} 
    
    
 
function deletesub(){
	
	
	if (confirm("정말로 해지하시겠습니까?") == true) {

		
		if ('${sub.orderCate}' == '씨앗') {
			location.href = "deleteSubSeed.do";
		} else if ('${sub.orderCate}' == '새싹') {
			location.href = "deleteSubLeaf.do";
		} else if ('${sub.orderCate}' == '나무') {
			location.href = "deleteSubTree.do";
		}
		
	}else {
		return false
	}
}

function checkModule() {
    
	   
    var Imp = window.IMP;
    IMP.init('imp45072851');
    
    IMP.request_pay({
        pg : 'kakaopay', // version 1.1.0부터 지원.
        pay_method : 'kakaopay',
        merchant_uid : "${sub.subDate}",
        name : '"${sub.orderCate}"구독 결제', // 상품명
        amount : "${sub.subPrice}",
        buyer_email : "${member.memberEmail}", // 구매자 이메일
        buyer_name : "${member.memberName}", // 구매자 이름
        buyer_tel : "${member.memberPhone}", // 구매자 연락처
        buyer_addr : "${member.memberAddress}", // 구매자 주소
    }, function(rsp) {
        if ( rsp.success ) {
           
                  var msg = '결제가 완료되었습니다.';
                  msg += '고유ID : ' + rsp.imp_uid;
                  msg += '상점 거래ID : ' + rsp.merchant_uid;
                  msg += "${sub.subPrice}" + rsp.paid_amount;
                  msg += '카드 승인번호 : ' + rsp.apply_num;
             
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }
        alert(msg);
    });
    
    }


</script>
</body>
</html>