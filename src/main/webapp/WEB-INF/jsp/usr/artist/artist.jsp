<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTIST"></c:set>
<%@ include file="../common/head.jspf"%>


<section class="container_artist">
	<div class="category_container">
		<div class="content">
			<img src="/resource/임재민 프로필사진2.png" class="professio_image"
				alt="Profession" /> <img src="/resource/임재민 프로필사진.jpg"
				class="profile_image" alt="Profile" />
			<div class="profile_detail">
				<span>임재민</span>
				<p>UI/UX Designer + Graphic Designer</p>
			</div>

			<div class="wrapper">
				<div class="profile_quote">
					<p>"UI is the saddle, the stirrups, & the reins. UX is the
						feeling you get being able to ride the horse."</p>
				</div>
			</div>

		</div>
		<div class="content">
			<img src="/resource/구보근 프로필사진.png" class="profession_image"
				alt="Profession" /> <img src="/resource/구보근 프로필사진.png"
				class="profile_image" alt="Profile" />
			<div class="profile_detail">
				<span>구보근</span>
				<p>Photographer + Model</p>
			</div>
			<div class="wrapper">
				<div class="profile_quote">
					<p>"If you see something that moves you, and then snap it, you
						keep a moment."</p>
				</div>
			</div>
		</div>
		<div class="content">
			<img src="/resource/허원경 프로필사진.png" class="profession_image"
				alt="Profession" /> <img src="/resource/허원경 프로필사진2.jpg"
				class="profile_image" alt="Profile" />
			<div class="profile_detail">
				<span>허원경</span>
				<p>Fashion Designer + Model</p>
			</div>
			<div class="wrapper">
				<div class="profile_quote">
					<p>"My mission in life is not merely to survive, but to thrive
						and to do so with some passion, some compassion, some humor, and
						some style."</p>
				</div>
			</div>
		</div>
		<div class="content">
			<img src="/resource/허대욱 프로필사진.jpg" class="profession_image"
				alt="Profession" /> <img src="/resource/허대욱 프로필사진2.jpg"
				class="profile_image" alt="Profile" />
			<div class="profile_detail">
				<span>허대욱</span>
				<p>Fashion Designer + Model</p>
			</div>
			<div class="wrapper">
				<div class="profile_quote">
					<p>"My mission in life is not merely to survive, but to thrive
						and to do so with some passion, some compassion, some humor, and
						some style."</p>
				</div>
			</div>
		</div>
	</div>
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
:root {
	--light: #ffe6e6;
	--dark: #0c0c0c;
}

.container_artist {
	overflow: clip;
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 2rem 5rem;
	width: 100%;
	height: 100dvh;
	/* background-image: var(--bg-color); */
}

.category_container {
	--gap: 0.5rem;
	display: flex;
	justify-content: space-between;
	align-items: center;
	flex-wrap: nowrap;
	gap: calc(var(--gap)* 2);
	width: 100%;
	height: 100%;
}

.content {
	cursor: pointer;
	overflow: clip;
	position: relative;
	z-index: 0;
	display: flex;
	flex-direction: column;
	justify-content: flex-end;
	gap: 1.5rem;
	padding: 2.5rem;
	width: calc(( 100%/ 3)- var(--gap));
	height: 100%;
	border-radius: 1rem;
	transition: width 0.5s ease-in-out;
}

.content:hover {
	width: calc(70% - var(--gap));
}

.content::before {
	content: "";
	position: absolute;
	z-index: -10;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: var(--dark);
	opacity: 0.6;
}

.content img {
	position: absolute;
	z-index: -20;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center;
}

.profile_image {
	opacity: 0;
	transition: opacity 0.3s ease-in-out;
}

.profile_detail {
	display: flex;
	flex-direction: column;
	gap: 0.5rem;
	width: 12rem;
	transition: transform 0.5s cubic-bezier(0.23, 0.93, 0.77, 1) 0.01s;
}

.profile_detail span {
	font-size: 1.5rem;
	font-weight: 600;
	color: var(--light);
	text-wrap: nowrap;
}

.profile_detail p {
	font-size: 0.75rem;
	font-weight: 500;
	color: var(--light);
}

.profile_quote {
	min-height: 0;
	transform: translateY(50%);
	opacity: 0;
	transition: opacity 0.8s ease-in-out, transform 0.8s
		cubic-bezier(0.23, 0.93, 0.77, 1) 0.01s;
}

.profile_quote p {
	font-size: 1.5rem;
	font-weight: 600;
	color: var(--light);
	transform: translate(0, calc(( 1 - var(--active))* (100%+ 2.5rem)));
	transition: transform 0.5s cubic-bezier(0.23, 0.93, 0.77, 1) 0.1s;
}

.wrapper {
	display: grid;
	grid-template-rows: 0fr;
	overflow: hidden;
	transition: grid-template-rows 0.5s cubic-bezier(0.23, 0.93, 0.77, 1)
		0.01s;
}

.content:hover .wrapper {
	grid-template-rows: 1fr;
}

.content:hover .profile_quote {
	transform: none;
	opacity: 1;
}
</style>








<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>