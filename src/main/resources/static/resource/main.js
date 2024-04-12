$('select[data-value]').each(function(index, el) {
	const $el = $(el);

	defaultValue = $el.attr('data-value').trim();

	if (defaultValue.length > 0) {
		$el.val(defaultValue);
	}
});


(function() {
    "use strict";

    // ".timeline li" 선택자에 해당하는 모든 요소를 찾아서 items 변수에 저장
    var items = document.querySelectorAll(".timeline li");

    // 뷰포트 내에 요소가 있는지 확인하는 함수
    // http://stackoverflow.com/questions/123999/how-to-tell-if-a-dom-element-is-visible-in-the-current-viewport
    function isElementInViewport(el) {
        var rect = el.getBoundingClientRect();
        return (
            rect.top >= 0 &&
            rect.left >= 0 &&
            rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
            rect.right <= (window.innerWidth || document.documentElement.clientWidth) &&
            // 요소의 왼쪽 경계가 화면 안에 들어오거나, 요소의 오른쪽 경계가 화면 안에 들어오면 됩니다.
            (rect.left <= 0 || rect.right >= 0)
        );
    }

    function callbackFunc() {
        // 모든 타임라인 항목을 순회
        for (var i = 0; i < items.length; i++) {
            // 인덱스에 따라서 해당 항목과 그 다음 항목이 뷰포트에 모두 있을 때 "in-view" 클래스를 추가
            if (isElementInViewport(items[i]) && isElementInViewport(items[i + 1])) {
                items[i].classList.add("in-view");
                items[i + 1].classList.add("in-view");
            }
            // 다음 요소로 건너뛰기 위해 인덱스를 증가시킴
            i++;
        }
    }

    // 페이지 로드 시 함수 실행
    window.addEventListener("load", callbackFunc);
    // 뷰포트 크기 변경 시 함수 실행
    window.addEventListener("resize", callbackFunc);
    // 스크롤 시 함수 실행
    window.addEventListener("scroll", callbackFunc);
})();
