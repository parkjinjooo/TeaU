<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<% // 자바코드
	String data =  request.getParameter("data"); // data를 String으로 
%>	
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Subscribe - Leaf</title>
<link rel="shortcut icon" href="assets/images/feature/11.jpg">

<!-- fraimwork - css include -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css">

<!-- icon font - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

<!-- animation - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/animate.css">

<!-- carousel - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/slick.css">
<link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

<!-- popup - css include -->
<link rel="stylesheet" type="text/css"
	href="assets/css/magnific-popup.css">

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
		style="background-image: url(assets/images/breadcrumb/leaf.jpg);">
		<div class="container">
			<h1 class="page_title text-white wow fadeInUp" data-wow-delay=".1s">새싹
				구독</h1>
			<ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
				<li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
				<li>새싹 구독</li>
			</ul>
		</div>
		<div class="breadcrumb_icon_wrap">
			<div class="container">
				<div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
					<img src="assets/images/feature/11.jpg" alt="icon_not_found"
						width="50px">
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
			<div class="reserve_table_form wow fadeInUp"
				style="padding-left: 0px; padding-right: 0px;" data-wow-delay=".1s">
				<div class="subcribe_title">
					<h2 class="form_title text-center text-uppercase"
						style="font-size: 35px;">원하는 항목을 골라보세요(중복 가능)</h2>
				</div>

				<form id="insertForm" method="POST">
					<input type="hidden" id="subUser" name="subUser" value="${user.memberId}"/>
					<div class="row justify-content-center">						
						<!--나눠놓은 기준은 행 단위-->
						<div class="col-lg-2"></div>
						<div class="col-lg-8 sub_leaf_title">계절별</div>
						<div class="col-lg-2"></div>

						<div class="col-lg-3"></div>
						<div class="col-lg-3 sub_leaf_content">

						<label><input type="checkbox" name="tagSeason" value="봄" /> 봄</label> 
						<br /> 
						<label><input type="checkbox" name="tagSeason" value="가을" /> 가을 </label>

						</div>
						<div class="col-lg-3 sub_leaf_content">
						<label><input type="checkbox" name="tagSeason" value="여름" /> 여름</label>
						<br /> 
						<label><input type="checkbox" name="tagSeason" value="겨울" /> 겨울</label>
						</div>
						<div class="col-lg-3"></div>


						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<hr size="5" noshade>
						</div>
						<div class="col-lg-2"></div>


						<div class="col-lg-2"></div>
						<div class="col-lg-8 sub_leaf_title">베이스</div>
						<div class="col-lg-2"></div>

						<div class="col-lg-3"></div>
						<div class="col-lg-3 sub_leaf_content">
						<label><input type="checkbox" name="tagBase" value="녹차" />녹차</label>
					    <br /> 
					    <label><input type="checkbox" name="tagBase" value="홍차" /> 홍차</label>
					    <br />
						</div>

						<div class="col-lg-3 sub_leaf_content">
						<label><input type="checkbox" name="tagBase" value="우롱차" />우롱차</label> 
						<br /> 
						<label><input type="checkbox" name="tagBase" value="허브차" /> 허브차(카페인x)</label>
						</div>
						<div class="col-lg-3"></div>

						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<hr size="5" noshade>
						</div>
						<div class="col-lg-2"></div>

						<div class="col-lg-2"></div>
						<div class="col-lg-8 sub_leaf_title">마시는 방법</div>
						<div class="col-lg-2"></div>

						<div class="col-lg-3"></div>
						<div class="col-lg-3 sub_leaf_content">
						<label><input type="checkbox" name="tagDrink" value="아이스티" />아이스티</label> 
						<br />
						<label><input type="checkbox" name="tagDrink" value="핫티" /> 핫티</label>
						</div>

						<div class="col-lg-3 sub_leaf_content">
						<label><input type="checkbox" name="tagDrink" value="밀크티" />밀크티</label> 
						<br /> 
						<label> <input type="checkbox" name="tagDrink" value="식수대용" /> 식수대용</label>
						</div>
						<div class="col-lg-3"></div>

						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<hr size="5" noshade>
						</div>
						<div class="col-lg-2"></div>

						<div class="col-lg-2"></div>
						<div class="col-lg-8 sub_leaf_title">블렌드(향기)</div>
						<div class="col-lg-2"></div>

						<div class="col-lg-3"></div>
						<div class="col-lg-3 sub_leaf_content">
						<label><input type="checkbox" name="tagBlend" value="꽃" /> 꽃</label>
						<br /> 
						<label><input type="checkbox" name="tagBlend" value="시나몬" /> 시나몬</label>
						 <br /> 
						 <label><input type="checkbox"name="tagBlend" value="믹스" /> 믹스</label>
						</div>

						<div class="col-lg-3 sub_leaf_content">
						<label><input type="checkbox" name="tagBlend" value="과일" />과일</label>
						<br /> 
						<label><input type="checkbox" name="tagBlend" value="초콜릿&과자" /> 초콜릿&과자</label>
						</div>
						<div class="col-lg-3"></div>

						<div class="text-center">
							<br /> <br /> <br />
							<button type="button" class="btn btn_primary text-uppercase" onclick="checkbox_Check();">새싹 구독 신청</button>
						</div>
					</div>
				</form>

				<!--여기 위 부분을 수정-->

				<div class="decoration_icon">
					<img src="assets/images/feature/11.jpg" alt="icon_not_found"
						width="50px"> <span class="bg_shape"></span>
				</div>
			</div>
			<div class="reserve_banner_image wow fadeInUp" data-wow-delay=".3s">
				<img src="assets/images/reserve/leaf_bottom.jpg"
					alt="image_not_found">
			</div>
		</div>
	</section>
	<!-- reserve_table_section - end
        ================================================== -->
	</main>
	<!-- main body - end
      ================================================== -->
	<jsp:include page="footer.jsp"></jsp:include>
