<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ABOUT"></c:set>
<%@ include file="../common/head.jspf"%>



<section>

	<div class="greet-bg">
		<p>
			IMMusic <br>& Art
		</p>
	</div>

	<div class="greet">
		<p>아이엠뮤직앤아트는 클래식음악계를 이끌어 갈 재능 있는 예술가를 발굴·육성합니다 체계적인 매니지먼트와 전문
			교육·지원을 통해 예술가가 자신의 예술 활동에 집중할 수 있도록 지원합니다.</p>
	</div>

</section>

<div class="section ">
				<div class="container">
					<div class="section_heder">
						<h3 class="section_suptitle">Albums</h3>
						<h2 class="section_title">앨범</h2>
						<div class="section__Text">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum atque, nihil impedit laboriosam ullam
								ipsa voluptate iure quis corrupti totam, nesciunt nemo voluptatem possimus doloribus similique perferendis
								blanditiis architecto? Ut!</p>
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
							<a href="https://youtu.be/KebPgX7_sGA"> <img class="logo_imge" src="/resource/음악앨범 3.jpg">
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



<style>
body {
	overflow-x: hidden;
}

section {
	padding-bottom: 200px;
}

/* .greet-bg {} -> common.css 파일에 있음*/
.greet {
	background-color: white;
	margin: auto;
	width: 1200px;
	height: 700px;
	/* 	border: 2px solid red; */
	background-color: rgba(255, 255, 255, 0.8);
	position: relative; opacity : 0; /* 초기에 투명도를 0으로 설정 */
	top: 100px;
	opacity: 0; /* 아래에서 시작할 위치 조정 */
}

.greet>p {
	font-size: 50px;
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