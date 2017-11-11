$(window).scroll(function (event) {
    var scroll = $(window).scrollTop();
    console.log(scroll);
  if (scroll > 70) {
    $('.delivery-day').addClass('delivery-day-top');
  } else {
    $('.delivery-day').removeClass('delivery-day-top');
  }
});
