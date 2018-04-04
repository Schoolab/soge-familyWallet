function askMoneyHide () {

$(document).ready(function(){
  console.log("buns");
  $('#show-2').hide();

  $('.waves-light').click(function (){
    $('#show-1').fadeOut();
    $('#show-2').fadeIn();
  });
  $('.come-back').click(function() {
    $('#show-2').fadeOut();
    $('#show-1').fadeIn();
  });




  });

}


export{askMoneyHide}
