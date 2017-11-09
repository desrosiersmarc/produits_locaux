$(document).ready(function(){
  $('.card-add-basket').click(function(){
    var productName = $(this);
    var idToHide = '#' + productName[0].id;
    $(idToHide).addClass('animated bounce');
    // $(idToHide).delay(4000).removeClass('hinge');
  });
});
