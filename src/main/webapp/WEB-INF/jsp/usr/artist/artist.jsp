<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTIST TEST"></c:set>
<%@ include file="../common/head.jspf"%>

<style>
.btn-draw, .velo-slider__hint>span {
	font-family: "Montserrat", Helvetica, sans-serif;
	font-size: 0.8em;
	font-weight: 400;
	text-transform: uppercase;
	letter-spacing: 0.2em;
}
/** 
 * Default to Border Box
 */
*, *:before, *:after {
	box-sizing: border-box;
}

body {
	margin: 0;
	width: 100%;
	font-family: "Montserrat", Georgia, serif;
	font-weight: 400;
	font-style: normal;
	line-height: 1.6;
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-rendering: optimizeLegibility;
}

body {
	font-family: "Montserrat", Georgia, serif;
	line-height: 1.6;
}

body {
	font-size: 100%;
}

@media ( min-width : 32em) {
	body {
		font-size: 102%;
	}
}

@media ( min-width : 54em) {
	body {
		font-size: 103%;
	}
}

@media ( min-width : 65em) {
	body {
		font-size: 107%;
	}
}

@media ( min-width : 75em) {
	body {
		font-size: 110%;
	}
}

@media ( min-width : 91em) {
	body {
		font-size: 120%;
	}
}

@media ( min-width : 115em) {
	body {
		font-size: 130%;
	}
}

@media ( min-width : 130em) {
	body {
		font-size: 140%;
	}
}

h1, h2, h3, h4, h5, h6 {
	font-family: "Montserrat", Helvetica, sans-serif;
	font-weight: 700;
}
/**
 * Links
 */
a {
	text-decoration: none;
	background-color: transparent;
	outline: 0;
}

.btn-draw {
	position: relative;
	display: inline-block;
	vertical-align: middle;
	width: auto;
	margin: 0;
	padding: 0;
	background: transparent;
	border: 0;
	text-decoration: none;
	text-align: center;
	cursor: pointer;
	-webkit-appearance: none;
	transition: all 0.4s ease-in-out;
}

.btn-draw {
	color: #00ffc8;
	margin-left: 2.3em;
}

.btn-draw:after {
	content: '';
	top: 0;
	right: 0;
	height: 1px;
	width: 100%;
	background-color: #00ffc8;
}

.btn-draw:before {
	content: '';
	position: absolute;
	top: 50%;
	left: -2.4em;
	height: 1px;
	width: 3em;
	background-color: #00ffc8;
	transition: all 0.25s ease;
}

.btn-draw .btn-draw__text {
	position: relative;
	display: block;
	padding: 0.7555em 2.29em;
	line-height: 1.5;
	transition: transform 0.5s ease;
}

.btn-draw .btn-draw__text:before, .btn-draw .btn-draw__text:after {
	content: '';
	position: absolute;
	height: 1px;
	width: 0;
	background-color: #00ffc8;
}

.btn-draw .btn-draw__text:before {
	top: 0;
	left: 0;
	transition: width 0.15s 0.45s cubic-bezier(0.77, 0, 0.175, 1);
}

.btn-draw .btn-draw__text:after {
	bottom: 0;
	right: 0;
	transition: width 0.15s 0.15s cubic-bezier(0.77, 0, 0.175, 1);
}

.btn-draw .btn-draw__text>span:before, .btn-draw .btn-draw__text>span:after
	{
	content: '';
	position: absolute;
	height: 0;
	width: 1px;
	background-color: #00ffc8;
	transition: all 0.2s cubic-bezier(0.2, 0.3, 0.25, 0.9);
}

.btn-draw .btn-draw__text>span:before {
	left: 0;
	bottom: 0;
	transition: height 0.15s 0 cubic-bezier(0.77, 0, 0.175, 1);
}

.btn-draw .btn-draw__text>span:after {
	right: 0;
	top: 0;
	transition: height 0.15s 0.3s cubic-bezier(0.77, 0, 0.175, 1);
}

