$(function(){



  
   var header = $('#header'),
    intrH = $('#intro').innerHeight(),
    scrollOfSet =  $(window).scrollTop();

    //fiexd header 
     checkscroll(scrollOfSet)

  $(window).on('scroll', function()  {
   
   scrollOfSet = $(this).scrollTop();

   checkscroll(scrollOfSet)
  });

  function checkscroll(scrollOfSet)
  {

    if (scrollOfSet >= intrH ) {
    	header.addClass('fixed');
    }   else
    {
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
            scrollTop:blockOfset 
          }, 500);    
        


     });
   
     /*nav toogler*/
     $('#nav__toggle').on('click', function(event){
             event.preventDefault();
        $(this).toggleClass("active"); 
           $('#nav').toggleClass("active");
 

     });
     
        // collapse
        $("[data-collapse]").on("click", function(event){
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

});