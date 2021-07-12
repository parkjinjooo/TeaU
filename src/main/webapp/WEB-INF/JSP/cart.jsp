<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">

		<title>cart</title>
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

	</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- cart_section - start
				================================================== -->
				<section class="cart_section sec_ptb_120 bg_default_gray" style="margin-top: 50px;">
					<div class="container">
						<div class="cart_table">
							<table class="table">
								<thead class="text-uppercase wow fadeInUp" data-wow-delay=".1s">
									<tr>
										<th>상품</th>
										<th>가격</th>
										<th>수량</th>
										<th>개별총액</th>
									</tr>
								</thead>
							<c:forEach items="${cartItem }" var="item">
								<tbody>
								  <input type="hidden" id="teaId${item.teaId }" value="${item.teaId }"/>
									<tr class="wow fadeInUp" data-wow-delay=".1s">
										<td>
											<div class="carttable_product_item">
												<div class="item_image">
													<img src="resource/imgUpload/${item.teaImg }" alt="image_not_found">
												</div>
												<button type="button" class="remove_btn" onclick="remove(${item.teaId });"><i class="fal fa-times"></i></button>
												<h3 class="item_title">${item.teaName }</h3>
											</div>
										</td>
									<td><span class="price_text2" id="price${item.teaId }">${item.teaPrice }</span></td>
										<%-- <input class="price_text2" type="text" name="price" value="${item.teaPrice }"/> --%>
										<td>
											<div class="quantity_input">
												<form action="#">
													<button type="button"  onclick="countCheckMinus(${item.teaId });">–</button>
													<input type="text" id="cartSize${item.teaId }" name="count" value=${item.proCnt }>
													<button type="button" onclick="countCheckPlus(${item.teaId });">+</button>
												</form>
											</div>
										</td>
										<td><span class="price_text1" id="totalPrice${item.teaId }" ></span></td>
									</tr>
								</tbody>
							 </c:forEach>
							</table>
						</div>
						<ul class="carttable_footer ul_li_right wow fadeInUp" data-wow-delay=".1s">
							<li>
								<div class="total_price text-uppercase">
									<span>총 가격 x 총 수량</span>
									<span>$45,00</span>
								</div>
							</li>
							<li>
								<a class="btn btn_primary text-uppercase" onclick="gopay();">Go Payment</a>
							</li>
						</ul>
					</div>
				</section>
				<!-- cart_section - end
				================================================== -->

			</main>
			<!-- main body - end
			================================================== -->
<jsp:include page="footer.jsp"></jsp:include>
<script>
		

		let price;
		let count;
	$(document).ready(function(){
		
		<c:forEach items="${cartItem }" var="item">
			$('#totalPrice'+${item.teaId }).text($('#price' + ${item.teaId }).text() * $('#cartSize'+${item.teaId }).val()); 
		</c:forEach>
	
			price =	$('#price').val();
			count =	$('#cartSize').val();
				
		 console.log(price);
		 console.log(count);
		
		  price = $('#price').text();
		  count = $('#cartSize').val();
		
		 console.log(price * count)
		 
		 
		$('#totalPrice').text(price*count); 
		
	}); 

	
  function countCheckMinus(teaId){
	  var value = $('#cartSize' + teaId).val();
	  price = $('#price' + teaId).text();
	  value--;

	  if(value < 1){ 
		 alert("최소 수량은 1개입니다.");
		 $('#cartSize' + teaId).val(1);
		 value=1;
	 } else {
		 $('#cartSize'+teaId).val(value);
	 }
	 $('#totalPrice' + teaId).text(price*value);
 }
  
  function countCheckPlus(teaId){
	  var value = $('#cartSize' + teaId).val();
	  price = $('#price' + teaId).text();
	  value++;

	  if(value > 10){ 
		 alert("최대 수량은 10개입니다.");
		 $('#cartSize'+teaId).val(10);
		 value = 10;
	 } else {
		 $('#cartSize' + teaId).val(value);
	 }
	  $('#totalPrice' + teaId).text(price*value);
 }
  
  
  function gopay() {
	  console.log($('#cartSize').val());
  }

	function remove(tId){
		let member =  id;
		let teaId = $('#teaId'+tId).val();
		console.log(member);
		location.href="deleteCart.do?memberId="+member+"&&teaId="+teaId;
	}
</script>
</body>
</html>