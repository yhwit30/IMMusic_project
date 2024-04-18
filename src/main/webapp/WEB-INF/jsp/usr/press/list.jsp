<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="#{board.code } PRESS LIST"></c:set>
<%@ include file="../common/head.jspf"%>
<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,700)
	;
/* 구글 폰트 서비스에서 Raleway 글꼴을 가져옵니다. */
body {
	height: 100vh; /* 화면 전체 높이의 100%로 설정합니다. */
/* 	background-image: linear-gradient(to right, #ffecd2 0%, #fcb69f 100%); */
	/* 배경 이미지를 선형 그라데이션으로 설정합니다. */
	font-family: 'Raleway', sans-serif; /* 폰트를 Raleway로 설정합니다. */
}

.hover_wrap {
	height: 100vh; /* 화면 전체 높이의 100%로 설정합니다. */
	display: flex; /* 플렉스 박스로 요소들을 배치합니다. */
	align-items: center; /* 요소들을 세로 방향 가운데로 정렬합니다. */
	justify-content: center; /* 요소들을 가로 방향 가운데로 정렬합니다. */
	overflow: hidden; /* 넘치는 컨텐츠를 숨깁니다. */
}

.hover_wrap .effect {
	position: relative; /* 상대적 위치 지정합니다. */
	max-width: 500px; /* 최대 너비를 400px로 제한합니다. */
	max-height: 750px; /* 최대 높이를 300px로 제한합니다. */
	margin: 10px; /* 외부 여백을 설정합니다. */
	width: 100%; /* 너비를 화면 전체로 설정합니다. */
	background: #000; /* 배경을 검은색으로 설정합니다. */
	overflow: hidden; /* 넘치는 컨텐츠를 숨깁니다. */
}

.hover_wrap .effect img {
	width: 100%; /* 이미지를 화면에 꽉 차게 표시합니다. */
	display: block; /* 인라인 요소를 블록 요소로 변경합니다. */
	opacity: .9; /* 투명도를 설정합니다. */
	transition: all 0.55s ease; /* 전환 효과를 설정합니다. */
}

.hover_wrap .effect .title {
	position: absolute; /* 절대적 위치 지정합니다. */
	top: 72%; /* 부모 요소의 상단으로부터의 위치를 설정합니다. */
	left: 60px; /* 부모 요소의 왼쪽으로부터의 위치를 설정합니다. */
	color: #fff; /* 글자 색상을 흰색으로 설정합니다. */
	font-weight: 400; /* 글자 두께를 설정합니다. */
	font-size: 24px; /* 글자 크기를 설정합니다. */
	text-transform: uppercase; /* 텍스트를 대문자로 변환합니다. */
	padding: 7px 10px 10px 10px; /* 안쪽 여백을 설정합니다. */
}

.hover_wrap .effect .title em {
	display: block; /* 인라인 요소를 블록 요소로 변경합니다. */
	background: #fff; /* 배경을 흰색으로 설정합니다. */
	color: #000; /* 글자 색상을 검은색으로 설정합니다. */
	padding: 5px 10px; /* 안쪽 여백을 설정합니다. */
	font-weight: 700; /* 글자 두께를 설정합니다. */
	font-size: 16px; /* 글자 크기를 설정합니다. */
	text-align: center; /* 텍스트 정렬을 가운데로 설정합니다. */
	margin-top: 3px; /* 위쪽 마진을 설정합니다. */
}

.hover_wrap .effect .title:before {
	content: ''; /* 가상 요소를 생성합니다. */
	width: 700px; /* 가상 요소의 너비를 설정합니다. */
	height: 2px; /* 가상 요소의 높이를 설정합니다. */
	position: absolute; /* 절대적 위치 지정합니다. */
	top: 0; /* 부모 요소의 상단으로부터의 위치를 설정합니다. */
	left: 10px; /* 부모 요소의 왼쪽으로부터의 위치를 설정합니다. */
	background: #fff; /* 배경을 흰색으로 설정합니다. */
	transform: translateX(100%); /* 요소를 수평으로 이동시킵니다. */
	transition: all 0.55s ease; /* 전환 효과를 설정합니다. */
}

.hover_wrap .effect .title:after {
	content: ''; /* 가상 요소를 생성합니다. */
	width: 700px; /* 가상 요소의 너비를 설정합니다. */
	height: 2px; /* 가상 요소의 높이를 설정합니다. */
	position: absolute; /* 절대적 위치 지정합니다. */
	bottom: 0; /* 부모 요소의 하단으로부터의 위치를 설정합니다. */
	right: 10px; /* 부모 요소의 오른쪽으로부터의 위치를 설정합니다. */
	background: #fff; /* 배경을 흰색으로 설정합니다. */
	transform: translateX(-100%); /* 요소를 수평으로 이동시킵니다. */
	transition: all 0.55s ease; /* 전환 효과를 설정합니다. */
}

