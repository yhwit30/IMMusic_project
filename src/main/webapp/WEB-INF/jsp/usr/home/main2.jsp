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
<link rel="stylesheet" type="text/css" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" type="text/css" href="acss/css/mogo.css">
<link
	href="https://fonts.googleapis.com/css?family=Kaushan+Script|Montserrat:300i,400,700&display=swap&subset=cyrillic-ext"
	rel="stylesheet">

<script src="https://use.fontawesome.com/692e9fe4aa.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

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

section {
	width: 100%;
	height: 100vh;
}

.swiper-container {
	width: 100%;
	height: 100%;
}

.slide {
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	text-align: center;
	font-size: 18px;
	background: #fff;
	overflow: hidden;
}

.slide-image {
	position: absolute;
	top: -200px;
	left: -200px;
	width: calc(100% + 400px);
	height: calc(100% + 400px);
	background-position: 50% 50%;
	background-size: cover;
}

.slide-title {
	font-size: 4rem;
	line-height: 1;
	max-width: 50%;
	white-space: normal;
	word-break: break-word;
	color: #fff;
	z-index: 100;
	font-family: 'Oswald', sans-serif;
	text-transform: uppercase;
	font-weight: normal;
}

.slide-title span {
	white-space: pre;
	display: inline-block;
	opacity: 0;
}

@media ( min-width : 45em) {
	.slide-title {
		font-size: 7vw;
		max-width: none;
	}
}

.slideshow {
	position: relative;
}

.slideshow-pagination {
	position: absolute;
	bottom: 5rem;
	left: 0;
	width: 100%;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	transition: .3s opacity;
	z-index: 10;
}

.slideshow-pagination-item {
	display: flex;
	align-items: center;
}

.slideshow-pagination-item .pagination-number {
	opacity: 0.5;
}

.slideshow-pagination-item:hover, .slideshow-pagination-item:focus {
	cursor: pointer;
}

.slideshow-pagination-item:last-of-type .pagination-separator {
	width: 0;
}

.slideshow-pagination-item.active .pagination-number {
	opacity: 1;
}

.slideshow-pagination-item.active .pagination-separator {
	width: 10vw;
}

.pagination-number {
	font-size: 1.8rem;
	color: #fff;
	font-family: 'Oswald', sans-serif;
	padding: 0 0.5rem;
}

.pagination-separator {
	display: none;
}

@media ( min-width : 45em) {
	.pagination-separator {
		display: block;
	}
}

.pagination-separator {
	position: relative;
	width: 40px;
	height: 2px;
	background: rgba(255, 255, 255, 0.25);
	transition: all .3s ease;
}

