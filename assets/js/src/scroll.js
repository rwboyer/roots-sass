
(function($) {
  $(function() {
    $('a[href*="#"]:not([href="#"])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html,body').animate({
            scrollTop: $('html,body').scrollTop() + target.offset().top - $('.top-msg').outerHeight()
          }, 1000);
          return false;
        }
      }
    });
  });
  
  $(function () {

    $('.side').scroll(function () {
        $(window).scrollTop($(this).scrollTop());
    });

    $(window).scroll(function () {
        $('.side').scrollTop($(this).scrollTop());
    });

  });
  
})(jQuery);
