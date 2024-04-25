<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTIST"></c:set>
<%@ include file="../common/head.jspf"%>


<div class="greet-bg">
		<p>
			IMMusic <br>& Art
		</p>
	</div>
	



<div class="container">
  <div class="container-inner">
    <div class="main-content">
      <div class="main-headings" id="main-headings-js">
      <p id="by-line">Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>

      <div class="heading">
        <h3 id="heading1">passionate</h3>
        <h3 id="heading2">player,</h3>
        <h1 id="heading3">Daeuk</h1>
      </div>

      <div class="short-bio">
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tempore, repellat, quod sed optio nesciunt aspernatur inventore ab, nostrum accusantium harum dolor voluptate nulla!</p>
   
      </div>

<!--       <a href="#" class="link" onclick="readMore()">Read More</a> -->
      <button class="link" onclick="readMore()">Read More</button>
      </div>
      
      <div class="more-info " id="more-info-js">
        
        <h4>Lorem ipsum dolor sit.</h4>
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse expedita impedit iste, quibusdam debitis fugit repudiandae voluptatum vero quod nulla!</p>
        
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Expedita delectus iusto facere dignissimos quaerat facilis voluptatibus fuga quod impedit. Atque tenetur amet officia repudiandae odit.</p>
        
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni saepe suscipit deleniti porro fugit! Atque nisi alias a porro fugiat incidunt exercitationem! Nihil, consectetur. Expedita.</p>
      </div>
      
    </div>

    <div class="image-wrapper">
    <div class="image-container">
<!--       <img class="image" src="https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&s=755bbb2b0afd5808494a8723774cd141" alt="image of a young woman."> -->
     <img class="image"  src="/resource/허대욱 프로필사진.jpg" class="profession_image" alt="Profession" />
    </div>
  </div>
</div>
</div>


<style>
/* Font */
@import url("https://fonts.googleapis.com/css?family=Montserrat:400,700");

/* Variables */
:root {
  --mobile-breakpoint: 350px;
  --large-mobile-breakpoint: 530px;
  --tablet-breakpoint: 700px;
  --desktop-breakpoint: 1200px;
}

/* Mixins */
/* Centering Mixins */
@mixin horizontal-center {
  margin-left: auto;
  margin-right: auto;
}

@mixin vertical-center {
  position: relative;
  top: 50%;
  transform: translateY(-50%);
}

/* Media Query mixins */
@mixin mobile {
  @media (min-width: var(--mobile-breakpoint)) and (max-width: calc(var(--large-mobile-breakpoint) - 1px)) {
    @content;
  }
}

@mixin tablet {
  @media (min-width: var(--large-mobile-breakpoint)) and (max-width: calc(var(--tablet-breakpoint) - 1px)) {
    @content;
  }
}

@mixin desktop {
  @media (min-width: var(--tablet-breakpoint)) and (max-width: var(--desktop-breakpoint)) {
    @content;
  }
}

/* Animations */
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

@keyframes slide-in {
  0% {
    top: -300px;
  }
  100% {
    top: 0;
  }
}

@keyframes scaleDown {
  0% {
    transform: scale(1);
  }
  10% {
    transform: scale(0.7);
  }
  95% {
    transform: scale(0.7);
  }
  100% {
    transform: scale(1);
  }
}

@keyframes reveal-info {
  0% {
    height: 0;
  }
  5% {
    height: 350px;
  }
  95% {
    height: 350px;
  }
  100% {
    height: 0;
  }
}

/* Body */
body {
  margin: 0;
  padding: 0;
}

.container {
  margin-top: 50px;
  margin-left: auto;
  margin-right: auto;
  margin-bottom: 300px;
  width: 1200px;
  height: 700px;
/*   background-color: #D7CCC8; */
  font-size: 14px;
  font-family: "Montserrat", sans-serif;
  
  border: 2px solid red;
  background-color: rgba(255,255,255,0.8);
}

.container .container-inner {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
  position: relative;
  animation: fade-in 1.5s ease, slide-in 1.2s ease;
  -webkit-animation: fade-in 1.5s ease, slide-in 1.2s ease;
}

.container .container-inner .main-content {
  flex-basis: 50%;
  order: 1;
  align-self: center;
  display: flex;
  flex-direction: column;
}

.container .container-inner .main-content .main-headings {
  width: 100%;
  align-self: center;
  display: flex;
  flex-direction: column;
  animation: scaleDown 6s ease 2s;
  -webkit-animation: scaleDown 6s ease 2s;
}

.container .container-inner .main-content .main-headings #by-line {
  width: 60%;
  padding-bottom: 1px;
  padding-left: 3px;
  margin-left: 15px;
  font-size: 85%;
  border-bottom: 1px solid #757575;
  font-style: italic;
}

.container .container-inner .main-content .main-headings .heading {
  margin-top: 20px;
  margin-left: 80px;
}

.container .container-inner .main-content .main-headings .heading #heading1,
.container .container-inner .main-content .main-headings .heading #heading2,
.container .container-inner .main-content .main-headings .heading #heading3 {
  margin: 0;
  margin-top: -20px;
}

.container .container-inner .main-content .main-headings .heading #heading1,
.container .container-inner .main-content .main-headings .heading #heading2 {
  font-size: 500%;
  font-weight: normal;
  letter-spacing: -2px;
}