@media ( hover ) {
	.btn-draw:hover, a:hover .btn-draw {
		cursor: pointer;
		color: #00ffc8;
	}
	.btn-draw:hover:before, a:hover .btn-draw:before {
		width: 0;
		transition: all 0.4s ease;
	}
	.btn-draw:hover .btn-draw__text, a:hover .btn-draw .btn-draw__text {
		transform: translateX(-2.2em);
		transition: transform 0.5s ease, width 1s ease;
	}
	.btn-draw:hover .btn-draw__text:before, a:hover .btn-draw .btn-draw__text:before
		{
		width: 100%;
		max-width: 100%;
		transition: width 0.15s cubic-bezier(0.77, 0, 0.175, 1);
	}
	.btn-draw:hover .btn-draw__text:after, a:hover .btn-draw .btn-draw__text:after
		{
		width: 100%;
		transition: width 0.15s 0.3s cubic-bezier(0.77, 0, 0.175, 1);
	}
	.btn-draw:hover .btn-draw__text>span:before, a:hover .btn-draw .btn-draw__text>span:before
		{
		left: 0;
		height: 100%;
		transition: height 0.15s 0.45s cubic-bezier(0.77, 0, 0.175, 1);
	}
	.btn-draw:hover .btn-draw__text>span:after, a:hover .btn-draw .btn-draw__text>span:after
		{
		right: 0;
		height: 100%;
		transition: height 0.15s 0.15s cubic-bezier(0.77, 0, 0.175, 1);
	}
}

.btn-draw.btn--white {
	color: #fff;
}

.btn-draw.btn--white:before, .btn-draw.btn--white:after, .btn-draw.btn--white .btn-draw__text:before,
	.btn-draw.btn--white .btn-draw__text:after, .btn-draw.btn--white .btn-draw__text>span:before,
	.btn-draw.btn--white .btn-draw__text>span:after {
	background-color: #fff;
}

.btn-draw.btn--white:hover, a:hover .btn-draw.btn--white {
	color: #fff;
}

.velo-slides {
	z-index: 8;
	position: relative;
	height: 100vh;
	background-color: #111;
}

.velo-slides[data-velo-slider="on"] {
	overflow: hidden;
}

.velo-slide {
	height: 100vh;
	z-index: 4;
}

@media ( min-width : 54em) and (max-width: 65em) {
	.velo-slide {
		font-size: 80%;
	}
}

@media ( min-width : 54em) and (min-height: 0) and (max-height: 45em) {
	.velo-slide {
		font-size: 70%;
	}
}

[data-velo-slider="on"] .velo-slide {
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}

.velo-slide.is-active {
	z-index: 8;
}

.velo-slide__bg {
	z-index: 7;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100vh;
	color: #111;
	transform: translateZ(0);
	backface-visibility: hidden;
	background-color: #111;
	overflow: hidden;
}

.velo-slide__bg:after {
	z-index: 0;
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	opacity: 0.4;
	background: #111;
}

.velo-slide__figure {
	z-index: 0;
	position: relative;
	height: 100%;
	width: 100%;
	top: 0;
	left: 0;
	overflow: hidden;
	background-position: 50%;
	background-repeat: no-repeat;
	background-size: cover;
	transform: scale(1);
	transition: transform 0.5s ease;
}

.is-hovering .velo-slide__figure {
	transform: scale(1.1);
	transition: transform 0.5s ease;
}

.velo-slide__vid-wrap {
	z-index: 5;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
	transform: scale(1);
	transition: transform 0.5s ease;
}

.velo-slide__vid-wrap:after {
	z-index: 0;
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	opacity: 0.4;
	background: #111;
}

.is-hovering .velo-slide__vid-wrap {
	transform: scale(1.1);
	transition: transform 0.5s ease;
}

.velo-slide__vid {
	z-index: -1;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: auto;
	min-width: 100%;
	max-width: none;
	height: auto;
	min-height: 100%;
	object-fit: cover;
}

.velo-slide__header {
	z-index: 9;
	position: relative;
	height: 100%;
	display: flex;
	align-items: flex-start;
	justify-content: center;
	flex-direction: column;
	overflow-y: hidden;
	padding: 6%;
}

.velo-slide__pretitle {
	color: #fff;
	max-width: 22em;
}

@media ( min-width : 54em) {
	.velo-slide__pretitle {
		margin-left: 7%;
	}
}

