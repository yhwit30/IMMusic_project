$(function() {




	var header = $('#header'),
		intrH = $('#intro').innerHeight(),
		scrollOfSet = $(window).scrollTop();

	//fiexd header 
	checkscroll(scrollOfSet)

	$(window).on('scroll', function() {

		scrollOfSet = $(this).scrollTop();

		checkscroll(scrollOfSet)
	});

	function checkscroll(scrollOfSet) {

		if (scrollOfSet >= intrH) {
			header.addClass('fixed');
		} else {
			header.removeClass('fixed');
		}
	}

	// smoot scroll
	$("[data-scroll]").on('click', function(event) {
		event.preventDefault();

		var $this = $(this),
			blocktId = $(this).data('scroll'),
			blockOfset = $(blocktId).offset().top;

		$('nav a').removeClass('active');
		$this.addClass('active');

		$("html , body").animate({
			scrollTop: blockOfset
		}, 500);



	});

	/*nav toogler*/
	$('#nav__toggle').on('click', function(event) {
		event.preventDefault();
		$(this).toggleClass("active");
		$('#nav').toggleClass("active");


	});

	// collapse
	$("[data-collapse]").on("click", function(event) {
		event.preventDefault();

		var $this = $(this),
			blocktId = $(this).data('collapse');

		$this.toggleClass("active");



	});
	//silder
	$("[data-slider]").slick({
		infinite: true,
		fade: false,
		slidesToShow: 1,
		slidesToScroll: 1
	});
	$(document).ready(function() {

		$("#form").submit(function() {
			$.ajax({
				type: "POST",
				url: "mail.php",
				data: $(this).serialize()
			}).done(function() {
				$(this).find("input").val("");
				alert("Спасибо за заявку! Скоро мы с вами свяжемся.");
				$("#form").trigger("reset");
			});
			return false;
		});

	});

	var albums = [
    {
        image: "/resource/음악앨범 1.jpg",
        title: "Will It Be Spring Tomorrow?",
        link: ""
    },
    {
        image: "/resource/음악앨범 2.jpg",
        title: "Interval Of Parallel",
        link: ""
    },
    {
        image: "/resource/음악앨범 3.jpg",
        title: "Trigram",
        link: "https://youtu.be/KebPgX7_sGA"
    },
    {
        image: "/resource/음악앨범 4.jpg",
        title: "Le Moment Disperse",
        link: ""
    },
    {
        image: "/resource/음악앨범 5.jpg",
        title: "To The West",
        link: ""
    },
    {
        image: "/resource/음악앨범 6.jpg",
        title: "스페인의 인상",
        link: ""
    }
];

var currentIndex = 0;
var interval = 3000; // 이미지를 변경할 간격 (밀리초 단위)

function changeAlbum() {
    var album = albums[currentIndex];
    document.getElementById("albumImage").src = album.image;
    document.getElementById("albumTitle").innerHTML = album.title;
    if (album.link) {
        document.getElementById("albumImage").parentNode.href = album.link;
    } else {
        document.getElementById("albumImage").parentNode.removeAttribute("href");
    }
    currentIndex = (currentIndex + 1) % albums.length;
}

// 페이지가 로드되면 시작
window.onload = function() {
    changeAlbum(); // 초기 이미지 설정
    setInterval(changeAlbum, interval); // 주기적으로 이미지 변경
};

});