.container .container-inner .main-content .main-headings .heading #heading1 {
  margin-left: 50px;
}

.container .container-inner .main-content .main-headings .heading #heading2 {
  margin-left: 150px;
}

.container .container-inner .main-content .main-headings .heading #heading3 {
  margin-top: -52px;
  font-size: 1100%;
  font-weight: 800;
  letter-spacing: 2px;
}

.container .container-inner .main-content .main-headings .short-bio {
  width: 60%;
  margin-top: -30px;
  margin-left: 90px;
  font-style: italic;
  font-size: 105%;
}

.container .container-inner .main-content .main-headings a {
  margin-left: 92px;
  font-weight: bold;
  font-size: 120%;
  font-family: helvetica;
  text-decoration: none;
  color: black;
}

.container .container-inner .main-content .main-headings a:hover {
  text-decoration: underline;
}

.container .container-inner .main-content .more-info {
  margin-top: -70px;
  width: 50%;
  height: 0;
  margin-left: auto;
  margin-right: auto;
  align-self: flex-start;
  overflow: hidden;
  animation: reveal-info 4s ease 3s;
  -webkit-animation: reveal-info 4s ease 3s;
}

.container .container-inner .image-wrapper {
  flex-basis: 50%;
  order: 2;
}

.container .container-inner .image-wrapper .image-container {
  width: 100%;
  height: 100%;
  overflow: hidden;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

.container .container-inner .image-wrapper .image-container img {
  width: 100%;
  height: auto;
  position: relative;
}

/* Media Query for mobile devices */
@media (min-width: 350px) and (max-width: 529px) {
  * {
    animation-name: none;
  }

  .container {
    width: 90%;
    height: 700px;
    margin-bottom: 20px;
    font-size: 5px;
    margin-left: auto;
    margin-right: auto;
  }

  .container .container-inner {
    flex-direction: column !important;
    justify-content: center !important;
  }

  .container .container-inner .main-content,
  .container .container-inner .image-wrapper {
    flex-basis: 100%;
  }

  .container .container-inner .main-content {
   

 order: 2;
    outline: 1px solid red;
    margin: 0 50px;
  }

  .container .container-inner .image-wrapper {
    order: 1;
    width: 100%;
    height: 100px;
    justify-content: center;
  }

  .container .container-inner .image-wrapper .image-container {
    width: 100%;
    height: 400px;
    margin-left: auto;
    margin-right: auto;
  }

  .container .container-inner .image-wrapper .image-container img {
    width: 80%;
    height: auto;
    top: -20px;
    margin-left: auto;
    margin-right: auto;
  }
}

/* Media Query for tablet devices */
@media (min-width: 530px) and (max-width: 699px) {
  * {
    animation-name: none;
  }

  .container {
    width: 90%;
    height: 900px;
    font-size: 8px;
    margin-left: auto;
    margin-right: auto;
  }

  .container .container-inner {
    flex-direction: column !important;
    justify-content: center !important;
  }

  .container .container-inner .main-content,
  .container .container-inner .image-wrapper {
    flex-basis: 100%;
  }

  .container .container-inner .main-content {
    width: 80%;
    order: 2;
    align-self: center;
  }

  .container .container-inner .main-content .main-headings {
    width: 100%;
    margin-top: 20px;
    margin-left: auto;
    margin-right: auto;
  }

  .container .container-inner .main-content .main-headings .heading {
    margin-left: 55px;
  }

  .container .container-inner .main-content .main-headings .heading #heading1,
  .container .container-inner .main-content .main-headings .heading #heading2 {
    margin-top: -15px;
  }

  .container .container-inner .main-content .main-headings .heading #heading3 {
    margin-top: -30px;
  }

  .container .container-inner .main-content .main-headings .short-bio {
    margin-top: -20px;
    margin-left: 60px;
  }

  .container .container-inner .main-content .more-info {
    height: 150px;
    width: 60%;
    margin: 0;
    align-self: flex-start;
    margin-top: 0px;
    margin-left: 60px;
    text-align: justify;
  }

  .container .container-inner .image-wrapper {
    order: 1;
    width: 100%;
    height: 400px;
    justify-content: center;
  }

  .container .container-inner .image-wrapper .image-container {
    width: 100%;
    height: 400px;
    margin-left: auto;
    margin-right: auto;
  }

  .container .container-inner .image-wrapper .image-container img {
    width: 80%;
    height: auto;
    top: -20px;
    margin-left: auto;
    margin-right: auto;
  }
}

/* Media Query for desktop devices */
@media (min-width: 700px) and (max-width: 1200px) {
  .container {
    width: 100%;
    height: auto;
    font-size: 9px;
  }

  .container .container-inner .main-content .main-headings .heading #heading3 {
    margin-top: -35px;
  }

  .container .container-inner .main-content .main-headings a.link {
    margin-left: 30px;
  }

  .container .container-inner .main-content .more-info {
    margin-top: -40px;
  }
}


</style>


<script>
function readMore() {
	  var expandInfo = document.getElementById("more-info-js");
	  var mainHeadings = document.getElementById("main-headings-js");
	  
	  mainHeadings.style.transform = "scale(0.7)";
	  expandInfo.style.height = "350px";
	} 
</script>










<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>