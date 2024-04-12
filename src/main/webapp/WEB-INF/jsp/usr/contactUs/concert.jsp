<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="CONTACT US"></c:set>
<%@ include file="../common/head.jspf"%>

<style>
.signup-form {
	max-width: 380px;
	background-color: rgba(255, 255, 255, 0.4);
	margin: 100px auto;
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

.signup-form div:last-child {
	text-align: center;
	padding-right: 40px;
}

.signup-form label {
	width: 20%;
	display: inline-block;
}

.signup-form div .msg {
	color: #800808;
	font-size: 0.75rem;
}

.signup-form input {
	padding: 5px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.signup-form .form-check-label {
    width: 90px;
    height: 15px; /* 원하는 크기로 설정하세요 */
    margin: 0; /* 기본 마진 제거 */
}

.signup-form .cellphoneNum {
	margin-bottom: 0px;
}

.signup-form button {
	background-color: #f2ede2;
	color: black;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 0.75rem;
}

.signup-form button:hover {
	background-color: #260301;
}

/* 안내문구 */
.signup-form .info {
	font-size: 0.75rem;
	color: #a32222;
}

textarea {
	border: 1px solid #ccc;
	border-radius: 4px;
	width: 85%;
	display: flex;
	align-items: flex-end;
}
   
</style>

<script>

    document.addEventListener("DOMContentLoaded", function() {
        var applicationRadio = document.getElementById("application");
        var concertRadio = document.getElementById("concert");
        
        concertRadio.checked = true;
        
        applicationRadio.addEventListener('click', function() {
            window.location.href = '/usr/contactUs/application';
        });

        concertRadio.addEventListener('click', function() {
            window.location.href = '/usr/contactUs/concert';
            
        });
    });

</script>
<section class="mt-8 text-xl px-4">
	<div class="signup-form">
		<form name="form1" action="" method="POST">
			<div>
				<label for="contactUs">문의:</label>
				<input type="radio" id="application" name="contactUs" class="form-check-input" value="1"
				required> <label for="open" class="form-check-label mr-5 text-xs">연주자 가입신청</label>
				<input type="radio" id="concert" name="contactUs" class="form-check-input" value="2" required> <label for="open"
				class="form-check-label text-xs mr-5">연주문의</label>
			</div>
			<div>
				<label for="username">이름:</label> <input type="text" id="loginId" name="loginId" autocomplete="off" required>
				<%-- console.log("${ajaxCalled}"); --%>
				<div class="msg" style="display: none;"></div>
			</div>

			<div>
				<label for="email">이메일:</label> <input type="email" id="email" name="email" autocomplete="off" required>
			</div>

			<div>
				<label for="cellphoneNum">전화번호:</label> <input class="cellphoneNum" type="text" id="cellphoneNum"
					name="cellphoneNum" autocomplete="off" oninput="validateContactNumber(this)" maxlength="11">
			</div>
			<div class="info">※ -없이 숫자만 입력가능합니다.</div>

			<div>
				<label for="name">공연날짜:</label> <input type="text" id="text" name="mname" autocomplete="off" required>
			</div>

			<div>
				<label for="email">공연장소:</label> <input type="email" id="email" name="email" autocomplete="off" required>
			</div>

			<div>
				<label for="text">문의사항:</label> <textarea id="text" name="text" autocomplete="off" required></textarea>
			</div>

			<div class="center-text mt-5">
				<button type="submit">가입</button>
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
                input.value = numericValue.substring(0, numericValue.length - 1);
            }
        }

	    </script>
	</div>
</section>

<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>