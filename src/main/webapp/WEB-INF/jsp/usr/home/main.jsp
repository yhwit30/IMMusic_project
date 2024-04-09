<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MAIN"></c:set>
<%@ include file="../common/head.jspf"%>


<div class="page mt-10 mx-auto">
	
	<div>
		<a class="btn btn-outline w-full" href="/usr/article/list">커뮤니티 보기(필요없음 코드더미용)</a>
		<img src="/resource/community.png" alt="" />
	</div>
	<div>
	푸바오 귀여워!!
	</div>
	<div>
	테스트중~
	</div>
	<div>
	테스트아이디: admin
	비번: admin <br/>
	테스트아이디: test1
	비번: test1<br/>
	테스트아이디: test2
	비번: test2

yhw branch add


	</div>

<style type="text/css">
.mainSearch {
	text-align: center;
}

.page {
	display: flex;
	/* 	border: 5px solid red; */
	height: 500px;
	width: 1000px;
	justify-content: space-around;
	align-items: center;
}

.page>div>a {
	background: linear-gradient(to right, #536976, #292e49); /* 로얄블루 색상 */
	color: white;
	margin-bottom: 10px;
}

.page>div {
	text-align: center;
	width: 250px;
	height: 400px;
}

.page>div:nth-child(1) {
	/* 	border: 3px solid blue; */
	
}

.page>div:nth-child(2) {
	/* 	border: 3px solid gold; */
	
}

.page>div:nth-child(3) {
	/* 	border: 3px solid green; */
	
}
</style>



<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>