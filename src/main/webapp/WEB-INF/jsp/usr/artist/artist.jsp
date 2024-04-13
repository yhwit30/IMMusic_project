<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTIST TEST"></c:set>
<%@ include file="../common/head.jspf"%>
<style>
*{
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
}

h1{
  font-size: 2.5rem;
  font-family: 'Montserrat';
  font-weight: normal;
  color: #444;
  text-align: center;
  margin: 2rem 0;
}

.wrapper{
  width: 90%;
  margin: 0 auto;
  max-width: 80rem;
}

.cols{
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.col{
  width: calc(25% - 2rem);
  margin: 1rem;
  cursor: pointer;
}

.container{
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
	-webkit-perspective: 1000px;
	        perspective: 1000px;
}

.front,
.back{
  background-size: cover;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.25);
  border-radius: 10px;
	background-position: center;
	-webkit-transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
	transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
	-o-transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
	transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
	transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1), -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
	-webkit-backface-visibility: hidden;
	        backface-visibility: hidden;
	text-align: center;
	min-height: 280px;
	height: auto;
	border-radius: 10px;
	color: #fff;
	font-size: 1.5rem;
}

.back{
  background: #cedce7;
  background: -webkit-linear-gradient(45deg,  #cedce7 0%,#596a72 100%);
  background: -o-linear-gradient(45deg,  #cedce7 0%,#596a72 100%);
  background: linear-gradient(45deg,  #cedce7 0%,#596a72 100%);
}

.front:after{
	position: absolute;
    top: 0;
    left: 0;
    z-index: 1;
    width: 100%;
    height: 100%;
    content: '';
    display: block;
    opacity: .1;
    background-color: #000;
    -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
    border-radius: 10px;
}
.container:hover .front,
.container:hover .back{
    -webkit-transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
    transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
    -o-transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
    transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
    transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1), -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
}

.back{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 500px;
}

.inner{
    -webkit-transform: translateY(-50%) translateZ(60px) scale(0.94);
            transform: translateY(-50%) translateZ(60px) scale(0.94);
    top: 50%;
    position: absolute;
    left: 0;
    width: 100%;
    padding: 3rem;
    -webkit-box-sizing: border-box;
            box-sizing: border-box;
    outline: 1px solid transparent;
    -webkit-perspective: inherit;
            perspective: inherit;
    z-index: 2;
}
img {
	height: 500px;
	object-fit: cover;
}

.container .back{
    -webkit-transform: rotateY(180deg);
            transform: rotateY(180deg);
    -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
}

.container .front{
    -webkit-transform: rotateY(0deg);
            transform: rotateY(0deg);
    -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
}

.container:hover .back{
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
}

.container:hover .front{
  -webkit-transform: rotateY(-180deg);
          transform: rotateY(-180deg);
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
}

.front .inner p{
  font-size: 2rem;
  margin-bottom: 2rem;
  position: relative;
}

.front .inner p:after{
  content: '';
  width: 4rem;
  height: 2px;
  position: absolute;
  background: #C6D4DF;
  display: block;
  left: 0;
  right: 0;
  margin: 0 auto;
  bottom: -.75rem;
}
p {
 	font-size: 20px; 
}

.front .inner span{
  color: rgba(255,255,255,0.7);
  font-family: 'Montserrat';
  font-weight: 300;
}

@media screen and (max-width: 64rem){
  .col{
    width: calc(33.333333% - 2rem);
  }
}

@media screen and (max-width: 48rem){
  .col{
    width: calc(50% - 2rem);
  }
}

@media screen and (max-width: 32rem){
  .col{
    width: 100%;
    margin: 0 0 2rem 0;
  }
}
</style>


<div class="wrapper">
  <h1>아티스트 명단</h1>
  <div class="cols">
			<div class="col" ontouchstart="this.classList.toggle('hover');">
				<div class="container">
					<div class="front">
					<img src="/resource/구보근 프로필사진.png"  />
						<div class="inner">
							<p>구보근</p>
              <span>생년월일?</span>
						</div>
					</div>
					<div class="back">
						<div class="inner">
						  <p>약력</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col" ontouchstart="this.classList.toggle('hover');">
				<div class="container">
					<div class="front">
						<img src="/resource/원유현 프로필사진 편집.png"  />
						<div class="inner">
							<p>원유현</p>
              <span></span>
						</div>
					</div>
					<div class="back">
						<div class="inner">
							<p>서울대학교 음악대학 졸업</p>
							<p>lorem ipsum</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col" ontouchstart="this.classList.toggle('hover');">
				<div class="container">
					<div class="front">
					<img src="/resource/임재민 프로필사진2.png"  />
						<div class="inner">
							<p>임재민</p>
              <span>Lorem ipsum</span>
						</div>
					</div>
					<div class="back">
						<div class="inner">
							<p>약력</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col" ontouchstart="this.classList.toggle('hover');">
				<div class="container">
					<div class="front">
					<img src="/resource/허원경 프로필사진.png"  />
						<div class="inner">
							<p>허원경</p>
              <span>Lorem ipsum</span>
						</div>
					</div>
					<div class="back">
						<div class="inner">
							<p>약력</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col" ontouchstart="this.classList.toggle('hover');">
				<div class="container">
					<div class="front" style="background-image: url(https://unsplash.it/504/504/">
						<div class="inner">
							<p>Rendann</p>
              <span>Lorem ipsum</span>
						</div>
					</div>
					<div class="back">
						<div class="inner">
							<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias cum repellat velit quae suscipit c.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col" ontouchstart="this.classList.toggle('hover');">
				<div class="container">
					<div class="front" style="background-image: url(https://unsplash.it/505/505/)">
						<div class="inner">
							<p>Reflupper</p>
              <span>Lorem ipsum</span>
						</div>
					</div>
					<div class="back">
						<div class="inner">
							<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias cum repellat velit quae suscipit c.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col" ontouchstart="this.classList.toggle('hover');">
				<div class="container">
					<div class="front" style="background-image: url(https://unsplash.it/506/506/)">
						<div class="inner">
							<p>Acirassi</p>
              <span>Lorem ipsum</span>
						</div>
					</div>
					<div class="back">
						<div class="inner">
							<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias cum repellat velit quae suscipit c.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col" ontouchstart="this.classList.toggle('hover');">
				<div class="container">
					<div class="front" style="background-image: url(https://unsplash.it/508/508/)">
						<div class="inner">
							<p>Sohanidd</p>
              <span>Lorem ipsum</span>
						</div>
					</div>
					<div class="back">
						<div class="inner">
							<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias cum repellat velit quae suscipit c.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
 </div>




<%@ include file="../common/foot.jspf"%>