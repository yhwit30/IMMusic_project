<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="#{board.code } PRESS LIST"></c:set>
<%@ include file="../common/head.jspf"%>
<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,700);

body {
  height: 100vh;
  background-image: linear-gradient(to right, #ffecd2 0%, #fcb69f 100%);
  font-family: 'Raleway', sans-serif;
}

.hover_wrap {
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}

.hover_wrap .effect {
  position: relative;
  max-width: 400px; max-height: 300px;
  margin: 10px;
  width: 100%;
  background: #000;
  overflow: hidden;
}

.hover_wrap .effect img {
  width: 100%; display: block; opacity: .9;
  transition: all 0.55s ease;
}

.hover_wrap .effect .title {
  position: absolute;
  top: 58%; left: 25px;
  color: #fff;
  font-weight: 400;
  font-size: 24px;
  text-transform: uppercase;
  padding: 7px 10px 10px 10px;
}
.hover_wrap .effect .title em {
  display: block;
  background: #fff; color: #000;
  padding: 5px 10px;
  font-weight: 700;
  font-size: 16px;
  text-align: center;
  margin-top: 3px;
}
.hover_wrap .effect .title:before {
  content:'';
  width: 400px; height: 2px;
  position: absolute; top: 0; left: 10px;
  background: #fff;
  transform: translateX(100%);
  transition: all 0.55s ease;
}
.hover_wrap .effect .title:after {
  content:'';
  width: 400px; height: 2px;
  position: absolute; bottom: 0; right: 10px;
  background: #fff;
  transform: translateX(-100%);
  transition: all 0.55s ease;
}

.hover_wrap .effect .title h3:before {
  content:'';
  width: 2px; height: 300px;
  position: absolute; top: 10px; right: 0;
  background: #fff;
  transform: translateY(100%);
  transition: all 0.55s 0.15s ease;
}
.hover_wrap .effect .title h3:after {
  content:'';
  width: 2px; height: 300px;
  position: absolute; bottom: 10px; left: 0;
  background: #fff;
  transform: translateY(-100%);
  transition: all 0.55s 0.15s ease;
}


.hover_wrap .effect figcaption {
  position: absolute;
  bottom: 42%; left: 25px;
  color: #fff;
  font-size: 0.8em;
  padding: 5px 60px 5px 10px;
  line-height: 1.2;
  font-weight: 500;
  opacity: 0;
  transition: all 0.55s 0.2s ease;
}

/* media quary */ 
@media (max-width: 600px){
  .hover_wrap {flex-direction: column;}
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

</style>

<section class="mt-2 text-xl px-4">
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
	</div>


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
	</div>



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

			<a href="list??boardId=${boardId }&page=1&searchKeywordTypeCode=${param.searchKeywordTypeCode}&searchKeyword=${param.searchKeyword}">맨앞</a>
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

</section>










<%@ include file="../common/foot.jspf"%>