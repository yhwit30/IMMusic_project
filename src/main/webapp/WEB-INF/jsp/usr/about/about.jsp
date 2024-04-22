<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ABOUT"></c:set>
<%@ include file="../common/head.jspf"%>



<section>

	<div class="greet-bg">
		<p>
			IMMusic <br>& Art
		</p>
	</div>

	<div class="greet">인사말 Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut
		esse voluptates nisi iusto neque repudiandae totam repellendus numquam
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




<style>
body {
	overflow-x: hidden;
}

section {
	padding-bottom: 200px;
}

.greet-bg {
	text-align: center;
	font-size: 20rem;
	font-weight: bold;
	font-family: 'Arita buri';
	position: absolute;
	color: rgba(0, 0, 0, 0.1);
	z-index: -99;
	transform: rotate(-10deg);
	top: 100px;
	bottom: 0;
}

.greet {
	background-color: white;
	margin: auto;
	width: 1000px;
	height: 700px;
	border: 2px solid red;
	opacity: 0; /* 초기에 투명도를 0으로 설정 */
	position: relative;
	top: 100px; /* 아래에서 시작할 위치 조정 */
}
</style>



<script>
	$(document).ready(function() {
		$('.greet').animate({
			top : 0,
			opacity : 1
		}, {
			duration : 1500,
			start : function() {
				$(this).fadeIn(); // fadeIn과 animate를 동시에 실행
			}
		});
	});
</script>


<%@ include file="../common/foot.jspf"%>