.pagination-separator-loader {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #fff;
	transform-origin: 0 0;
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
		<section>

			<div class="swiper-container slideshow">

				<div class="swiper-wrapper">

					<div class="swiper-slide slide">
						<div class="slide-image"
							style="background-image: url(https://images.unsplash.com/photo-1538083024336-555cf8943ddc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66b476a51b19889e13182c0e4827af18&auto=format&fit=crop&w=1950&q=80)"></div>
						<span class="slide-title">Exotic places</span>
					</div>

					<div class="swiper-slide slide">
						<div class="slide-image"
							style="background-image: url(https :// images.unsplash.com/ photo-1500375592092-40eb2168fd21 ? ixlib = rb-0.3.5 &amp; amp;"></div>
						<span class="slide-title">Meet ocean</span>
					</div>

					<div class="swiper-slide slide">
						<div class="slide-image"
							style="background-image: url(https :// images.unsplash.com/ photo-1482059470115-0aadd6bf6834 ? ixlib = rb-0.3.5 &amp; amp;"></div>
						<span class="slide-title">Around the world</span>
					</div>

					<!--         <div class="swiper-slide slide">
          <div class="slide-imageswiper-lazy" data-background="https://images.unsplash.com/photo-1538083024336-555cf8943ddc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66b476a51b19889e13182c0e4827af18&auto=format&fit=crop&w=1950&q=80">
          </div>
          </div>
          <span class="slide-title">Exotic places</span>
        </div>
      
        <div class="swiper-slide slide">
          <div class="slide-image swiper-lazy" data-background="https://images.unsplash.com/photo-1500375592092-40eb2168fd21?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e07d2457879a4e15577ec75a31023e47&auto=format&fit=crop&w=2134&q=80">
          </div>
          <span class="slide-title">Meet ocean</span>
        </div>
      
        <div class="swiper-slide slide">
          <div class="slide-image swiper-lazy" data-background="https://images.unsplash.com/photo-1482059470115-0aadd6bf6834?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=267bba9a4e280ec64388fe8fb01e9d1b&auto=format&fit=crop&w=1950&q=80">
          </div>
          <span class="slide-title">Around the world</span>
        </div> -->

				</div>

				<div class="slideshow-pagination"></div>

				<div class="slideshow-navigation">
					<div class="slideshow-navigation-button prev">
						<span class="fas fa-chevron-left"></span>
					</div>
					<div class="slideshow-navigation-button next">
						<span class="fas fa-chevron-right"></span>
					</div>
				</div>

			</div>

		</section>




		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="acss/js/app.js"></script>
	</div>
</body>
<script>
		// The Slideshow class.
		class Slideshow {
		    constructor(el) {
		        
		        this.DOM = {el: el};
		      
		        this.config = {
		          slideshow: {
		            delay: 3000,
		            pagination: {
		              duration: 3,
		            }
		          }
		        };
		        
		        // Set the slideshow
		        this.init();
		      
		    }
		    init() {
		      
		      var self = this;
		      
		      // Charmed title
		      this.DOM.slideTitle = this.DOM.el.querySelectorAll('.slide-title');
		      this.DOM.slideTitle.forEach((slideTitle) => {
		        charming(slideTitle);
		      });
		      
		      // Set the slider
		      this.slideshow = new Swiper (this.DOM.el, {
		          
		          loop: true,
		          autoplay: {
		            delay: this.config.slideshow.delay,
		            disableOnInteraction: false,
		          },
		          speed: 500,
		          preloadImages: true,
		          updateOnImagesReady: true,
		          
		          // lazy: true,
		          // preloadImages: false,

		          pagination: {
		            el: '.slideshow-pagination',
		            clickable: true,
		            bulletClass: 'slideshow-pagination-item',
		            bulletActiveClass: 'active',
		            clickableClass: 'slideshow-pagination-clickable',
		            modifierClass: 'slideshow-pagination-',
		            renderBullet: function (index, className) {
		              
		              var slideIndex = index,
		                  number = (index <= 8) ? '0' + (slideIndex + 1) : (slideIndex + 1);
		              
		              var paginationItem = '<span class="slideshow-pagination-item">';
		              paginationItem += '<span class="pagination-number">' + number + '</span>';
		              paginationItem = (index <= 8) ? paginationItem + '<span class="pagination-separator"><span class="pagination-separator-loader"></span></span>' : paginationItem;
		              paginationItem += '</span>';
		            
		              return paginationItem;
		              
		            },
		          },

		          // Navigation arrows
		          navigation: {
		            nextEl: '.slideshow-navigation-button.next',
		            prevEl: '.slideshow-navigation-button.prev',
		          },

		          // And if we need scrollbar
		          scrollbar: {
		            el: '.swiper-scrollbar',
		          },
		        
		          on: {
		            init: function() {
		              self.animate('next');
		            },
		          }
		        
		        });
		      
		        // Init/Bind events.
		        this.initEvents();
		        
		    }
		    initEvents() {
		        
		        this.slideshow.on('paginationUpdate', (swiper, paginationEl) => this.animatePagination(swiper, paginationEl));
		        //this.slideshow.on('paginationRender', (swiper, paginationEl) => this.animatePagination());

		        this.slideshow.on('slideNextTransitionStart', () => this.animate('next'));
		        
		        this.slideshow.on('slidePrevTransitionStart', () => this.animate('prev'));
		            
		    }
		    animate(direction = 'next') {
		      
		        // Get the active slide
		        this.DOM.activeSlide = this.DOM.el.querySelector('.swiper-slide-active'),
		        this.DOM.activeSlideImg = this.DOM.activeSlide.querySelector('.slide-image'),
		        this.DOM.activeSlideTitle = this.DOM.activeSlide.querySelector('.slide-title'),
		        this.DOM.activeSlideTitleLetters = this.DOM.activeSlideTitle.querySelectorAll('span');
		      
		        // Reverse if prev  
		        this.DOM.activeSlideTitleLetters = direction === "next" ? this.DOM.activeSlideTitleLetters : [].slice.call(this.DOM.activeSlideTitleLetters).reverse();
		      
		        // Get old slide
		        this.DOM.oldSlide = direction === "next" ? this.DOM.el.querySelector('.swiper-slide-prev') : this.DOM.el.querySelector('.swiper-slide-next');
		        if (this.DOM.oldSlide) {
		          // Get parts
		          this.DOM.oldSlideTitle = this.DOM.oldSlide.querySelector('.slide-title'),
		          this.DOM.oldSlideTitleLetters = this.DOM.oldSlideTitle.querySelectorAll('span'); 
		          // Animate
		          this.DOM.oldSlideTitleLetters.forEach((letter,pos) => {
		            TweenMax.to(letter, .3, {
		              ease: Quart.easeIn,
		              delay: (this.DOM.oldSlideTitleLetters.length-pos-1)*.04,
		              y: '50%',
		              opacity: 0
		            });
		          });
		        }
		      
		        // Animate title
		        this.DOM.activeSlideTitleLetters.forEach((letter,pos) => {
							TweenMax.to(letter, .6, {
								ease: Back.easeOut,
								delay: pos*.05,
								startAt: {y: '50%', opacity: 0},
								y: '0%',
								opacity: 1
							});
						});
		      
		        // Animate background
		        TweenMax.to(this.DOM.activeSlideImg, 1.5, {
		            ease: Expo.easeOut,
		            startAt: {x: direction === 'next' ? 200 : -200},
		            x: 0,
		        });
		      
		        //this.animatePagination()
		    
		    }
		    animatePagination(swiper, paginationEl) {
		            
		      // Animate pagination
		      this.DOM.paginationItemsLoader = paginationEl.querySelectorAll('.pagination-separator-loader');
		      this.DOM.activePaginationItem = paginationEl.querySelector('.slideshow-pagination-item.active');
		      this.DOM.activePaginationItemLoader = this.DOM.activePaginationItem.querySelector('.pagination-separator-loader');
		      
		      console.log(swiper.pagination);
		      // console.log(swiper.activeIndex);
		      
		      // Reset and animate
		        TweenMax.set(this.DOM.paginationItemsLoader, {scaleX: 0});
		        TweenMax.to(this.DOM.activePaginationItemLoader, this.config.slideshow.pagination.duration, {
		          startAt: {scaleX: 0},
		          scaleX: 1,
		        });
		      
		      
		    }
		    
		}

		const slideshow = new Slideshow(document.querySelector('.slideshow'));

		</script>

</html>
<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>