<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--  <c:set var="main" value="MAIN"></c:set> --%>
<c:set var="pageTitle" value="MAIN"></c:set>
<%@ include file="../common/head.jspf"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${pageTitle }</title>
<link rel="stylesheet" type="text/css" href="acss/css/mogo.css">
<link
	href="https://fonts.googleapis.com/css?family=Kaushan+Script|Montserrat:300i,400,700&display=swap&subset=cyrillic-ext"
	rel="stylesheet">
<script src="https://use.fontawesome.com/692e9fe4aa.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

</head>



<style>
*, *:before, *:after {
	box-sizing: border-box;
	outline: none;
}

.page {
	overflow: hidden;
}

h1, h2, h3, h4, h5, h6 {
	margin: 0;
}

html, body {
	width: 100%;
	height: 100%;
}

* {
	box-sizing: border-box;
}

.center_y {
	position: relative;
	top: 50%;
	transform: translateY(-50%);
}

.center_x {
	position: relative;
	left: 50%;
	transform: translateX(-50%);
}

.slider {
	width: 100%;
	height: 100%;
	position: absolute;
}

.slider img {
	height: 100%;
	width: 100%;
	object-fit: cover;
}

.slider-arrows {
	color: white;
	font-size: 50px;
	cursor: pointer;
	position: absolute;
}

#arrow-prev {
	left: 20px;
	z-index: 1;
}

#arrow-next {
	right: 20px;
	z-index: 1;
}

#dots-wrapper {
	position: absolute;
	display: flex;
	bottom: 30px;
	z-index: 1;
}

.dot-navigation {
	width: 15px;
	height: 15px;
	border-radius: 100%;
	cursor: pointer;
	margin: 0 8px;
	border: 2px solid white;
	transition: .5s background-color;
}

.dot-navigation:hover {
	background-color: white;
}

.active-dot {
	background-color: white;
}

.fade {
	animation: fade 5s;
}

@
keyframes fade {form { opacity:.4;
	
}

to {
	opacity: 1;
}

}
hr {
	border: none;
	display: block;
	width: 100%;
	height: 1px;
	margin: 35px 0;
	background-color: #e5e5e5e5;
}

.container {
	width: 100%;
	max-width: 1230px;
	margin: 0 auto;
	padding: 0 15px;
}

.intro {
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	-webkit-background-size: cover;
	display: flex;
	flex-direction: column;
	justify-content: center;
	min-height: 820px;
	position: relative;
}

.intro_inner {
	width: 100%;
	max-width: 880px;
	margin: 0 auto;
	text-align: center;
}

.intro__title {
	font-size: 150px;
	color: #fff;
	font-weight: 700px;
	text-transform: uppercase;
	line-height: 1;
}

.intro__title:after {
	content: '';
	display: block;
	width: 60px;
	height: 3px;
	background-color: #fff;
	margin: 60px auto;
}

.intro__suptitle {
	margin-bottom: 20px;
	font-size: 72px;
	color: #fff;
	font-family: 'Kaushan Script', cursive;
}

.header {
	width: 100%;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 1000;
	padding-top: 13px;
}

.header.fixed {
	padding: 10px 0;
	background-color: #eb8b8d;
	position: fixed;
	top: 0;
	right: 0;
	left: 0;
	transform: translate3d(0, 0, 0);
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2)
}

.header.active {
	background-color: #eb8b8d;
}

