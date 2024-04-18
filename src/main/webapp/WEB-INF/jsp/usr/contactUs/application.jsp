<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="CONTACT US"></c:set>

<!-- 주소api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../common/head.jspf"%>

<style>
.signup-form {
	max-width: 80%;
	margin: 30px auto;
	padding: 20px;
	border-radius: 8px;
}

form {
	text-align: center;
}

.signup-form .text {
	font-size: 0.7rem;
	margin-left: 15rem;
	color: #a32222;
}

.signup-form div {
	display: inline-block;
	width: 100%;
	font-size: 1rem;
	text-align: left;
}

.signup-form .radio-box{
	padding-bottom: 20px;
}

.signup-form .formlabel{
	width: 120px;
	cursor: pointer;
}

.signup-form label {
	width: 10%;
	display: inline-block;
}

.signup-form input {
	padding: 5px;
	margin-bottom: 20px;
	width: 88%;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.signup-form .box {
	display: flex; 
	justify-content: center; 
	align-items: center;
}

.signup-form .form-check-input { /* 라디오 박스 */
	width: 30px;
	margin-bottom: 0px;
}


/* 파일 업로드 */
.signup-form .filebox {
	width: 88%;
}

.filebox input, .filebox label {
    display: inline-block;
    height: 40px;
    border: 1px solid #dddddd;
    border-radius: 4px;
    width: 35%;
}

.filebox label {
    margin-left: 10px;
    width: 80px;
    font-size: 0.8rem;
    text-align: center;
    align-content: center;
}

.filebox label:hover {
	border-style: none;
	background-color: #f2ede2;
}

.filebox input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}

/* 이메일 */

.signup-form .email { 
 	width: 10%;
}

.signup-form .emailoption { 
 	width: 20%;
}

select {
	margin-left: 5px;
	padding: 5px 2px;
}

/* 주소 */
.place > input {
	margin-bottom: 10px;
}

.signup-form .postcode { 
 	width: 15%;
}

/* 버튼 */
.signup-form .findbutton { 
 	width: 60px;
 	height: 40px;
    border: 1px solid #dddddd;
    border-radius: 4px;
    font-size: 0.8rem;
}

.findbutton:hover {
	border-style: none;
	background-color: #f2ede2;
}

#detailAddress, #extraAddress {
	width: 43.8%;
}

.signup-form .form-check-label {
	width: 90px;
	height: 15px; /* 원하는 크기로 설정하세요 */
	margin: 0; /* 기본 마진 제거 */
}

.signup-form button {
	background-color: #f2ede2;
	color: black;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 0.8rem;
}

.signup-form button:hover {
	background-color: #b3a78f;
}

.checkform {
	display: inline-block;
}

.signup-form .contact-title {
	padding: 5% 0;
	height: 200px;
}

/* 개인정보 수집 동의, 자기소개 */

/* .signup-form, .checkform {
    display: block;
}
 */
.signup-form .information {
	width: 20%;
}

.signup-form .form-control, textarea{
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	overflow-y: auto;
	width: 98.3%;
	height: 150px;
	padding: 10px;
}

.signup-form .checkbox {
	width: 20px;
	height: 20px;
}

.signup-form .checklabel {
	width: 70%;
}

/* 스크롤바 디자인 */
textarea::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    border-radius: 10px;
    background-color: #f2ede2;
}

textarea::-webkit-scrollbar {
    width: 12px;
    background-color: #f2ede2;
}

textarea::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
    background-color: #b3a78f;
}

.form-control::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    border-radius: 10px;
    background-color: #f2ede2;
}

.form-control::-webkit-scrollbar {
    width: 12px;
    background-color: #f2ede2;
}

.form-control::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
    background-color: #b3a78f;
}

</style>
<script>

    document.addEventListener("DOMContentLoaded", function() {
        var applicationRadio = document.getElementById("application");
        var applicationlabel = document.getElementById("applicationlabel");
        var concertRadio = document.getElementById("concert");
        var concertlabel = document.getElementById("concertlabel");
        
        applicationRadio.checked = true;
        
        applicationRadio.addEventListener('click', function() {
            window.location.href = '/usr/contactUs/application';
        });
        applicationlabel.addEventListener('click', function() {
            window.location.href = '/usr/contactUs/application';
        });

        concertRadio.addEventListener('click', function() {
            window.location.href = '/usr/contactUs/concert';   
        });
        concertlabel.addEventListener('click', function() {
            window.location.href = '/usr/contactUs/concert';   
        });
    });

