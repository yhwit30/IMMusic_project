<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ABOUT TEST"></c:set>
<%@ include file="../common/head.jspf"%>


<div>인사말</div>

<section class="flex justify-around">

	<div>
		<img id="heoImage" src="/resource/허원경 프로필사진.jpg" />

	</div>

	<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Itaque natus atque aut laborum culpa sunt. Ipsa ut esse voluptates
		nisi iusto neque repudiandae totam repellendus numquam quasi. Fuga
		laudantium ipsa.
		<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto modi officia perferendis id voluptatum consectetur aut ipsa recusandae libero quas maxime cum error corrupti neque veniam rem eius distinctio beatae!</div>
		<div>Libero ducimus aut debitis veritatis ipsam illum reprehenderit. Accusantium architecto nam inventore rerum repudiandae perspiciatis consequuntur nulla harum facilis nesciunt possimus dolorum a repellat optio suscipit odio cumque vero quidem!</div>
		<div>Rem quos velit sit expedita eligendi voluptatibus ipsum officia reprehenderit magni unde similique repellendus aliquid adipisci modi blanditiis eos ut libero tempore mollitia earum. Cum dolore aut hic nemo voluptatibus.</div>
		<div>Illum fugiat iste labore modi odio perspiciatis debitis voluptatibus vel nobis eveniet adipisci recusandae dolores voluptate eligendi aperiam molestias totam animi facilis magnam voluptas eaque quas dolorem nam necessitatibus consectetur.</div>
		<div>Architecto officiis quos suscipit est accusamus nihil quia atque hic molestiae voluptate ipsum recusandae amet voluptatum repellendus excepturi ut minima animi veritatis aliquid dicta! Quo esse nostrum error consequuntur repudiandae.</div></div>

</section>


<style>
#heoImage {
	width: 600px;
	height: 700px;
 	object-fit: cover;
}

section > div:nth-child(2){
	width: 600px;
	height: 700px;
	border: 2px solid red;
}


</style>


<%@ include file="../common/foot.jspf"%>