.header-inner {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.logo {
	font-size: 30px;
	font-weight: 700;
	color: #fff;
}

.nav {
	font-size: 14px;
	text-transform: uppercase;
}

@media ( max-width : 1230px) {
	/* intro */
	.intro__title {
		font-size: 120px;
	}
	.intro__suptitle {
		font-size: 52px;
	}
	@media ( max-width : 990px) {
		/*header*/
		.header {
			padding: 10px 0;
		}
		/* intro */
		.intro__title {
			font-size: 32px;
		}
		.intro__suptitle {
			font-size: 80px; @media ( max-width : 770px) {
			/* intro */ .intro {
			min-height: 650px;
		}
		@media ( max-width : 575px) {
			/* intro */
			.intro__title {
				font-size: 22px;
			}
			.intro__suptitle {
				font-size: 40px;
			}
		}
	}
}
</style>



<body>
	<div class="page">

		<!-- 이 섹션은 다중 이미지 슬라이드쇼를 포함하고 있습니다 -->
		<section id="silder-container">

			<!-- 각 이미지는 고유한 ID를 가진 'slider' div 내에 포함됩니다 -->
			<div class="slider fade" id="slider-1">
				<img src="/resource/에오 트리오 사진.jpg" alt="">
			</div>
			<div class="slider fade" id="slider-2">
				<img src="/resource/허대욱 사진 2.jpg" alt="">
			</div>
			<div class="slider fade" id="slider-3">
				<img src="/resource/허대욱 사진 3.jpg" alt="">
			</div>

			<!-- 슬라이드 간 이동을 위한 내비게이션 화살표 -->
			<div class="arrows-wrrapper">
				<!-- 이전 화살표 -->
				<p class="slider-arrows center_y" id="arrow-prev">&#10094</p>
				<!-- 다음 화살표 -->
				<p class="slider-arrows center_y" id="arrow-next">&#10095</p>
			</div>

			<!-- 현재 활성화된 슬라이드를 나타내는 점들 -->
			<div class="center_x" id="dots-wrapper">
				<!-- 활성화된 점 -->
				<div class="dot-navigation active-dot"></div>
				<!-- 비활성화된 점들 -->
				<div class="dot-navigation"></div>
				<div class="dot-navigation"></div>
			</div>
			<div class="intro" id="intro">
				<div class="container">
					<div class="intro_inner">
						<h2 class="intro__suptitle">IMMusic & Art</h2>
						<h1 class="intro__title">
							<a href="/usr/about">Welcome</a>
						</h1>
						<!-- 					<a href="#" class="btn">Learn More</a> -->
					</div>
				</div>
			</div>
		</section>


		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<script src="acss/js/app.js"></script>
	</div>
</body>
		<script>
			// 현재 슬라이드의 인덱스를 저장하는 변수 초기화
			var sliderIndex = 0;

			// 초기에 첫 번째 슬라이드를 표시하는 함수 호출
			showSlider(sliderIndex);

			// 슬라이드를 표시하는 함수 정의
			function showSlider(index) {
				// 슬라이드와 점들을 선택
				var slider = document.querySelectorAll('.slider');
				var dots = document.querySelectorAll('.dot-navigation');

				// 인덱스가 슬라이드 개수를 초과하면 첫 번째 슬라이드로 이동
				if (index >= slider.length)
					sliderIndex = 0;

				// 인덱스가 음수면 마지막 슬라이드로 이동
				if (index < 0)
					sliderIndex = slider.length - 1;

				// 모든 슬라이드를 숨기고, 모든 점을 활성화하지 않은 상태로 초기화
				for (var i = 0; i < slider.length; i++) {
					slider[i].style.display = "none";
					dots[i].classList.remove('active-dot');
				}

				// 현재 슬라이드를 표시하고, 해당 슬라이드의 점을 활성화
				slider[sliderIndex].style.display = "block";
				dots[sliderIndex].classList.add('active-dot');
			}

			// 이전 화살표 클릭 시 이벤트 리스너 추가
			document.querySelector('#arrow-prev').addEventListener('click',
					function() {
						showSlider(--sliderIndex);
					});

			// 다음 화살표 클릭 시 이벤트 리스너 추가
			document.querySelector('#arrow-next').addEventListener('click',
					function() {
						showSlider(++sliderIndex);
					});

			// 각 점 클릭 시 이벤트 리스너 추가
			document.querySelectorAll('.dot-navigation').forEach(
					function(element) {
						element.addEventListener('click', function() {
							// 점의 인덱스를 찾아 해당 슬라이드 표시
							var dots = Array.prototype.slice
									.call(this.parentElement.children);
							var dotIndex = dots.indexOf(element);
							showSlider(sliderIndex = dotIndex);
						});
					});

			// 일정 시간마다 자동으로 슬라이드 전환
			setInterval(function() {
				showSlider(++sliderIndex);
			}, 3500);
		</script>

</html>
<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>