.velo-slide__title {
	margin-bottom: 0.1em;
	line-height: 1.1;
	color: #fff;
	letter-spacing: -0.025em;
	font-weight: 700;
	font-size: 2em;
}

@media ( min-width : 54em) {
	.velo-slide__title {
		font-size: 3.5em;
	}
}

@media ( min-width : 65em) {
	.velo-slide__title {
		font-size: 4.5em;
	}
}

@media ( min-width : 91em) {
	.velo-slide__title {
		font-size: 5em;
	}
}

.velo-slide__text {
	color: #fff;
	max-width: 35em;
	display: block;
	margin: 1em 0 1.5em 1%;
	line-height: 1.8;
	font-weight: 300;
	font-size: 0.9em;
}

@media ( min-width : 54em) {
	.velo-slide__text {
		font-size: 1.1em;
	}
}

.velo-slide__btn {
	opacity: 0;
}

@media ( min-width : 54em) {
	.velo-slide__btn {
		margin-left: 1vw;
	}
}

.is-active .velo-slide__btn {
	opacity: 1;
}

.velo-slide__btn>a>span {
	opacity: 0;
	overflow-y: hidden;
	transform: translate3d(0, 100%, 0);
}

.is-active .velo-slide__btn>a>span {
	opacity: 1;
	z-index: 9999;
	transform: translate3d(0, 0, 0);
	transition: transform 0.4s ease, opacity 0.8s ease;
}

.velo-slides[data-velo-theme="light"] {
	background: #212121;
	border: 0 0 0em 0 solid #c5cac5;
}

.velo-slides[data-velo-theme="light"] .velo-slide {
	margin-top: -1em;
	margin-left: -2em;
}

.velo-slides[data-velo-theme="light"] .velo-slide__bg {
	color: #c5cac5;
}

[data-velo-theme="dark"] {
	background: #111;
}

[data-velo-theme="dark"] .velo-slides__bg {
	background-color: #111;
	filter: grayscale(100%);
}

.oh {
	display: block;
	overflow-y: hidden;
	padding: 0.02em 0;
}

.oh span {
	display: inline-block;
	transform: translate3d(0, 140%, 0);
	opacity: 0;
	transition: transform 0.4s ease, opacity 0.8s ease;
}

.is-active .oh span {
	transform: translate3d(0, 0%, 0);
	opacity: 1;
	transition: transform 0.6s cubic-bezier(0.77, 0, 0.175, 1), opacity 0.1s
		ease;
}

.is-active .oh:nth-of-type(2n) span {
	transition-delay: 0.2s;
}

.velo-slider__hint {
	z-index: 99;
	position: fixed;
	top: 0;
	left: 0.5em;
	display: none;
	height: 100vh;
	width: 4em;
	font-size: 0.9em;
	color: #fff;
}

@media ( min-width : 54em) {
	.velo-slider__hint {
		display: block;
	}
}

.velo-slider__hint>span {
	position: absolute;
	top: 50%;
	left: 50%;
	white-space: nowrap;
	transform: translate(-50%, -50%) rotate(-90deg);
	overflow: hidden;
}

.velo-slider__hint>span>span {
	display: inline-block;
	transform: translateY(-110%);
}

.is-active .velo-slider__hint>span>span {
	opacity: 1;
	top: 50%;
	transition: 1s cubic-bezier(0.19, 1, 0.22, 1);
	transform: translateY(0%);
	transition: 0.4 ease;
}

.velo-slides-nav {
	/* lateral navigation */
	position: fixed;
	z-index: 91;
	right: 2em;
	bottom: 3em;
}

@media ( min-width : 54em) {
	.velo-slides-nav {
		top: 50%;
		bottom: auto;
		transform: translateY(-50%);
	}
}

.velo-slides-nav__list {
	list-style: none;
}

.velo-slides-nav li:first-child {
	margin-bottom: 0.25em;
}

.velo-slides-nav a {
	display: block;
	color: rgba(255, 255, 255, 0.9);
	transition: color 0.5s ease, text-shadow 0.5s ease;
}

.velo-slides-nav a:hover {
	color: rgba(255, 255, 255, 1);
	text-shadow: 0px 0px 6px rgba(255, 255, 255, 0.6);
	transition: color 0.5s ease, text-shadow 0.5s ease;
}

