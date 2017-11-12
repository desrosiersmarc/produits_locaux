var divDay = document.querySelector('.delivery-day');
$(window).scroll(function (event) {
    var scroll = $(window).scrollTop();
    if (scroll < 71) {
      delta = 70 - scroll;
      deltaPx = delta + "px";
      if (delta > 0) {
        divDay.style.top = deltaPx;
      }
    }
});
