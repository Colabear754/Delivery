<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 
    작성자: 김나연
    작성완료일: 22/04/04
    페이지명: 리뷰관리
    -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>내 리뷰관리 페이지</title>
<!-- css연결 : google font -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap');
    </style>
    <!-- css연결 : main_style -->
    <link rel="stylesheet" href="../css/4_mypage_review.css">
    <!-- js연결 : jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- js연결 : main_script -->
    <script type="text/javascript" src="../js/4_mypage_review.js"></script>
    <!-- js연결 : font awesome -->
    <script src="https://kit.fontawesome.com/6cc0f3db28.js" crossorigin="anonymous"></script>
    <!-- js연결 : sweet alert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
    <main>
        <div class="content_box">
            <!-- 작성 전 리뷰 컨테이너 -->
            <div class="review_wrapper">
                <h1>리뷰관리</h1>
                <h2>작성 전 리뷰</h2>
                <div class="test">
                    <!-- 리뷰 form 1 -->
                    <c:forEach var="reviewData" items="${reviewData}">
                    <form id="review_form1" method="post" action="InsertReviewForm.do" enctype="multipart/form-data">
                        <table class="table_box">
                            <tbody>
                                <!-- 가게명, 삭제 -->
                                <tr class="shop_name">
                                    <td>
                                        <a href="#">
                                            <h3 class="shop">가게명 ${reviewData.restaurant.rst_name}</h3>
                                            <span>></span>
                                        </a>
                                    </td>
                                </tr>
                                <!-- 별점 -->
                                <tr>
                                    <td class="star_box">
                                        <p id="star">
                                            <button type="button" name="rating" href="#" value="1"><i class="fa-solid fa-star"></i></button>
                                            <button type="button" name="rating" href="#" value="2"><i class="fa-solid fa-star"></i></button>
                                            <button type="button" name="rating" href="#" value="3"><i class="fa-solid fa-star"></i></button>
                                            <button type="button" name="rating" href="#" value="4"><i class="fa-solid fa-star"></i></button>
                                            <button type="button" name="rating" href="#" value="5"><i class="fa-solid fa-star"></i></button>
                                        <p>
                                    </td>
                                    <td></td>
                                </tr>
                                <!-- 파일 선택 1번째 줄-->
                                    <tr>
                                        <td>
                                            <input type="file" class="hidden_input" id="selector1" name="imageSelector" 
                                            	accept="image/jpeg, image/jpg, image/png" multiple />
                                        </td>
                                        <td>
                                            <input type="file" class="hidden_input" id="selector2" name="imageSelector"
                                                accept="image/jpeg, image/jpg, image/png" multiple />
                                        </td>
                                    </tr>
                                    <!-- 파일 선택 2번째 줄-->
                                    <tr>
                                        <td>
                                            <input type="file" class="hidden_input" id="selector3" name="imageSelector" 
                                            	accept="image/jpeg, image/jpg, image/png" multiple />
                                        </td>
                                        <td>
                                            <input type="file" class="hidden_input" id="selector5" name="imageSelector"
                                                accept="image/jpeg, image/jpg, image/png" multiple />
                                        </td>
                                    </tr>
                                    <!-- 파일 선택 3번째 줄-->
                                    <tr>
                                        <td>
                                            <input type="file" class="hidden_input" id="selector4" name="imageSelector" 
                                            	accept="image/jpeg, image/jpg, image/png" multiple />
                                        </td>
                                        <td></td>
                                    </tr>
                                <!-- 이미지, 글자수, 리뷰 -->
                                <tr>
                                    <td class="shop_img">
                                        <img src="../img/review_food.jpg">
                                    </td>
                                    <td class="text_length_box">
                                        <span class="text_count">0자</span>
                                        <span class="text_total">/180자</span>
                                        <textarea name="content" class="review_write" id="review_write" cols="35"
                                            rows="6" maxlength="180" minlength="1" placeholder="리뷰를 작성해주세요">${content}</textarea>
                                    </td>
                                </tr>
                                <!-- 작성버튼 -->
                                <tr>
                                    <td></td>
                                    <td class="submit_btn_box">
                                        <input type="submit" id="submit_btn" value="작성">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                    </c:forEach>
                </div>
                <!-- 작성완료 리뷰 컨테이너-->
                <div class="review_wrapper">
                    <hr>
                    <h2>작성완료 리뷰</h2>
                    <div class="test2">
                        <!-- 작성완료 리뷰1 -->
                        <c:forEach var="reviewData2" items="${reviewData}">
                        <c:forEach var="i" begin="1" end="10"> <!-- 리뷰개수만큼 출력하고싶음. end 수정필요 -->
                        <div class="review_box${i}" id="review_done3">
                            <a href="#">
                                <h3>가게명 ${reviewData.restaurant.rst_name}</h3>
                                <span>></span>
                            </a>
                            <div class="star_box2">
                                <p class="star_off">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </p>
                                <span class="star_value">별 점수값 칸 ${reviewData.review.rating}</span>
                            </div>
                            <div class="del_btn">
                                <a href="#" onclick="">수정</a>
                                <span>|</span>
                                <a href="" onclick="">삭제</a>
                            </div>
                            <div class="review_img2">
                                <img src="./reviewPhoto/${reviewData.review.photo1}">
                            </div>
                            <div class="review_text2">
                                <div>내용</div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:forEach>
                    </div>

                </div>
            </div>
        </div>
    </main>
</body>
</html>