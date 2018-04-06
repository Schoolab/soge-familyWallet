function askMoneyHide () {

$(document).ready(function(){
  console.log("buns");

  $('.waves-light').click(function (){
    $('.hidden').removeClass('hidden');
    $('#show-1').addClass('hidden');
  });
  $('.come-back').click(function() {
    $(this).hide();
    $('.hidden').removeClass('hidden');
    $('#show-2').addClass('hidden');
  });




  });

}


export{askMoneyHide}
