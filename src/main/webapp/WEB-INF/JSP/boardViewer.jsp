<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="com.teau.biz.member.MemberVO" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

          <% String boardId=request.getParameter("boardId"); 
          String boardImgm=request.getParameter("boardImgm");
            MemberVO member=(MemberVO)request.getAttribute("member"); 
            String memberId="" ; 
            if(member !=null)
            memberId=member.getMemberId();
            %>
            <!doctype html>
            <html lang="en">

            <head>

              <meta charset="utf-8">
              <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
              <meta http-equiv="x-ua-compatible" content="ie=edge">

              <title>board_viewer</title>
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

              <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
              
              <script>
              
                var count1 = 0;
                $(document).ready(function () {

                  selectReviewDetail();
                  
                });


            // ?????? ?????? ?????? ??????, form action??? on-click?????? ?????????
                function nullvaluealert() {
                  if (!document.replysubmit.replyContent.value || document.replysubmit.replyContent.value.trim() == "") {
                    alert("?????? ????????? ???????????????");

                    return false;
                  }
                }

            // board view??? ????????? ???????????? ?????? ajax ??????
                function selectReviewDetail() {
                  var boardId = <%=boardId%>;
                  var memberId = '<%=memberId%>';


                  $.ajax({
                    type: 'POST',
                    url: 'getReviewDetail.do',
                    dataType: 'json',
                    data: { 'boardId': boardId,
                          'memberId' : memberId
                    },
                    success: function (data) {

                      $('#boardId').text(data['board'].boardId);
                      $('#boardTitle').text(data['board'].boardTitle);
                      $('#boardCate').text(data['board'].boardCate);
                      $('#boardWriter').text(data['board'].boardWriter);
                      $('#boardRegdate').text(data['board'].boardRegdate);
                      $('#boardContent').text(data['board'].boardContent);
                      $('#boardImgm').text(data['board'].boardImgm);
                      $('#boardLikeCount').text(data['board'].boardLikeCount);
                      
                      var likeChk = data['likeChk'];
                      var boardCate = data['board'].boardCate;
                      
                      if(boardCate == '3') {
                         $('#boardheart').show();
                         if(memberId == null || memberId == '' ){
                            $("#heart").removeAttr("onclick");   // ????????? ????????? ??????
                            $("#heart").attr("onclick", "Login();"); // ????????? ????????? ???????????? 
                         }
                      } else {
                         $('#boardheart').hide();
                      }
                      
                      if(likeChk == 1) {
                         $("#heart").attr('class','fas fa-heart');
                      } else {
                         $("#heart").attr('class','fal fa-heart');
                      }
                      
                      if (memberId != null && memberId == data['board'].boardWriter) {
                        $('#btnDel').show();
                        $('#btnUp').show();
                      } else {
                        $('#btnDel').hide();
                        $('#btnUp').hide();
                      }

                      if (data['board'].boardCate == 1) {
                        $('#goListO').show();
                        $('#goListB').hide();
                        $('#goListR').hide();
                        $('#boardheart').hide();
                      } else if (data['board'].boardCate == 2) {
                        $('#goListO').hide();
                        $('#goListB').show();
                        $('#goListR').hide();
                        $('#boardheart').hide();
                      } else if(data['board'].boardCate == 3){
                        $('#goListO').hide();
                        $('#goListB').hide();
                        $('#goListR').show();
                        $('#boardheart').show();
                      }

                    },
                    error: function (e) {
                      console.log(e);
                    }
                  });
                }
                
                function Login(){
                   window.location.href="<c:url value='login.do' />";
                 
                }
                
                // ????????? ?????? ??????, ????????? ??????
                function addLikeCnt() {
                   // ????????? ??????(boardId)??? ??????????????? ???????????? ???????????????.
                    var boardId = <%=boardId%>;      // int ??? '' ??? ?????? ??????
                      var memberId = '<%=memberId%>'; // String ?????? ''??? ?????????
                  
                  
                  
                    console.log(memberId);
                    
                
                       if($('#heart').hasClass('fal') == true) {
       
                           $.ajax({
                                url : 'heartCreate.do',
                                type : 'get',
                                data : { 
                                   'boardId' : boardId,
                                   'memberId': memberId
                                },
                                success : function() {
                                                        
                                    console.log("???????????? ??????");
                                  
                                    selectReviewDetail();
                                },
                                error : function() {
                                    alert('?????? ??????');
                                }
                            });
                           $("#heart").attr('class','fas fa-heart'); 
                       
                           
                       } else {
                          
                          $.ajax({
                               url : 'heartDelete.do',
                               type : 'get',
                               data : { 'boardId' : boardId,
                                      'memberId': memberId
                               },
                               success : function() {
                                               
                                   console.log("???????????? ??????");
                                  
                                   selectReviewDetail();
                               },
                               error : function() {
                                   alert('?????? ??????');
                               }
                           });
                          $("#heart").attr('class','fal fa-heart'); 
                       }
   
                    
                   
                }
                
                
                
                <%-- $("#aHeart").click(function() {

                    // ????????? ??????(boardId)??? ??????????????? ???????????? ???????????????.
                    var boardId = <%=boardId%>;
                    console.log("heart");

                    // ???????????? ????????????, children ?????? ?????? ????????????
                    if($(this).children('i').attr('class') == "fal fa-heart"){
                        console.log("????????? ??????" + boardId);

                        $.ajax({
                            url : 'saveHeart.do',
                            type : 'get',
                            data : { 'boardId' : boardId},
                            success : function() {
                                //????????? ????????????                         
                                console.log("???????????? ??????");
                            },
                            error : function() {
                                alert('?????? ??????');
                            }
                        });
                        console.log("?????? ?????? ??????1");
                        
                  alert("?????????!");
                        // ??????????????? ?????????
                       /*  $(this).html("<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-suit-heart-fill' viewBox='0 0 16 16'><path d='M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z'/></svg>");
                        $('.heart_icon'+no).html("<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-suit-heart-fill' viewBox='0 0 16 16'><path d='M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z'/></svg>");
 */
                    // ?????? ????????? ????????? ???, children ?????? ?????? ????????????
                    }else if($(this).children('i').attr('class') == "fas fa-heart"){
                        console.log("???????????? ??????" + boardId);

                        $.ajax({
                            url : 'removeHeart.do',
                            type : 'get',
                            data : { 'boardId' : boardId},
                            success : function(pto) {
                                //????????? ????????????
                                //document.location.reload(true);

                               // let heart = pto.heart;
                                // ?????????, ???????????? ????????? ??????
                              /*   $('#m_heart'+no).text(??????);
                                $('#heart'+no).text(??????); */

                                console.log("???????????? ??????");
                            },
                            error : function() {
                                alert('?????? ??????');
                            }
                        });
                        console.log("?????? ?????? ??????1");

                        // ???????????? ?????????
                      /*   $(this).html('<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16"><path d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" /></svg>');
                        $('.heart_icon'+no).html('<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16"><path d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" /></svg>');
                   */  }



                }); --%>

              </script>
                  <style>
      .wrap_space {
        border: 1px solid rgba(0,0,0,.125);
        border-radius: .25rem;

      }

    </style>
              
            </head>

            <body>
              <%@include file="header.jsp" %>

                <!-- details_section - start
        ================================================== -->
                <section class="details_section blog_details sec_ptb_120">
                  <div class="container">
                    <div class="row justify-content-lg-between justify-content-md-center justify-content-sm-center">

                      <div class="col-lg-1 col-md-1"></div>
                      <div class="col-lg-10 col-md-10">
                        <div class="details_content mb-0">
                          <div class="details_image wow fadeInUp" data-wow-delay=".1s">
                            <!--   <img src="assets/images/details/img_01.jpg" alt="image_not_found">  -->
                            <img src="resource/imgUpload/<%=boardImgm%>" alt="image_not_found" style="height:400px">

                          </div>
                          <div class="wrap_space">

                            <h2 id="boardTitle" class="details_title text-uppercase wow fadeInUp" data-wow-delay=".1s">
                            </h2>
                          
                            <ul class="post_meta ul_li wow fadeInUp" data-wow-delay=".1s">
                              <li><a href="#!"><i class="fal fa-user"></i><span id="boardWriter"></span></a></li>
                              <li><i class="fal fa-calendar-alt"></i><span id="boardRegdate"></span></li>
        
                              <li><a style="color:#ff0000; float:right" id="boardheart">
                              <i onclick="addLikeCnt();" style="cursor: pointer;" class="fal fa-heart" id="heart"></i>
                              <span id="boardLikeCount"></span>&nbsp;&nbsp;like  </a>  
                              </li>
                             
 
                            </ul>
                           
                            <p class="wow fadeInUp" data-wow-delay=".1s">
                              <span id="boardContent"></span>
                            </p>

                            <div class="container">

                              <div class="row">
                                <div class="col" style="text-align: right;">
                                  <a id="btnUp" class="btn btn_primary text-uppercase"
                                    href="boardUpdateMove.do?boardId=<%=boardId%>&boardImgm=<%=boardImgm%>"
                                    style="margin-top: 2.5%;">????????? ??????</a>&nbsp;&nbsp;&nbsp;&nbsp;

                                  <a id="btnDel" class="btn btn_primary text-uppercase"
                                    href="boardDelete.do?boardId=<%=boardId%>" style="margin-top: 2.5%;">?????????
                                    ??????</a>&nbsp;&nbsp;&nbsp;&nbsp;

                                  <a id="goListO" class="btn btn_primary text-uppercase" href="toBoard.do"
                                    style="margin-top: 2.5%;">????????? ??????</a>
                                  <a id="goListB" class="btn btn_primary text-uppercase" href="tbBoard.do"
                                    style="margin-top: 2.5%;">????????? ??????</a>
                                  <a id="goListR" class="btn btn_primary text-uppercase" href="rankBoard.do"
                                    style="margin-top: 2.5%;">????????? ??????</a>
                                </div>
                              </div>

                            </div>
                            <br />
                            <br />
                            <br />
                            <div>
                              <hr style="height: 1px; background-color: black;">

                              <form action="replyDelete.do" method="post">
                                <c:forEach items="${reply}" var="reply">
                                  <div>
                                    <p style="font-weight: bold;">${reply.replyWriter} / ${reply.replyRegdate}</p>
                                    <p>${reply.replyContent }</p>

                                    <input type="hidden" name="boardId" value="<%=boardId%>">
                                    <input type="hidden" name="boardImgm" value="<%=boardImgm%>">
                                    <input type="hidden" name="replyId" value="${reply.replyId}">

                                    <c:if test="${member.memberId !=null and member.memberId eq reply.replyWriter}">
                                      <button type="submit"
                                        name="commentInsertBtn" style="border-radius:4px; color:white; background-color:#fd6c44; width: 70px; height: 35px">????????????</button>
                                        
                                    </c:if>
                                    <hr style="height: 1px; background-color: black;">
                                  </div>
                                </c:forEach>
                              </form>

                            </div>
                            <!--  ??????  -->
                            <c:if test="${member.memberId !=null }">
                              <div>
                                <form method="post" action="replyCreate.do" name="replysubmit"
                                  onsubmit="return nullvaluealert()">
                                  <div>
                                    <div class="col-md-2">
                                      ?????? ????????? :
                                    </div>
                                    <div class="col-md-10">
                                      <input type="text" name="replyWriter" value="${member.memberId }" readonly>
                                    </div>
                                  </div>
                                  <div>
                                    <div class="col-md-2">
                                      ?????? ?????? :
                                    </div>
                                    <div class="col-md-8">
                                      <textarea rows="5" cols="50" name="replyContent"></textarea>
                                    </div>
                                  </div>
                                  <p>
                                    <input type="hidden" name="boardId" value="<%=boardId%>">
                                    <input type="hidden" name="boardImgm" value="<%=boardImgm%>">
                                    <button class="btn btn_primary text-uppercase" type="submit"
                                      name="commentInsertBtn">????????????</button>
                                  </p>
                                </form>
                              </div>
                            </c:if>
                            <c:if test="${member.memberId == null }">
                              <div>
                              </div>
                            </c:if>

                            <!--    ??????  
                          <div class="container">
                            <form name="commentInsertForm">
                              <div class="input-group">
                                <input type="text" class="form-control" id="content" name="content"
                                  placeholder="????????? ???????????????.">
                                <button class="btn btn_primary text-uppercase" type="submit"
                                  name="commentInsertBtn">????????????</button>
                              </div>
                            </form>
                          </div>
                          
                          <div class="container">
                            <div class="commentList"></div>
                          </div> -->

                          </div>
                        </div>
                      </div>

                      <div class="col-lg-1 col-md-1"></div>

                    </div>
                  </div>
                </section>
                <!-- details_section - end
        ================================================== -->

                </main>
                <!-- main body - end
      ================================================== -->
                <%@include file="footer.jsp" %>

            </body>

            </html>