.velo-slides-nav a.inactive {
	visibility: hidden;
	opacity: 0;
	transition: opacity 0.2s 0s, visibility 0s 0.2s;
}

.velo-slides-nav i {
	font-size: 2.2em;
}

@media ( min-width : 54em) {
	.velo-slides-nav i {
		font-size: 1.5em;
	}
}

@font-face {
	font-family: 'ssicons';
	src:
		url("data:application/x-font-ttf;charset=utf-8;base64,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")
		format('truetype');
	font-weight: normal;
	font-style: normal;
}

[class^="icon-"], [class*=" icon-"] {
	/* use !important to prevent issues with browser extensions that change fonts */
	font-family: 'ssicons' !important;
	speak: none;
	font-style: normal;
	font-weight: normal;
	font-variant: normal;
	text-transform: none;
	line-height: 1;
	/* Better Font Rendering =========== */
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.icon-down-chev:before {
	content: "\e900";
}

.icon-right-chev:before {
	content: "\e901";
}

.icon-up-chev:before {
	content: "\e902";
}

.icon-left-chev:before {
	content: "\e903";
}

.icon-up-arrow:before {
	content: "\e904";
}

.icon-down-arrow:before {
	content: "\e905";
}

.icon-left-arrow:before {
	content: "\e906";
}

.icon-right-arrow:before {
	content: "\e907";
}

.velo-slide__figure {
	width: 100%; /* Set the width of the figure to 100% of its container */
	max-width: 800px;
	/* Optionally, set a maximum width to avoid stretching the image too much */
	margin: 0 auto; /* Center the figure horizontally */
	overflow: hidden; /* Hide any content that overflows the figure */
}

.velo-slide__figure img {
	width: 100%; /* Set the width of the image to 100% of its container */
	height: 100%;
	/* Allow the height to adjust proportionally based on the image's aspect ratio */
	max-height: 100%;
	/* Limit the maximum height of the image to 100% of its container */
	object-fit: cover;
	/* Maintain the aspect ratio while covering the container */
}
</style>
</head>
<body>
	<main role="main">

		<!-- Slider -->
		<section class="velo-slides" data-velo-slider="on" data-velo-theme="light">

			<!-- Slide -->
			<section class="velo-slide">

				<!-- Pretitle Hint -->
				<span class="velo-slider__hint"><span><span>아티스트</span></span></span>
				<!-- Slide BG -->
				<div class="velo-slide__bg">
					<!-- Img -->
					<figure class="velo-slide__figure">
						<img src="/resource/구보근 프로필사진.png" alt="Profile Photo" />
					</figure>
				</div>

				<!-- Header -->
				<header class="velo-slide__header">
					<h3 class="velo-slide__title">
						<span class="oh"><span>구보근</span></span>
						<!--span class="oh"><span>Stephen Scaff</span-->
						</span>
					</h3>
					<p class="velo-slide__text">
						<span class="oh"><span>약력</span></span>
					</p>
					<span class="velo-slide__btn"><a class="btn-draw btn--white" href="#"><span class="btn-draw__text"><span>자세히
									보기 </span></span></a></span>
				</header>
			</section>

			<!-- Slide -->
			<section class="velo-slide">
				<!-- Pretitle Hint -->
				<span class="velo-slider__hint"><span><span>아티스트</span></span></span>
				<!-- Slide BG -->
				<div class="velo-slide__bg">
					<!-- Img -->
					<figure class="velo-slide__figure">
						<img src="/resource/원유현 프로필사진 편집.png" alt="Profile Photo" />
					</figure>
				</div>


				<!-- Header -->
				<header class="velo-slide__header">
					<h3 class="velo-slide__title">
						<span class="oh"><span>원유현</span></span><span class="oh"> <!--span>Another Slide</span-->
						</span>
					</h3>
					<p class="velo-slide__text">
						<span class="oh"><span>약력</span></span>
					</p>
					<span class="velo-slide__btn"><a class="btn-draw btn--white" href="#/"><span class="btn-draw__text"><span>자세히
									보기 </span></span></a></span>
				</header>
			</section>

			<!-- Slide - with Video -->
			<section class="velo-slide">
				<!-- Pretitle Hint -->
				<span class="velo-slider__hint"><span><span>아티스트</span></span></span>
				<!-- Slide BG -->
				<div class="velo-slide__bg">
					<!-- Img -->
					<figure class="velo-slide__figure">
						<img src="/resource/임재민 프로필사진2.png" alt="Profile Photo" />
					</figure>
				</div>
				<!-- Header -->
				<header class="velo-slide__header">
					<h3 class="velo-slide__title">
						<span class="oh"><span>임재민</span></span>
					</h3>
					<p class="velo-slide__text">
						<span class="oh"><span>약력</span></span>
					</p>
					<span class="velo-slide__btn"><a class="btn-draw btn--white" href="http://urbaninfluence.com"><span
							class="btn-draw__text"><span>자세히 보기</span></span></a></span>
				</header>
			</section>

			<!-- Slide - with Video -->
			<section class="velo-slide">
				<!-- Pretitle Hint -->
				<span class="velo-slider__hint"><span><span>아티스트</span></span></span>
				<!-- Slide BG -->
				<div class="velo-slide__bg">
					<!-- Img -->
					<figure class="velo-slide__figure">
						<img src="/resource/허원경 프로필사진.png" alt="Profile Photo" />
					</figure>
				</div>
				<!-- Header -->
				<header class="velo-slide__header">
					<h3 class="velo-slide__title">
						<span class="oh"><span>허원경</span></span>
					</h3>
					<p class="velo-slide__text">
						<span class="oh"><span>약력</span></span>
					</p>
					<span class="velo-slide__btn"><a class="btn-draw btn--white" href="http://urbaninfluence.com"><span
							class="btn-draw__text"><span>자세히 보기</span></span></a></span>
				</header>
			</section>

			<!-- Slides Nav -->
			<nav class="velo-slides-nav">
				<ul class="velo-slides-nav__list">
					<li><a class="js-velo-slides-prev velo-slides-nav__prev inactive" href="#0"><i class="icon-up-arrow"></i></a>
					</li>
					<li><a class="js-velo-slides-next velo-slides-nav__next" href="#"><i class="icon-down-arrow"></i></a></li>
				</ul>
			</nav>
		</section>
	</main>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.3.0/velocity.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.3.0/velocity.ui.js'></script>




	<script>/**
 * Velocity Effects
 */

var scaleDownAmnt = 0.7;
var boxShadowAmnt = '40px';


//scale down
$.Velocity.RegisterEffect("scaleDown", {
  defaultDuration: 1,
  calls: [
    [{
      opacity: '0',
      scale: '0.7',
 
    }, 1]
  ]
});

//gallery
$.Velocity.RegisterEffect("scaleDown.moveUp", {
  defaultDuration: 1,
  calls: [
    [{
      translateY: '0%',
      scale: scaleDownAmnt,
 
    }, 0.20],
    [{
      translateY: '-100%'
    }, 0.60],
    [{
      translateY: '-100%',
      scale: '1',
      // boxShadowBlur: '0'
    }, 0.20]
  ]
});
$.Velocity.RegisterEffect("scaleDown.moveUp.scroll", {
  defaultDuration: 1,
  calls: [
    [{
      translateY: '-100%',
      scale: scaleDownAmnt,
 
    }, 0.60],
    [{
      translateY: '-100%',
      scale: '1',
      // boxShadowBlur: '0'
    }, 0.40]
  ]
});
$.Velocity.RegisterEffect("scaleUp.moveUp", {
  defaultDuration: 1,
  calls: [
    [{
      translateY: '90%',
      scale: scaleDownAmnt,
      // boxShadowBlur: boxShadowAmnt     
    }, 0.20],
    [{
      translateY: '0%'
    }, 0.60],
    [{
      translateY: '0%',
      scale: '1',
      // boxShadowBlur: '0'
    }, 0.20]
  ]
});
$.Velocity.RegisterEffect("scaleUp.moveUp.scroll", {
  defaultDuration: 1,
  calls: [
    [{
      translateY: '0%',
      scale: scaleDownAmnt,
      // boxShadowBlur: boxShadowAmnt
    }, 0.60],
    [{
      translateY: '0%',
      scale: '1',
      // boxShadowBlur: '0'
    }, 0.40]
  ]
});
$.Velocity.RegisterEffect("scaleDown.moveDown", {
  defaultDuration: 1,
  calls: [
    [{
      translateY: '0%',
      scale: scaleDownAmnt,
      // boxShadowBlur: boxShadowAmnt
    }, 0.20],
    [{
      translateY: '100%'
    }, 0.60],
    [{
      translateY: '100%',
      scale: '1',
      // boxShadowBlur: '0'
    }, 0.20]
  ]
});
$.Velocity.RegisterEffect("scaleDown.moveDown.scroll", {
  defaultDuration: 1,
  calls: [
    [{

    }, 0.60],
    [{
      translateY: '100%',
      scale: '1',
      // boxShadowBlur: '0'
    }, 0.40]
  ]
});
$.Velocity.RegisterEffect("scaleUp.moveDown", {
  defaultDuration: 1,
  calls: [
    [{
      translateY: '-90%',
      scale: scaleDownAmnt,
      // boxShadowBlur: boxShadowAmnt
    }, 0.20],
    [{
      translateY: '0%'
    }, 0.60],
    [{
      translateY: '0%',
      scale: '1',
      // boxShadowBlur: '0'
    }, 0.20]
  ]
});


/**
 * Velo Slider
 * A Custom Slider using Velocity and Velocity UI effects
 */

var VeloSlider = (function() {

  /**
   * Global Settings 
   */
  var settings = {
    veloInit: $('.velo-slides').data('velo-slider'),
    veloSlide: $('.velo-slide'),
    veloSlideBg: '.velo-slide__bg',
    navPrev:  $('.velo-slides-nav').find('a.js-velo-slides-prev'),
    navNext:  $('.velo-slides-nav').find('a.js-velo-slides-next'),
    veloBtn:   $('.velo-slide__btn'),
    delta: 0,
    scrollThreshold: 7,
    currentSlide: 1,
    animating: false,
    animationDuration: 2000
  };


  // Flags
  var delta = 0,
      animating = false;

  return {
   
      /**
       * Init 
       */
      init: function() {
        this.bind();
      },
    
    /**
     * Bind our click, scroll, key events
     */
    bind: function(){
 
      //  Add active to first slide to set it off
      settings.veloSlide.first().addClass('is-active');

      //  Init with a data attribute, 
      //  Binding the animation to scroll, arrows, keys
      if (settings.veloInit == 'on') {
        VeloSlider.initScrollJack();
        $(window).on('DOMMouseScroll mousewheel', VeloSlider.scrollJacking);
      }

      // Arrow / Click Nav
      settings.navPrev.on('click', VeloSlider.prevSlide);
      settings.navNext.on('click', VeloSlider.nextSlide);
    
      // Key Nav
      $(document).on('keydown', function(e) {
        var keyNext = (e.which == 39 || e.which == 40),
            keyPrev = (e.which == 37 || e.which == 38);

        if (keyNext && !settings.navNext.hasClass('inactive')) {
          e.preventDefault();
          VeloSlider.nextSlide();

        } else if (keyPrev && (!settings.navPrev.hasClass('inactive'))) {
          e.preventDefault();
          VeloSlider.prevSlide();
        }
      });
    
      //set navigation arrows visibility
      VeloSlider.checkNavigation();

      // Call Button Hover animation
      VeloSlider.hoverAnimation();
     
    },

    /**
     * Hover Animation
     * Adds 'is-hovering' class to the current slide
     * when hovering over the button.
     */
    hoverAnimation: function(){
      settings.veloBtn.hover(function (){
        $(this).closest(settings.veloSlide).toggleClass('is-hovering');
      });
    },

    /** 
     * Set Animation
     * Defines the animation sequence, calling our registered velocity effects
     * @see js/components/_velocity-effects.js
     */
    setAnimation: function(midStep, direction) {
      
      // Vars for our velocity effects
      var animationVisible = 'translateNone',
          animationTop = 'translateUp',
          animationBottom = 'translateDown',
          easing = 'ease',
          animDuration = settings.animationDuration;

      // Middle Step
      if (midStep) {
        animationVisible = 'scaleUp.moveUp.scroll';
        animationTop = 'scaleDown.moveUp.scroll';
        animationBottom = 'scaleDown.moveDown.scroll';
      
      } else {
        animationVisible = (direction == 'next') ? 'scaleUp.moveUp' : 'scaleUp.moveDown';
        animationTop = 'scaleDown.moveUp';
        animationBottom = 'scaleDown.moveDown';
      }

      return [animationVisible, animationTop, animationBottom, animDuration, easing];
    },

    /** 
     * Init Scroll Jaclk
     */
    initScrollJack: function() {

      var visibleSlide = settings.veloSlide.filter('.is-active'),
          topSection = visibleSlide.prevAll(settings.veloSlide),
          bottomSection = visibleSlide.nextAll(settings.veloSlide),
          animationParams = VeloSlider.setAnimation(false),
          animationVisible = animationParams[0],
          animationTop = animationParams[1],
          animationBottom = animationParams[2];
          console.log(animationParams);
          console.log(animationParams[4]);

      visibleSlide.children('div').velocity(animationVisible, 1, function() {
        visibleSlide.css('opacity', 1);
        topSection.css('opacity', 1);
        bottomSection.css('opacity', 1);
      });

      topSection.children('div').velocity(animationTop, 0);
      bottomSection.children('div').velocity(animationBottom, 0);
    },

    /**
     * Scroll Jack
     * On Mouse Scroll
     */
    scrollJacking: function(e) {
      if (e.originalEvent.detail < 0 || e.originalEvent.wheelDelta > 0) {
        delta--;
        (Math.abs(delta) >= settings.scrollThreshold) && VeloSlider.prevSlide();
      } else {
        delta++;
        (delta >= settings.scrollThreshold) && VeloSlider.nextSlide();
      }
      return false;
    },

    /**
     * Previous Slide
     */
    prevSlide: function(e) {
      //go to previous section
      typeof e !== 'undefined' && e.preventDefault();
      
      var visibleSlide = settings.veloSlide.filter('.is-active'),
          animationParams = VeloSlider.setAnimation(midStep, 'prev'),
          midStep = false;
      
      visibleSlide = midStep ? visibleSlide.next(settings.veloSlide) : visibleSlide;

      console.log(midStep);

      if (!animating && !visibleSlide.is(":first-child")) {
        animating = true;
        
        visibleSlide
          .removeClass('is-active')
          .children(settings.veloSlideBg)
          .velocity(animationParams[2], animationParams[3], animationParams[4])
          .end()
          .prev(settings.veloSlide)
          .addClass('is-active')
          .children(settings.veloSlideBg)
          .velocity(animationParams[0], animationParams[3], animationParams[4], function() {
            animating = false;
          });
        currentSlide = settings.currentSlide - 1;
      }
      VeloSlider.resetScroll();
    },


    /** 
     * Next Slide
     */
    nextSlide: function(e) {
      
      //go to next section
      typeof e !== 'undefined' && e.preventDefault();
      
      var visibleSlide = settings.veloSlide.filter('.is-active'),
          animationParams = VeloSlider.setAnimation(midStep, 'next'),
          midStep = false;

      if (!animating && !visibleSlide.is(":last-of-type")) {
        animating = true;

        visibleSlide.removeClass('is-active')
          .children(settings.veloSlideBg)
          .velocity(animationParams[1], animationParams[3])
          .end()
          .next(settings.veloSlide)
          .addClass('is-active')
          .children(settings.veloSlideBg)
          .velocity(animationParams[0], animationParams[3], function() {
            animating = false;
        });
        currentSlide = settings.currentSlide + 1;
      }
      VeloSlider.resetScroll();
    },

    /**
     * Reset SCroll
     */
    resetScroll: function() {
      delta = 0;
      VeloSlider.checkNavigation();
    },

    /**
     * Check Nav
     * Adds / hides nav based on first/last slide
     * @todo - loop slides, without cloning if possible
     */
    checkNavigation: function() {
      //update navigation arrows visibility
      (settings.veloSlide.filter('.is-active').is(':first-of-type')) ? settings.navPrev.addClass('inactive'): settings.navPrev.removeClass('inactive');
      (settings.veloSlide.filter('.is-active').is(':last-of-type')) ? settings.navNext.addClass('inactive'): settings.navNext.removeClass('inactive');

    },
  };
})();

// INIT
VeloSlider.init();</script>

</body> 