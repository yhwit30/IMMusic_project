<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MAIN"></c:set>

<%@ include file="../common/head.jspf"%>



<section class="intro">
	<div class="container">
		<video muted autoplay loop class="fullscreen-video">
			<source src="/resource/IMMusicVideo.mp4" type="video/mp4">
		</video>
	</div>
</section>


<section class="timeline flex justify-center">
	<ul>
		<li>
			<div class="solid">
				<time class="period">1. 인사말</time>
				~~~~
			</div>
		</li>
		<li>
			<div>
				<time>
					<img src="https://cdn.class101.net/images/3214a220-8a83-465c-9a16-99f6f3354663/1200x630" />
				</time>
			</div>
		</li>
		<li>
			<div class="solid">
				<time class="period">2. artist</time>
				~~~~
			</div>
		</li>
		<li>
			<div>
				<time>
					<img src="https://img1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/44wc/image/YNKjhMm9IyEdSKJXIcieW0bEXQ0.jpg" />
				</time>
			</div>
		</li>


		<!-- 페이지 하단 -->
		<%@ include file="../common/foot.jspf"%>