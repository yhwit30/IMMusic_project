<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MAIN"></c:set>

<%@ include file="../common/head.jspf"%>



<section class="intro">
	<div class="video-container">
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
					<img src="https://images.unsplash.com/photo-1510915361894-db8b60106cb1?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHwzfHxndWl0YXJ8ZW58MHx8fHwxNzEyODM5MTU4fDA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450" />
				</time>
			</div>
		</li>
		<li>
			<div>
				<time>
					<img src="https://plus.unsplash.com/premium_photo-1681396936527-ac08137f243b?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHw0NXx8Z3VpdGFyfGVufDB8fHx8MTcxMjg4MDY2N3ww&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450" />
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
			<div class="solid">
				<time class="period">3. press</time>
				~~~~
			</div>
		</li>
		<li>
			<div>
				<time>
					<img src="https://images.unsplash.com/photo-1510915361894-db8b60106cb1?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHwzfHxndWl0YXJ8ZW58MHx8fHwxNzEyODM5MTU4fDA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450" />
				</time>
			</div>
		</li>
		<li>
			<div>
				<time>
					<img src="https://img1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/44wc/image/YNKjhMm9IyEdSKJXIcieW0bEXQ0.jpg" />
				</time>
			</div>
		</li>
		<li>
			<div class="solid">
				<time class="period">4. contact</time>
				~~~~
			</div>
		</li>
</ul>
</section>

		<!-- 페이지 하단 -->
		<%@ include file="../common/foot.jspf"%>