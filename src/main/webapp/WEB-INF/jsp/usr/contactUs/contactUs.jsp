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
	background-color: #800808;
	color: white;
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
    
</style>

<script>
        $(function() {
            $("#birthdate").datepicker({
            	dateFormat: 'yy-mm-dd',
                changeMonth: true,
                changeYear: true,
                yearRange: 'c-100:c+0'
        });
</script>

<script>

	// 폼 이동 이벤트
	
	var goldRadio = document.getElementById("gold");
    // 연주 문의 라디오 버튼
    var silverRadio = document.getElementById("silver");
    
	artistRadio.addEventListener('click', function() {
        // 페이지 이동
        window.location.href = '/usr/contactUs/artist';
    });

    // 연주 문의 라디오 버튼 클릭 이벤트 처리
    silverRadio.addEventListener('click', function() {
        // 페이지 이동
        window.location.href = '/usr/contactUs/contactUs';
    });
    

	var ajaxCalled = false;

	function callByAjax(loginId) {
		
		var form = document.form1;
		
		var action = "../member/doAction";
		var loginId = form.loginId.value;
		
		$.get(action, {
			loginId : loginId,
		}, function(data) {
			$('.msg').text(data);
			ajaxCalled = true;
			console.log(ajaxCalled);
			updatePage();
		}, 'html');
		
	}
	
	function updatePage() {
        if (ajaxCalled) {
            // ajaxCalled 값이 true일 때만 메시지를 표시합니다.
            $('.msg').show();
        }
    }
</script>

<section class="mt-8 text-xl px-4">
	<div class="signup-form">
		<form name="form1" action="../member/doJoin" method="POST">
			<div class="text">*는 필수정보</div>
			<div>
				<label for="level">*등급:</label>
		        <input type="radio" id="artist" name="level" class="form-check-input" value="1" required>
		        <label for="open" class="form-check-label mr-5 text-xs" onclick = "">연주자 가입신청</label>
		        <input type="radio" id="performance" name="level" class="form-check-input" value="2" required>
		        <label for="open" class="form-check-label text-xs mr-5">연주문의</label>
			</div>
			<div>
				<label for="username">*아이디:</label> <input type="text" id="loginId" name="loginId" autocomplete="off" required>
				<%-- console.log("${ajaxCalled}"); --%>
				<div class="msg" style="display: none;"></div>
			</div>

			<div>
				<label for="password">*비밀번호:</label> <input type="password" id="loginPw" name="loginPw" autocomplete="off"
					onclick="callByAjax();" required>
			</div>

			<div>
				<label for="birth">*생년월일:</label> <input type="date" id="birth" name="birth" required max="">
			</div>

			<div>
				<label for="name">*이름:</label> <input type="text" id="text" name="mname" autocomplete="off" required>
			</div>

			<div>
				<label for="cellphoneNum">전화번호:</label> <input class="cellphoneNum" type="text" id="cellphoneNum"
					name="cellphoneNum" autocomplete="off" oninput="validateContactNumber(this)" maxlength="11">
			</div>
			<div class="info">※ -없이 숫자만 입력가능합니다.</div>
			<div>
				<label for="email">*이메일:</label> <input type="email" id="email" name="email" autocomplete="off" required>
			</div>

			<div>
				<label for="address">주소:</label> <input type="text" class="w-20" id="postcode" name="postcode" placeholder="우편번호">
				<input type="button" onclick="execDaumPostcode()" value="찾기"><br> <label for="address"></label> <input
					type="text" id="address" name="address" placeholder="주소"><br> <label for="address"></label> <input
					type="text" class="w-25" id="detailAddress" name="detailAddress" placeholder="상세주소"><br> <label
					for="address"></label> <input type="text" class="w-20" id="extraAddress" name="extraAddress" placeholder="참고항목">

				<script>
				    function execDaumPostcode() {
				        new daum.Postcode({
				            oncomplete: function(data) {
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
				                if(data.userSelectedType === 'R'){
				                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				                        extraAddr += data.bname;
				                    }
				                    // 건물명이 있고, 공동주택일 경우 추가한다.
				                    if(data.buildingName !== '' && data.apartment === 'Y'){
				                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				                    }
				                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				                    if(extraAddr !== ''){
				                        extraAddr = ' (' + extraAddr + ')';
				                    }
				                    // 조합된 참고항목을 해당 필드에 넣는다.
				                    document.getElementById("extraAddress").value = extraAddr;
				                
				                } else {
				                    document.getElementById("extraAddress").value = '';
				                }
				
				                // 우편번호와 주소 정보를 해당 필드에 넣는다.
				                document.getElementById('postcode').value = data.zonecode;
				                document.getElementById("address").value = addr;
				                // 커서를 상세주소 필드로 이동한다.
				                document.getElementById("detailAddress").focus();
				            }
				        }).open();
				    }
				</script>
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
        
     	// 페이지 로딩 시에 updateMaxDate() 호출
        document.addEventListener('DOMContentLoaded', function() {
		    updateMaxDate();  // 이벤트는 문서 내용이 JavaScript를 통해 안전하게 조작하고 액세스할 수 있는 준비가 된 시점, 이벤트는 문서 내용이 JavaScript를 통해 안전하게 조작하고 액세스할 수 있는 준비가 된 시점
		});
     	
     	// 날짜 선택
        function updateMaxDate() {
            var today = new Date().toISOString().split('T')[0];
            document.getElementById('birth').max = today;
        }
			
	    </script>
	</div>
</section>

<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>