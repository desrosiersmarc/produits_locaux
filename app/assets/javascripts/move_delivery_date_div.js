var divDay = document.querySelector('.delivery-day');
$(window).scroll(function (event) {
    var scroll = $(window).scrollTop();
    if (scroll < 72) {
      $('.delivery-day').removeClass('animated flash');
      delta = 70 - scroll;
      deltaPx = delta + "px";
      if (delta > -2) {
        divDay.style.top = deltaPx;
      }
    } else {
      divDay.style.top = "0px";
      $('.delivery-day').addClass('animated flash');
    };
});