<script>
		$(document).ready(function() {
			var data = <%=data%>;
			console.log(data);
			if(data != null) {
				var obj = JSON.parse(data); //string 객체를 json 객체로 변환
				console.log(obj);
				var tagSeason = obj['subInfo'].tagSeason;
				var tagBase = obj['subInfo'].tagBase;
				var tagDrink = obj['subInfo'].tagDrink;
				var tagBlend = obj['subInfo'].tagBlend;
				
				$('input:checkbox[name="tagSeason"]').each(function() {
					//split 생각해보기 
					if(this.value == tagSeason) {
						this.checked = true;
					}
				});
			}
			
		});
		function checkbox_Check() {
			if ($("input:checkbox[name=tagSeason]").is(":checked") == false) {
				alert("'계절별'을 하나 이상 선택해주세요");
				return false;				
			}else if($("input:checkbox[name=tagBase]").is(":checked") == false) {
				alert("'베이스'를  하나 이상 선택해주세요");
				return false;				
			}else if($("input:checkbox[name=tagDrink]").is(":checked") == false) {
				alert("'마시는 방법'을 하나 이상 선택해주세요");
				return false;				
			}else if($("input:checkbox[name=tagBlend]").is(":checked") == false) {
				alert("'블렌드'를 하나 이상 선택해주세요");
				return false;				
			}else{
			 $.ajax({
					type: 'POST',
					url: 'insertSubLeaf.do',
					dataType: 'text', // form에 있는 데이터들을 controller로 text타입으로 
					data: $('#insertForm').serialize(),
					success: function(data) {

						alert(data);
						window.location.href=("getSubLeaf.do?subUser=" + $('#subUser').val()); //JSP 이동 페이지 적기  
					}, 
					error: function(e) {
						console.log(e);
					}
				}); 
			}
		}
		
	</script>
</body>
</html>