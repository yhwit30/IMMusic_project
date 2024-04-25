<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ABOUT"></c:set>
<%@ include file="../common/head.jspf"%>


<div class="greet-bg">
	<p>
		IMMusic <br>& Art
	</p>
</div>


<section class="section-greet">
	<div class="greet">
		<p>아이엠뮤직앤아트는 클래식음악계를 이끌어 갈 재능 있는 예술가를 발굴·육성합니다.</p>
		<p>체계적인 매니지먼트와 전문 교육·지원을 통해 예술가가 자신의 예술 활동에 집중할 수 있도록 지원합니다.</p>
	</div>

	<div>
		<!-- 	<p><img src="/resource/IMMusicLogo자름.png" alt="" /></p> -->
		<p>IMMusic & Art</p>
	</div>


</section>

<div class="section stati">
	<div class="container">
		<div class="section_heder">
			<h3 class="section_suptitle">IMMusic & Art</h3>
			<h2 class="section_title">꾸미기</h2>
			<div class="section__Text">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Dolorum atque, nihil impedit laboriosam ullam ipsa voluptate iure
					quis corrupti totam, nesciunt nemo voluptatem possimus doloribus
					similique perferendis blanditiis architecto? Ut!</p>
			</div>
		</div>
		<div class="logos">
			<div class="logo-items">
				<img class="logo_imge" src="/resource/음악앨범 1.jpg">
				<div class="card-prof2">Will It Be Spring Tomorrow?</div>
			</div>
			<div class="logo-items">
				<img class="logo_imge" src="/resource/음악앨범 2.jpg">
				<div class="card-prof2">Interval Of Parallel</div>
			</div>
			<div class="logo-items">
				<a href="https://youtu.be/KebPgX7_sGA"> <img class="logo_imge"
					src="/resource/음악앨범 3.jpg">
				</a>
				<div class="card-prof2">Trigram</div>
			</div>
			<div class="logo-items">
				<img class="logo_imge" src="/resource/음악앨범 4.jpg">
				<div class="card-prof2">Le Moment Disperse</div>
			</div>
			<div class="logo-items ">
				<img class="logo_imge " src="/resource/음악앨범 5.jpg">
				<div class="card-prof2">To The West</div>
			</div>
			<div class="logo-items ">
				<img class="logo_imge" src="/resource/음악앨범 6.jpg">
				<div class="card-prof2">스페인의 인상</div>
			</div>

		</div>
	</div>
</div>


<div class="section ">
	<div class="container">
		<div class="section_heder">
			<h3 class="section_suptitle">IMMusic & Art</h3>
			<h2 class="section_title">꾸미기</h2>
			<div class="section__Text">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Dolorum atque, nihil impedit laboriosam ullam ipsa voluptate iure
					quis corrupti totam, nesciunt nemo voluptatem possimus doloribus
					similique perferendis blanditiis architecto? Ut!</p>
			</div>
		</div>
		<div class="logos">
			<div class="logo-items">
				<img class="logo_imge" src="/resource/블로그사진1.jpg">
				<div class="card-prof2">lorem</div>
			</div>
			<div class="logo-items">
				<img class="logo_imge" src="/resource/블로그사진2.jpg">
				<div class="card-prof2">ipsum</div>
			</div>
			<div class="logo-items">
				<a href="https://youtu.be/KebPgX7_sGA"> <img class="logo_imge"
					src="/resource/블로그사진3.jpg">
				</a>
				<div class="card-prof2">dolor</div>
			</div>

		</div>
	</div>
</div>


<style>
body {
	overflow-x: hidden;
}

.section-greet {
	padding-bottom: 200px;
}

.section-greet>div:nth-child(2) {
	text-align: center;
	font-weight: bold;
	font-family: 'Arita buri';
	font-size: 50px;
}

/* .greet-bg {} -> common.css 파일에 있음*/
.greet {
	background-color: white;
	margin: auto;
	width: 1200px;
	height: 700px;
	/* 	border: 2px solid red; */
	background-color: rgba(255, 255, 255, 0.8);
	position: relative;
	opacity: 0; /* 초기에 투명도를 0으로 설정 */
	top: 100px;
	opacity: 0; /* 아래에서 시작할 위치 조정 */
}

.greet>p:nth-child(1) {
	font-size: 50px;
}

.greet>p:nth-child(2) {
	font-size: 20px;
}

.stati {
	background-color: #f2ede2;
}

.section {
	padding: 100px;
}

.section-gray {
	background-color: #f8f8f8;
}

.section_heder {
	width: 100%;
	max-width: 950px;
	margin: 0 auto 50px;
	text-align: center;
}

.section_suptitle {
	font-size: 24px;
	color: #333;
	font-family: 'Kaushan Script', cursive;
}

.section_title {
	font-size: 30px;
	font-weight: 700;
	color: #333;
	text-transform: uppercase;
}

.section_title:after {
	content: "";
	display: block;
	width: 60px;
	height: 3px;
	background-color: #f38181;
	margin: 30px auto;
}

.section__Text {
	font-size: 15px;
	color: #999;
}

.logo_imge {
	display: block;
	max-width: 100%;
	height: auto;
}

.logos {
	display: flex;
	justify-content: space-around;
	align-items: center;
	margin: 0 -15px;
}

.logo-items {
	padding: 0 15px;
}
</style>



<script>
	$(document).ready(function() {
		$('.greet').animate({
			top : 0,
			opacity : 1
		}, {
			duration : 1500,
			start : function() {
				$(this).fadeIn(); // fadeIn과 animate를 동시에 실행
			}
		});
	});
</script>


<%@ include file="../common/foot.jspf"%>