.hover_wrap .effect .title h3:before {
	content: ''; /* 가상 요소를 생성합니다. */
	width: 2px; /* 가상 요소의 너비를 설정합니다. */
	height: 500px; /* 가상 요소의 높이를 설정합니다. */
	position: absolute; /* 절대적 위치 지정합니다. */
	top: 10px; /* 부모 요소의 상단으로부터의 위치를 설정합니다. */
	right: 0; /* 부모 요소의 오른쪽으로부터의 위치를 설정합니다. */
	background: #fff; /* 배경을 흰색으로 설정합니다. */
	transform: translateY(100%); /* 요소를 수직으로 이동시킵니다. */
	transition: all 0.55s 0.15s ease; /* 전환 효과를 설정합니다. */
}

.hover_wrap .effect .title h3:after {
	content: ''; /* 가상 요소를 생성합니다. */
	width: 2px; /* 가상 요소의 너비를 설정합니다. */
	height: 600px; /* 가상 요소의 높이를 설정합니다. */
	position: absolute; /* 절대적 위치 지정합니다. */
	bottom: 10px; /* 부모 요소의 하단으로부터의 위치를 설정합니다. */
	left: 0; /* 부모 요소의 왼쪽으로부터의 위치를 설정합니다. */
	background: #fff; /* 배경을 흰색으로 설정합니다. */
	transform: translateY(-100%); /* 요소를 수직으로 이동시킵니다. */
	transition: all 0.55s 0.15s ease; /* 전환 효과를 설정합니다. */
}

.hover_wrap .effect figcaption {
	position: absolute; /* 절대적 위치 지정합니다. */
	bottom: 30%; /* 부모 요소의 하단으로부터의 위치를 설정합니다. */
	left: 60px; /* 부모 요소의 왼쪽으로부터의 위치를 설정합니다. */
	color: #fff; /* 글자 색상을 흰색으로 설정합니다. */
	font-size: 1em; /* 글자 크기를 설정합니다. */
	padding: 5px 60px 5px 10px; /* 안쪽 여백을 설정합니다. */
	line-height: 1.2; /* 줄 간격을 설정합니다. */
	font-weight: 500; /* 글자 두께를 설정합니다. */
	opacity: 0; /* 투명도를 0으로 설정합니다. */
	transition: all 0.55s 0.2s ease; /* 전환 효과를 설정합니다. */
}

/* media quary */
@media ( max-width : 600px) {
	.hover_wrap {
		flex-direction: column;
	}
}

.hover_wrap .effect:hover img {
	opacity: .5;
}

.hover_wrap .effect:hover .title:before {
	transform: translateX(0);
}

.hover_wrap .effect:hover .title:after {
	transform: translateX(0);
}

.hover_wrap .effect:hover .title h3:before {
	transform: translateY(0);
}

.hover_wrap .effect:hover .title h3:after {
	transform: translateY(0);
}

.hover_wrap .effect:hover figcaption {
	opacity: 1;
}

.hover_wrap .effect h3,
.hover_wrap .effect em {
    opacity: 0;
    transition: opacity 0.3s ease; /* Add transition for smooth effect */
}

.hover_wrap .effect:hover h3,
.hover_wrap .effect:hover em {
    opacity: 1;
}
</style>


<div class="hover_wrap">
	<figure class="effect">
		<img src="/resource/허대욱_트리오.png" alt="이미지">
		<div class="title">
			<h3>자세히보기 <em>클릭</em></h3>
		</div>
		<figcaption>허대욱 트리오 기사</figcaption>
	</figure>
	<figure class="effect">
		<img src="https://tistory3.daumcdn.net/tistory/3344028/skin/images/hover_effect10.jpg" alt="이미지">
		<div class="title">
			<h3>
				Mouse <em>Hover</em>
				</h3>
		</div>
		<figcaption>Mouse hover effect. Mouse hover effect. Mouse hover effect.Mouse hover effect. Mouse hover
			effect. Mouse hover effect.</figcaption>
	</figure>
</div>

