<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MAIN"></c:set>

<%@ include file="../common/head.jspf"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Document</title>
<link rel="stylesheet" type="text/css" href="acss/css/mogo.css">
<link
	href="https://fonts.googleapis.com/css?family=Kaushan+Script|Montserrat:300i,400,700&display=swap&subset=cyrillic-ext"
	rel="stylesheet">
<script src="https://use.fontawesome.com/692e9fe4aa.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

</head>
<body>
	<div class="page">

		<div class="intro" id="intro">
			<div class="container">
				<div class="video-container">
					<video muted autoplay loop class="fullscreen-video">
						<source src="/resource/IMMusicVideo.mp4" type="video/mp4">
					</video>
				</div>

				<div class="intro_inner">
					<h2 class="intro__suptitle">IMMusic & Art</h2>
					<h1 class="intro__title">Welcome</h1>
					<a href="#" class="btn">Learn More</a>
				</div>
			</div>
		</div>


		<section class="section" id="about">
			<div class="container">

				<div class="section_heder">
					<h3 class="section_suptitle">IMMusic & Art</h3>
					<h2 class="section_title">News & Show</h2>
					<div class="section__Text">
						<p>비바기타앙상블 주요 뉴스나 공연 소식</p>
					</div>
				</div>

				<div class="cards">
					<div class="card__item">
						<div class="inner-card">
							<div class=" card-imag">
								<img src="/resource/에오 트리오 사진.jpg" alt="Изображение">
								<div class="card_text">
									<a href="https://blog.naver.com/jazzjarasum/221102783565">피아니스트
										허대욱, 에오 트리오로 만나다.</a>
								</div>
							</div>
						</div>
					</div>
					<div class="card__item">
						<div class="inner-card">
							<div class="card-imag">
								<img src="https://i.postimg.cc/y30W4YgS/2.jpg" alt="Изображение">
								<div class="card_text">
									<a href="https://blog.naver.com/jazzjarasum/221102783565">재즈피아니스트
										'허대욱'의 유럽과 클래식</a>
								</div>
							</div>
						</div>
					</div>
					<div class="card__item">
						<div class="inner-card">
							<div class="card-imag">
								<img src="https://i.postimg.cc/HjMr73Zs/3.jpg" alt="Изображение">
								<div class="card_text">super team</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>

		<div class="stati">
			<div class="container">

				<div class="stat">

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

			
			<section class="section">
				<div class="container">
					<div class="section_heder">
						<h3 class="section_suptitle">Who we you</h3>
						<h2 class="section_title">비바기타앙상블 단원 소개</h2>
						<div class="section__Text">
							<p>“비바기타앙상블”은 2012년부터 기타리스트 허원경이 이끄는 앙상블 팀으로 서울대학교 동문으로 이루어진
								클래식기타 연주팀이다.</p>
						</div>
					</div>
					

					<div class="cards">
						<div class="card__item">
							<div class="inner-card">
								<div class=" card-imag">
									<img src="/resource/구보근 프로필사진.png" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-instagram"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="card-info">
								<div class="card-name">구보근</div>
								<div class="card-prof">단원(클래식 기타)</div>
							</div>
						</div>
						<div class="card__item">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/원유현 프로필사진.png" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-instagram"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="card-info">
								<div class="card-name">원유현</div>
								<div class="card-prof">단원(클래식 기타)</div>
							</div>
						</div>
						<div class="card__item">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/임재민 프로필사진2.png" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-instagram"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="card-info">
								<div class="card-name">임재민</div>
								<div class="card-prof">단원(클래식 기타)</div>
							</div>
						</div>
						<div class="card__item">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/허원경 프로필사진.png" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-instagram"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="card-info">
								<div class="card-name">허원경</div>
								<div class="card-prof">리더(클래식 기타)</div>
							</div>
						</div>
						<div class="card__item">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/허대욱 프로필사진.jpg" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-instagram"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="card-info">
								<div class="card-name">허대욱</div>
								<div class="card-prof">단원(재즈 피아노)</div>
							</div>
						</div>
						<div class="card__item">
							<div class="inner-card">
								<div class="card-imag">
									<img src="" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i
												class="fab fa-instagram"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="card-info">
								<div class="card-name">신우철</div>
								<div class="card-prof">단원(매니저)</div>
							</div>
						</div>
					</div>
			</section>

			<div class="section section-gray">
				<div class="container">
					<div class="logos">
						<div class="logo-items">
							<img class="logo_imge" src="https://i.postimg.cc/bScGKZT1/12.png">
						</div>
						<div class="logo-items">
							<img class="logo_imge" src="https://i.postimg.cc/fVT3nnxq/13.png">
						</div>
						<div class="logo-items">
							<img class="logo_imge" src="https://i.postimg.cc/nC1sPcQQ/14.png">
						</div>
						<div class="logo-items">
							<img class="logo_imge" src="https://i.postimg.cc/t7WnFzqk/15.png">
						</div>
						<div class="logo-items ">
							<img class="logo_imge "
								src="https://i.postimg.cc/2LQqmCcM/16.png">
						</div>
						<div class="logo-items ">
							<img class="logo_imge" src="https://i.postimg.cc/mt4zjFhs/17.png">
						</div>

					</div>
				</div>
			</div>
			<section class="section" id="work">
				<div class="container">
					<div class="section_heder">
						<h3 class="section_suptitle">Who we do</h3>
						<h2 class="section_title">same of our work</h2>
						<div class="section__Text">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Dolorum atque, nihil impedit laboriosam ullam ipsa voluptate
								iure quis corrupti totam, nesciunt nemo voluptatem possimus
								doloribus similique perferendis blanditiis architecto? Ut!</p>
						</div>
					</div>
				</div>
				<div class="works">
					<div class="works__col">
						<div class="works-item">
							<img class="work__image"
								src="https://i.postimg.cc/bdw24zr4/5.jpg" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
						<div class="works-item">
							<img class="work__image"
								src="https://i.postimg.cc/56v9RGBZ/6.jpg" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
					</div>
					<div class="works__col">
						<div class="works-item">
							<img class="work__image"
								src="https://i.postimg.cc/WhcW7SM1/2.jpg" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
						<div class="works-item">
							<img class="work__image"
								src="https://i.postimg.cc/0MTj6qG0/4.jpg" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
					</div>
					<div class="works__col">
						<div class="works-item">
							<img class="work__image"
								src="https://i.postimg.cc/nM9nX5PC/3.jpg[/img][/url]" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
					</div>
					<div class="works__col">

						<div class="works-item">
							<img class="work__image"
								src="https://i.postimg.cc/3Wvfpz0q/1.jpg" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
						<div class="works-item">
							<img class="work__image"
								src="https://i.postimg.cc/pmMjG4SS/7.jpg" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
					</div>
			</section>
		

			

			<section class="section">
				<div class="container">
					<div class="section_heder">
						<h3 class="section_suptitle">Our Storis</h3>
						<h2 class="section_title">lates blog</h2>
					</div>
					<div class="blog">
						<div class="blo_item">
							<div class="blog-header">
								<a href="#"> <img class="blog_img"
									src="https://i.postimg.cc/prqkjRdk/5.jpg" alt="">
								</a>
								<div class="blog_date">
									<div class="blog-date-day">15</div>
									Jan
								</div>
							</div>
							<div class="blog-content">
								<div class="blog_title">
									<a href="#">Lorem ipsum dolor sit amet.</a>
								</div>
								<div class="blog-text">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Sed perspiciatis magni,
									reprehenderit doloribus aliquid saepe commodi sit dolor, rem
									earum!</div>
							</div>
							<div class="blog_footer">
								<div class="blog-stat">
									<span class="blog-stat-item"><i class="far fa-eye"></i>542</span>
									<span class="blog-stat-item"><i
										class="far fa-comment-dots"></i>17</span>
								</div>
							</div>
						</div>
						<div class="blo_item">
							<div class="blog-header">
								<a href="#"> <img class="blog_img"
									src="https://i.postimg.cc/bwGLGXfH/6.jpg" alt="">
								</a>
								<div class="blog_date">
									<div class="blog-date-day">15</div>
									Jan
								</div>
							</div>
							<div class="blog-content">
								<div class="blog_title">
									<a href="#">Lorem ipsum dolor sit amet.</a>
								</div>
								<div class="blog-text">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Sed perspiciatis magni,
									reprehenderit doloribus aliquid saepe commodi sit dolor, rem
									earum!</div>
							</div>
							<div class="blog_footer">
								<div class="blog-stat">
									<span class="blog-stat-item"><i class="far fa-eye"></i>542</span>
									<span class="blog-stat-item"><i
										class="far fa-comment-dots"></i>17</span>
								</div>
							</div>
						</div>
						<div class="blo_item">
							<div class="blog-header">
								<a href="#"> <img class="blog_img"
									src="https://i.postimg.cc/bwGLGXfH/6.jpg" alt="">
								</a>
								<div class="blog_date">
									<div class="blog-date-day">15</div>
									Jan
								</div>
							</div>
							<div class="blog-content">
								<div class="blog_title">
									<a href="#">Lorem ipsum dolor sit amet.</a>
								</div>
								<div class="blog-text">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Sed perspiciatis magni,
									reprehenderit doloribus aliquid saepe commodi sit dolor, rem
									earum!</div>
							</div>
							<div class="blog_footer">
								<div class="blog-stat">
									<span class="blog-stat-item"><i class="far fa-eye"></i>542</span>
									<span class="blog-stat-item"><i
										class="far fa-comment-dots"></i>17</span>
								</div>
							</div>
						</div>
					</div>
					<!-- blog-->
				</div>
			</section>

			
		</div>



		<script type="text/javascript"
			src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<script src="acss/js/app.js"></script>
	</div>
</body>

</html>
<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>