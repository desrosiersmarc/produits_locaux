$(document).ready(function(){
  $('.card-add-basket').click(function(){
    var productName = $(this);
    var idToHide = '#' + productName[0].id;
    console.log(idToHide);
    $(idToHide).hide();
    $(idToHide).fadeIn(5000);
  });
});
