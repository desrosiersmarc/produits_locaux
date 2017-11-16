// dead code to keep in mind. require remove for application.js
$(document).ready(function(){
  $('.delete-oi').click(function(){
    var btnClick = $(this);
    var divId = btnClick[0]['dataset']['oi_id'];
    // console.log("voilà l'id : " +  divId);
    var firstPartText = 'card-cart-';
    var firstPartTextArea = 'card-cart-area-';
    // console.log(typeof firstPartText);
    var productId = firstPartText + divId;
    var productIdArea = firstPartTextArea + divId;
    var prod = document.getElementById(productId);
    var prodArea = document.getElementById(productIdArea);
    // console.log(productIdArea);
    // console.log(typeof prod);
    prod.classList.add("animated", "hinge");
    prodArea.classList.add("slideUp");
  });
});