</script>

<script>
	$(function() {
		$("#datepicker")
				.datepicker(
						{
							dateFormat : 'yy-mm-dd', //Input Display Format 변경
							showOtherMonths : true, //빈 공간에 현재월의 앞뒤월의 날짜를 표시
							showMonthAfterYear : true, //년도 먼저 나오고, 뒤에 월 표시
							changeYear : true, //콤보박스에서 년 선택 가능
							changeMonth : true, //콤보박스에서 월 선택 가능                
// 							showOn : "both", //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
// 							buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif", //버튼 이미지 경로
							buttonImageOnly : true, //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
							buttonText : "선택", //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
							yearSuffix : "년", //달력의 년도 부분 뒤에 붙는 텍스트
							monthNamesShort : [ '1', '2', '3', '4', '5', '6',
									'7', '8', '9', '10', '11', '12' ], //달력의 월 부분 텍스트
							monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
									'7월', '8월', '9월', '10월', '11월', '12월' ], //달력의 월 부분 Tooltip 텍스트
							dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ], //달력의 요일 부분 텍스트
							dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일',
									'금요일', '토요일' ], //달력의 요일 부분 Tooltip 텍스트
							yearRange : 'c-30:c+0'
						});
	});
	
	// 파일 업로드
</script>

<!-- 파일 업로드 -->
<script>
$(document).ready(function() {
    $("#file-profile").on('change', function() {
        var profilefile = $(this).val();
        $(".upload-profile").val(profilefile);
    });
    
    $("#file-resume").on('change', function() {
        var resumefile = $(this).val();
        $(".upload-resume").val(resumefile);
    });
});
	
</script>

<!-- 이메일 select -->
<script>
    $(function() {
        $('#select').change(function() {
            if ($('#select').val() == 'directly') {
                $('#textEmail').attr("disabled", false);
                $('#textEmail').val("");
                $('#textEmail').focus();
            } else {
                $('#textEmail').val($('#select').val());
            }
        })
    });
</script>

