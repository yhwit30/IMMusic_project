<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="PRESS DETAIL"></c:set>
<%@ include file="../common/head.jspf"%>
<%@ include file="../common/toastUiEditorLib.jspf"%>


<style>
#sub.view {
padding-left: 70px;
padding-right: 30px;
}


#sub.view .title {
	border-bottom: 1px solid #d6d6d6;
}

#sub.view .title {
	border-top: 3px solid #000000;
	padding: 30px;
}

#sub.view .text_w {
	min-height: 500px;
	padding: 60px 30px;
}

#sub.view .title span {
	display: block;
	font-size: 16px;
	color: #666;
	margin-top: 15px;
}

.title {
	font-size: 30px;
}

.btn {
margin-left: 790.5px;
}

</style>

<div id="sub" class="view">
	<div class="title">
		<strong>${press.getTitle() }</strong> <span>2024-04-25</span>
	</div>
	<div class="text_w">
	    <c:if test="${genfilecnt != 0}">
				<img class="w-full rounded-xl" src="${rq.getImgUri(article.id)}" onerror="${rq.profileFallbackImgOnErrorHtml}"
							alt="" />
		</c:if>
		<p class="MsoNoSpacing" align="center" style="text-align: center">${press.getBody() }</p>
	</div>
</div>

<a class="btn" href="listTest">list로 가기</a>

<%@ include file="../common/foot.jspf"%>