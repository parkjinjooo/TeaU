<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String data = request.getParameter("data");
%>
    
    
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

                        <form id="insertForm" method="post" enctype="multipart/form-data">
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
                            <label>
                            <h6>상품 이름</h6>
                                <input type="text" name="teaName" id="teaName" placeholder="차 이름을 적어주세요" required>
                            </label>
                            </div>
                            
                            <div class="form_item">
                            <h6>상품 설명</h6>
                                <textarea name="teaInfo" id="teaInfo" placeholder="상품 소개글을 적어주세요 :" required></textarea>
                            </div>
                            
                            <div class="form_item">
                            <label>
							<h6>상품 가격</h6>                            
                                <input type="text" name="teaPrice" id="teaPrice" placeholder="차 가격을 적어주세요" required>
                            </label>
                            </div>
                            <h6> 베이스 선택 </h6>
                            <div>
                                <label><input type="radio" name="tagBase" value="HERB" > HERB</label>
                            </div>
                            <div>
                                <label><input type="radio" name="tagBase" value="GREEN" > GREEN</label>
                            </div>
                            <div>
                                <label><input type="radio" name="tagBase" value="BLACK" > BLACK</label>
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
                            
                         <div id="toChoice">
                          	<h6> 카페인 선택 </h6>
                            <div>
                                <label><input type="radio" name="tagCaff" value="카페인" > 카페인</label>
                            </div>
                            <div>
                                <label><input type="radio" name="tagCaff" value="디카페인" > 디카페인</label>
                            </div>
                            <br>
                            
                             <h6> 맛 선택 </h6>
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
                         </div>
                            
                         <div id="tbChoice">
                            <h6> 블렌드  선택 </h6>
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
                            
                             <h6> 마시는법  선택 </h6>
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
                         </div>
                         	<input type="hidden" id="fileName" name="fileName"/>
                                <div class="file1">
                                    Image 1 : <input multiple="multiple" type="file" id="uploadFile" name="uploadFile" accept="image/*">
                                    <br/><br/>
                                    <div>
                                    <img id="preImage" style="width:250px; border-radius:20px"> 
                                    </div>
                                    <!-- <div class="select_img"><img src="" /></div> -->
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
                                <input type="button" id="btn_shopSubmit" class="btn btn_primary text-uppercase" onclick="inOrUp();" />
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
      
<script>
	$(document).ready(function(){
		
		
		let data = <%= data%>;
		
		if(data != null){
			let obj = JSON.parse(data);
			
			// 기본 
			let orderCate = obj['shopInfo'].orderCate;
			
			if(orderCate == "TO"){
				$("#tbChoice").hide();
			}else{
				$("#toChoice").hide();
			}
			
			// text 영역
			let teaName = obj['shopInfo'].teaName;
			$("#teaName").val(teaName);
			
			let teaInfo = obj['shopInfo'].teaInfo;
			$("#teaInfo").val(teaInfo);
			
			let teaPrice = obj['shopInfo'].teaPrice;
			$("#teaPrice").val(teaPrice);
			
			
			let tagSeason = obj['shopInfo'].tagSeason.split(',');
			let tagUser = obj['shopInfo'].tagUser.split(',');
			let tagBase = obj['shopInfo'].tagBase;

			
			$('input:radio[name="orderCate"]').each(function(){
				var cate = $(this);
				if(cate.val() == orderCate)
					cate.attr('checked', true);
			});
			
			$('input:checkbox[name="tagSeason"]').each(function(){
				for(let i=0; i< tagSeason.length; i++){
					if(this.value == tagSeason[i]){
						this.checked = true;
					}
				}
			});
			$('input:checkbox[name="tagUser"]').each(function(){
				for(let i=0; i< tagUser.length; i++){
					if(this.value == tagUser[i]){
						this.checked = true;
					}
				}
			});
 			$('input:radio[name="tagBase"]').each(function(){
					var base = $(this);
					if(base.val() == tagBase)
						base.attr('checked', true);
				
					
				}); 
 			
			// TO
			if(orderCate == "TO"){
				
				let tagCaff = obj['shopInfo'].tagCaff;
				let tagTaste = obj['shopInfo'].tagTaste.split(',');
				let tagEff = obj['shopInfo'].tagEff.split(',');
				
				
				$('input:radio[name="tagCaff"]').each(function(){
					var caff = $(this);
					if(caff.val() == tagCaff)
						caff.attr('checked', true);
				
					
				}); 
				$('input:checkbox[name="tagTaste"]').each(function(){
					for(let i=0; i< tagTaste.length; i++){
						if(this.value == tagTaste[i]){
							this.checked = true;
						}
					}
				});
				$('input:checkbox[name="tagEff"]').each(function(){
					for(let i=0; i< tagEff.length; i++){
						if(this.value == tagEff[i]){
							this.checked = true;
						}
					}
				});
			// TB
			}else{
				let tagBlend = obj['shopInfo'].tagBlend.split(',');
				let tagDrink = obj['shopInfo'].tagDrink.split(',');
				

				$('input:checkbox[name="tagBlend"]').each(function(){
					for(let i=0; i< tagBlend.length; i++){
						if(this.value == tagBlend[i]){
							this.checked = true;
						}
					}
				});
				$('input:checkbox[name="tagDrink"]').each(function(){
					for(let i=0; i< tagDrink.length; i++){
						if(this.value == tagDrink[i]){
							this.checked = true;
						}
					}
				});
			}
			
			let teaImg = obj['shopInfo'].teaImg;
			
			$('input[name=fileName]').attr('value', teaImg);
			console.log($('input[name=fileName]').val());
			
			
			
			
		}else{
			$("#tbChoice").hide();
		}
		
		// data값에 따라 버튼 값 변경 
		if(data == null){
			$('#btn_shopSubmit').val('등록');
		}else{
			$('#btn_shopSubmit').val('수정');
		}
		
		
		
	});

	// cate 체크에 따라 보이는 항목 변경
	$("input[name='orderCate']").change(function(){
		if($("input[name='orderCate']:Checked").val() == "TO"){
			$("#tbChoice").hide();
			$("#toChoice").show();
		}else{
			$("#toChoice").hide();
			$("#tbChoice").show();
		}
	}); 
	
		
 	function inOrUp(){
		let data = <%= data%>;
		let obj = JSON.parse(data);
			
		let insertForm = $('#insertForm');
		
		let formData = new FormData(insertForm[0]);

		let location = "";
		if(data == null){
			location = "insertShop.do";
		}else{
			let teaId = obj['shopInfo'].teaId;
			location ="updateShop.do?teaId="+teaId;
		}
	  $.ajax({
			type:"POST",
			url:location,
			data: formData,
			contentType: false,
			processData: false,
			success:function(data){
				 alert(data); 
				 window.location.href=("shopSeason.do"); 
			},
			error: function(e){
				console.log(e);
			}
		}); 
	 } 
 	
 	
 	// 이미지 미리보기
 	$(function(){
 		$('#uploadFile').on('change', function(){
			readURL(this); 		
 		});
 	});
 	
 	function readURL(input){
 		if(input.files && input.files[0]){
 			var reader = new FileReader();
 			reader.onload = function(e){
 				$('#preImage').attr('src', e.target.result);
 			}
 			reader.readAsDataURL(input.files[0]);
 		}
 	}
 	
 	
</script>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>