<%-- <section class="mt-2 text-xl px-4">
	<div class="mx-auto overflow-x-auto">
		<div class="badge badge-outline">${pressesCount }개</div>
		<table class="table-box-1 table" border="1">
			<colgroup>
				<col style="width: 10%" />
				<col style="width: 20%" />
				<col style="width: 60%" />
				<col style="width: 10%" />
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>날짜</th>
					<th>제목</th>
					<th>작성자</th>
					<th>좋아요</th>
					<th>싫어요</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="press" items="${presses }">
					<tr class="hover">
						<td>${press.id }</td>
						<td>${press.regDate.substring(0,10) }</td>
						<td>
							<a href="detail?id=${press.id }">${press.title }
							<c:if test="${press.extra__repliesCnt > 0 }">
								<span style="color: red;">[${press.extra__repliesCnt }]</span>
							</c:if>
						</a>
						</td>
						<td>${press.extra__writer }</td>
						<td>${press.goodReactionPoint }</td>
						<td>${press.badReactionPoint }</td>
						<td>${press.hitCount }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div> --%>
<%-- 

	<div>
		<form action="">
			<input type="hidden" name="boardId" value="${param.boardId }" />

			<select data-value="${param.searchKeywordTypeCode }" class="select select-bordered select-sm max-w-xs"
				name="searchKeywordTypeCode">
				<option value="title">제목</option>
				<option value="extra__writer">작성자</option>
				<option value="body">내용</option>
			</select>
			<input value="${param.searchKeyword }" name="searchKeyword" type="text" placeholder="What is your searchKeyword?"
				class="input-sm input input-bordered w-60 max-w-xs mt-3" />
			<button class="btn btn-primary btn-sm" type="submit">검색</button>
		</form>
	</div> --%>



<!-- 버전2 동적 페이징-->
<!-- 	<div class="pagination flex justify-center mt-3"> -->
<%-- 		<c:set var="paginationLen" value="3" /> --%>
<%-- 		<c:set var="startPage" value="${page -  paginationLen  >= 1 ? page - paginationLen : 1}" /> --%>
<%-- 		<c:set var="endPage" --%>
<%-- 			value="${page +  paginationLen  <= pagination.totalPage ? page + paginationLen : pagination.totalPage}" /> --%>

<%-- 		<c:set var="baseUri" value="?boardId=${boardId}" /> --%>
<%-- 		<c:set var="baseUri" value="${baseUri}&searchKeywordTypeCode=${param.searchKeywordTypeCode}" /> --%>
<%-- 		<c:set var="baseUri" value="${baseUri}&searchKeyword=${param.searchKeyword}" /> --%>

<%-- 		<c:if test="${startPage > 1 }"> --%>
<%-- 			<a class="btn btn-sm" href="?page=1&${baseUri}">1</a> --%>
<!-- 			<button class="btn btn-sm btn-disabled">...</button> -->
<%-- 		</c:if> --%>

<%-- 		<c:forEach begin="${startPage }" end="${endPage }" var="i"> --%>
<%-- 			<a class="btn btn-sm ${page == i ? 'btn-active' : '' }" href="?page=${i }&${baseUri}">${i }</a> --%>
<%-- 		</c:forEach> --%>

<%-- 		<c:if test="${endPage < pagination.totalPage }"> --%>
<!-- 			<button class="btn btn-sm btn-disabled">...</button> -->
<%-- 			<a class="btn btn-sm" href="?page=${pagination.totalPage }&${baseUri}">${pagination.totalPage }</a> --%>
<%-- 		</c:if> --%>

<!-- 	</div> -->

<!-- 버전1  -->
<div class="pagination flex justify-center mt-3">
	<div class="btn-group">

		<a
			href="list??boardId=${boardId }&page=1&searchKeywordTypeCode=${param.searchKeywordTypeCode}&searchKeyword=${param.searchKeyword}">맨앞</a>
		<c:if test="${page > pagination.pageSize }">
			<a
				href="list?boardId=${boardId }&page=${pagination.from - 1}&searchKeywordTypeCode=${param.searchKeywordTypeCode}&searchKeyword=${param.searchKeyword}">◀</a>
		</c:if>

		<c:forEach begin="${pagination.from }" end="${pagination.end}" var="i">
			<a class="btn btn-sm ${page == i ? 'btn-active' : '' }"
				href="?boardId=${boardId }&page=${i }&searchKeywordTypeCode=${param.searchKeywordTypeCode}&searchKeyword=${param.searchKeyword}">${i }</a>
		</c:forEach>

		<c:if test="${pagination.end < pagination.totalPage }">
			<a
				href="list?boardId=${boardId }&page=${pagination.from + pagination.pageSize}&searchKeywordTypeCode=${param.searchKeywordTypeCode}&searchKeyword=${param.searchKeyword}">▶</a>
		</c:if>
		<a
			href="list?boardId=${boardId }&page=${pagination.totalPage}&searchKeywordTypeCode=${param.searchKeywordTypeCode}&searchKeyword=${param.searchKeyword}">맨뒤</a>

	</div>
</div>
<!-- </section> -->
<%@ include file="../common/foot.jspf"%>