<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ABOUT"></c:set>
<%@ include file="../common/head.jspf"%>



<section class="flex justify-around">

	<div>
		<img id="heoImage" src="/resource/허원경 프로필사진.jpg" />

	</div>

	<div>인사말 Lorem ipsum dolor sit amet, consectetur adipisicing
		elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut esse
		voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.
		Lorem ipsum dolor sit amet, consectetur adipisicing
		elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut esse
		voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.Lorem ipsum dolor sit amet, consectetur adipisicing
		elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut esse
		voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.Lorem ipsum dolor sit amet, consectetur adipisicing
		elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut esse
		voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.Lorem ipsum dolor sit amet, consectetur adipisicing
		elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut esse
		voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.Lorem ipsum dolor sit amet, consectetur adipisicing
		elit. Itaque natus atque aut laborum culpa sunt. Ipsa ut esse
		voluptates nisi iusto neque repudiandae totam repellendus numquam
		quasi. Fuga laudantium ipsa.</div>

</section>


<style>
#heoImage {
	width: 600px;
	height: 700px;
	object-fit: cover;
	border: 2px solid gold;
}

section {
	padding-bottom: 200px;
}

section>div:nth-child(2) {
	width: 600px;
	height: 700px;
	border: 2px solid red;
}
</style>


<%@ include file="../common/foot.jspf"%>