<section class="mt-8 text-xl px-4">
	<div class="signup-form">
		<form name="form" action="../member/doJoin" method="POST">
			<div>
				<div class="box radio-box">
					<input type="radio" id="concert" name="contactUs" class="form-check-input" value="2" required> <label for="open"
					id="concertlabel" class="formlabel text-lg mr-5">연주문의</label>
					<input type="radio" id="application" name="contactUs" class="form-check-input" value="1"
					required> <label for="open" id="applicationlabel" class="formlabel mr-8 text-lg">연주자 가입신청</label>
				</div>
				<div>
					<label for="username">이름</label> <input type="text" id="loginId" name="loginId" autocomplete="off" required>
				</div>
				<div>
					<label for="birth">생년월일</label> <input type="text" id="datepicker" name="birth" required max="" placeholder="생년월일 선택이 가능합니다.">
				</div>
				<div class = "mb-4">
					<label for="birth">성별</label> 
					<input type="radio" id="male" name="sex" class="form-check-input" value="1"
					required> <label for="open" id="sexlabel" class="formlabel mr-5 text-base">남성</label>
					<input type="radio" id="female" name="sex" class="form-check-input" value="2" required> <label for="open"
					id="sexlabel" class="formlabel text-base mr-5">여성</label>
				</div>
				<div>
					<label for="cellphoneNum">연락처</label> <input class="cellphoneNum" type="text" id="cellphoneNum"
						name="cellphoneNum" autocomplete="off" oninput="validateContactNumber(this)" maxlength="11"  placeholder="-없이 숫자만 입력가능합니다.">
				</div>
				<div>
			        <label for="email">이메일</label> 
			        <input type="text" class="email" id="emailId" value=""> 
					<span>@</span>
					<input id="textEmail" class="emailoption" placeholder="이메일을 선택하세요."> 
					<select id="select">
				        <option value="" disabled selected>E-Mail 선택</option>
				        <option value="naver.com" id="naver.com">naver.com</option>
				        <option value="hanmail.net" id="hanmail.net">hanmail.net</option>
				        <option value="gmail.com" id="gmail.com">gmail.com</option>
				        <option value="nate.com" id="nate.com">nate.com</option>
				        <option value="directly" id="textEmail">직접 입력하기</option>
			        </select>
			    </div>
				<div class="place mb-3">
					<label for="address">주소</label> <input type="text" class="postcode" id="postcode" name="postcode" placeholder="우편번호">
					<input type="button" onclick="execDaumPostcode()" class="findbutton" value="찾기"><br> <label for="address"></label> <input
						type="text" id="address" name="address" placeholder="주소"><br> <label for="address"></label> <input
						type="text" id="detailAddress" name="detailAddress" placeholder="상세주소"> <input type="text" id="extraAddress" name="extraAddress" placeholder="참고항목">
	
					<script>
						function execDaumPostcode() {
							new daum.Postcode(
									{
										oncomplete : function(data) {
											// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
											// 각 주소의 노출 규칙에 따라 주소를 조합한다.
											// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
											var addr = ''; // 주소 변수
											var extraAddr = ''; // 참고항목 변수
	
											//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
											if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
												addr = data.roadAddress;
											} else { // 사용자가 지번 주소를 선택했을 경우(J)
												addr = data.jibunAddress;
											}
	
											// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
											if (data.userSelectedType === 'R') {
												// 법정동명이 있을 경우 추가한다. (법정리는 제외)
												// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
												if (data.bname !== ''
														&& /[동|로|가]$/g
																.test(data.bname)) {
													extraAddr += data.bname;
												}
												// 건물명이 있고, 공동주택일 경우 추가한다.
												if (data.buildingName !== ''
														&& data.apartment === 'Y') {
													extraAddr += (extraAddr !== '' ? ', '
															+ data.buildingName
															: data.buildingName);
												}
												// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
												if (extraAddr !== '') {
													extraAddr = ' (' + extraAddr
															+ ')';
												}
												// 조합된 참고항목을 해당 필드에 넣는다.
												document
														.getElementById("extraAddress").value = extraAddr;
	
											} else {
												document
														.getElementById("extraAddress").value = '';
											}
	
											// 우편번호와 주소 정보를 해당 필드에 넣는다.
											document.getElementById('postcode').value = data.zonecode;
											document.getElementById("address").value = addr;
											// 커서를 상세주소 필드로 이동한다.
											document
													.getElementById("detailAddress")
													.focus();
										}
									}).open();
						}
					</script>
				</div>
				<div>
					<label for="email">전공악기</label> <input type="email" id="email" name="email" autocomplete="off" required>
				</div>
				<div>
					<label for="email">SNS ID</label> <input type="email" id="email" name="email" autocomplete="off" required>
				</div>
				<div>
					<label for="email">사진등록</label>
						<div class="filebox">
							<input class="upload-profile" placeholder="파일을 선택해주세요.">
    						<label for="file-profile" class="mb-2.5">파일찾기</label> 
    						<input type="file" id="file-profile">
						</div>
				</div>
				<div>
					<label for="email">연주이력</label> 
						<div class="filebox">
							<input class="upload-resume" placeholder="파일을 선택해주세요.">
    						<label for="file-resume" class="mb-2.5">파일찾기</label> 
    						<input type="file" id="file-resume">
						</div>
				</div>	
				<div>
					<label for="introduce" class="mb-2">자기소개</label> <textarea type="text" id="email" class="mb-2" name="email" autocomplete="off" required></textarea>
				</div>
				<div>
					<label for="positive" class="information mb-2">개인정보 수집 동의</label>
					<div class="form-control mb-3">
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의제1조 개인정보 수집에 대한 동의
					</div>
					<input type="checkbox" class="checkbox" id="personalInformationConsent" name="personalInformationConsent">
					<label for="personalInformationConsent" class="checklabel">개인정보 수집에 동의합니다.</label>
				</div>
			
			<div class="box center-text mt-5">
				<button type="submit" class="mr-3">신청</button>
				<button type="button" onclick="history.back();">뒤로가기</button>
			</div>
		</form>

		<script>
			// 전화번호 입력 시 숫자만 입력 가능하고 최대 11자리 가능
			function validateContactNumber(input) {
				// 숫자만 포함된 정규표현식
				var regex = /^[0-9]+$/;

				// 입력된 값에서 숫자만 추출
				var numericValue = input.value.replace(/\D/g, '');

				// 정규표현식에 맞지 않는 경우 입력값을 재설정
				if (!regex.test(numericValue)) {
					input.value = numericValue.substring(0,
							numericValue.length - 1);
				}
			}

		</script>
	</div>
</section>

<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>