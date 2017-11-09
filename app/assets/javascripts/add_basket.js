$(document).ready(function(){
  $('.card-add-basket').click(function(){
    var productName = $(this);
    var idToHide = '#' + productName[0].id;
    $(idToHide).hide().delay(900).slideDown();
  });
});
