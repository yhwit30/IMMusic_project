<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ABOUT"></c:set>
<%@ include file="../common/head.jspf"%>



<section class="flex justify-around">

	<div>
		<img id="heoImage" src="/resource/허원경 프로필사진.jpg" />

	</div>

	<div>인사말 Lorem ipsum dolor sit amet, consectetur adipisicing
		elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut esse
		voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa. Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut
		esse voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut
		esse voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut
		esse voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut
		esse voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut
		esse voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.</div>

</section>


<div class="stati">
	<div class="container">
		<div class="stat_item">
			<h2 class="section_title">비바기타앙상블 연혁</h2>
			<div class="stat_count">2019년</div>
			<div class="stat_text_item">
				<div class="stat_text">4월 10일 클래식기타와 플라멩코의 밤</div>
				<div class="stat_text">주최: 주한 스페인 대사관, 연세대학교 학부대학 RC교육원</div>
				<div class="stat_text">장소: 연세대학교 국제캠퍼스 교육관</div>
			</div>

			<div class="stat_text_item">
				<div class="stat_text">6월 15일 비바기타 허원경 임재민 2인 연주회</div>
				<div class="stat_text">주최: 부산 골방 프로젝트</div>
				<div class="stat_text">장소: 골방프로젝트</div>
			</div>

			<div class="stat_text_item">
				<div class="stat_text">8월 13~18일 제5회 한국 국제 기타 페스티벌</div>
				<div class="stat_text">주최: 양평군, 한국기타협회</div>
				<div class="stat_text">장소: 양평군 백하헌</div>
			</div>

			<div class="stat_item">
				<div class="stat_count">2021년</div>
				<div class="stat_text_item">
					<div class="stat_text">11월4일 이재삼 작가와 함께 하는 연주회</div>
					<div class="stat_text">주최: 양평문화만들기</div>
					<div class="stat_text">장소: 이재삼 작가 작업실</div>
				</div>
			</div>

			<div class="stat_item">
				<div class="stat_count">2022년</div>
				<div class="stat_text_item">
					<div class="stat_text">12월 3일 허병훈 작가와 만남의 시간</div>
					<div class="stat_text">장소: 온양민속박물관</div>
				</div>
			</div>
			<div class="stat_item">
				<div class="stat_count">2023년</div>
				<div class="stat_text_item">
					<div class="stat_text">3월 11, 25, 4월 1, 15, 29일 클래식기타연주클리닉</div>
					<div class="stat_text">장소: 영등포 술술센터 4층 술술홀</div>
				</div>
			</div>

		</div>

	</div>
</div>

<style>
#heoImage {
	width: 600px;
	height: 700px;
	object-fit: cover;
	border: 2px solid gold;
}

section {
	padding-bottom: 200px;
}

section>div:nth-child(2) {
	width: 600px;
	height: 700px;
	border: 2px solid red;
}
</style>


<%@ include file="../common/foot.jspf"%>