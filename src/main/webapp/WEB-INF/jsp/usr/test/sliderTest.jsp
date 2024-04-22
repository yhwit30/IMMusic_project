<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTIST TEST"></c:set>
<%@ include file="../common/head.jspf"%>

<style>
body{
	margin:0;
	padding:0;
}
#silder{
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    position: absolute;
    width: 50%;
    height: 400px;
    background-position: 100% 100%;
    background-size: cover;
    background-repeat: no-repeat;
    animation: slider 10s infinite linear ;
    background-image: url("https://images.pexels.com/photos/3586966/pexels-photo-3586966.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
}

@keyframes slider{
    0%{background-image: url("https://images.pexels.com/photos/755405/pexels-photo-755405.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");}
    25%{background-image: url("https://images.pexels.com/photos/771881/pexels-photo-771881.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");}
}
</style>

<div id="silder"></div>

<!-- 페이지 하단 -->
<%@ include file="../common/foot.jspf"%>