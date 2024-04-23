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
<body>
	<div class="page">



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

		<div class="stati">
			<section class="section" id="about">
				<div class="container">

					<div class="section_heder">
						<h3 class="section_suptitle">IMMusic & Art</h3>
						<h2 class="section_title">News & Show</h2>
						<div class="section__Text">
							<p>주요 뉴스 및 공연 소식</p>
						</div>
					</div>

					<div class="cards">
						<div class="card__item">
							<div class="inner-card">
								<div class=" card-imag">
									<img src="/resource/에오 트리오 사진.jpg" alt="Изображение">
									<div class="card_text">
										<a href="https://blog.naver.com/jazzjarasum/221102783565">피아니스트 허대욱, 에오 트리오로 만나다.</a>
									</div>
								</div>
							</div>
						</div>
						<div class="card__item">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/공연 포스터 2.jpg" alt="Изображение">
									<div class="card_text">
										<a href="https://blog.naver.com/jazzjarasum/221102783565">포스터 2</a>
									</div>
								</div>
							</div>
						</div>
						<div class="card__item">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/공연 포스터 1.jpg" alt="Изображение">
									<div class="card_text">포스터 1</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</section>

			<section class="section section-gray">
				<div class="container">
					<div class="section_heder">
						<h3 class="section_suptitle">Who we you</h3>
						<h2 class="section_title">단원 소개</h2>
						<div class="section__Text">
							<p>“비바기타앙상블”은 2012년부터 기타리스트 허원경이 이끄는 앙상블 팀으로 서울대학교 동문으로 이루어진 클래식기타 연주팀이다.</p>
							<p>Heo trio Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima aspernatur numquam dolorem
								nostrum veritatis maxime iure ullam vitae hic consequuntur quia molestiae consectetur. Incidunt deserunt
								recusandae vel eveniet aspernatur delectus.</p>
						</div>
					</div>


					<div class="cards1">
						<div class="card__item1">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/허원경 프로필사진.png" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-instagram"></i>
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

						<div class="card__item2">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/구보근 프로필사진.png" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-instagram"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="card-info">
								<div class="card-name">구본근</div>
								<div class="card-prof">단원(클래식 기타)</div>
							</div>
						</div>

						<div class="card__item3">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/원유현 프로필사진.png" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-instagram"></i>
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
						
						<div class="cards2">
						<div class="card__item">
							<div class="inner-card">
								<div class="card-imag">
									<img src="/resource/임재민 프로필사진2.png" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-instagram"></i>
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
									<img src="/resource/허대욱 프로필사진.jpg" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-instagram"></i>
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
									<img src="/resource/허병훈 프로필사진.jpg" alt="Изображение">
									<div class="card_text">
										<div class="social">
											<a href="#" class="social_iteam" target="_blank"> <i class="fab fa-facebook-f"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-twitter"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-pinterest-p"></i>
											</a> <a href="#" class="social_iteam" target="_blank"> <i class="fab fa-instagram"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="card-info">
								<div class="card-name">허병훈</div>
								<div class="card-prof">고문</div>
							</div>
						</div>
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

			<section class="section section-gray" id="work">
				<div class="container">
					<div class="section_heder">
						<h3 class="section_suptitle">Who we do</h3>
						<h2 class="section_title">공연 및 무대사진</h2>
						<div class="section__Text">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum atque, nihil impedit laboriosam ullam
								ipsa voluptate iure quis corrupti totam, nesciunt nemo voluptatem possimus doloribus similique perferendis
								blanditiis architecto? Ut!</p>
						</div>
					</div>
				</div>
				<div class="works">
					<div class="works__col">
						<div class="works-item">
							<img class="work__image" src="/resource/공연사진.jpg" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
						<div class="works-item">
							<img class="work__image" src="/resource/무대사진.jpg" alt="">
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
							<img class="work__image" src="https://i.postimg.cc/WhcW7SM1/2.jpg" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
						<div class="works-item">
							<img class="work__image" src="https://i.postimg.cc/0MTj6qG0/4.jpg" alt="">
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
							<img class="work__image" src="https://i.postimg.cc/nM9nX5PC/3.jpg[/img][/url]" alt="">
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
							<img class="work__image" src="https://i.postimg.cc/3Wvfpz0q/1.jpg" alt="">
							<div class="work-info">
								<a class="works-icon" href="#"> <i class="fas fa-mountain"></i>
								</a>
								<div class="work__title">creat infotr hurntd</div>
								<div class="works__text">Lorem ipsum dolor sit</div>
							</div>
						</div>
						<div class="works-item">
							<img class="work__image" src="https://i.postimg.cc/pmMjG4SS/7.jpg" alt="">
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
						<h3 class="section_suptitle">IMMusic & Art</h3>
						<h2 class="section_title">lates blog</h2>
					</div>
					<div class="blog">
						<div class="blo_item">
							<div class="blog-header">
								<a href="#"> <img class="blog_img" src="/resource/블로그사진1.jpg" alt="">
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
								<div class="blog-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed perspiciatis magni,
									reprehenderit doloribus aliquid saepe commodi sit dolor, rem earum!</div>
							</div>
							<div class="blog_footer">
								<div class="blog-stat">
									<span class="blog-stat-item"><i class="far fa-eye"></i>542</span> <span class="blog-stat-item"><i
										class="far fa-comment-dots"></i>17</span>
								</div>
							</div>
						</div>
						<div class="blo_item">
							<div class="blog-header">
								<a href="#"> <img class="blog_img" src="/resource/블로그사진2.jpg" alt="">
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
								<div class="blog-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed perspiciatis magni,
									reprehenderit doloribus aliquid saepe commodi sit dolor, rem earum!</div>
							</div>
							<div class="blog_footer">
								<div class="blog-stat">
									<span class="blog-stat-item"><i class="far fa-eye"></i>542</span> <span class="blog-stat-item"><i
										class="far fa-comment-dots"></i>17</span>
								</div>
							</div>
						</div>
						<div class="blo_item">
							<div class="blog-header">
								<a href="#"> <img class="blog_img" src="/resource/블로그사진3.jpg" alt="">
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
								<div class="blog-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed perspiciatis magni,
									reprehenderit doloribus aliquid saepe commodi sit dolor, rem earum!</div>
							</div>
							<div class="blog_footer">
								<div class="blog-stat">
									<span class="blog-stat-item"><i class="far fa-eye"></i>542</span> <span class="blog-stat-item"><i
										class="far fa-comment-dots"></i>17</span>
								</div>
							</div>
						</div>
					</div>
					<!-- blog-->
				</div>
			</section>
		</div>



		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<script src="acss/js/app.js"></script>
	</div>
</body>

</html>
<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>