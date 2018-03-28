function modePaiement () {

$(document).ready(function(){
  $(".checkbox").click(function(){
  if ((this).hasClass('selected-mode')) {
    console.log("removeClass")
    $(this).removeClass('selected-mode');
  } else {

    console.log("addClass")
    $(this).addClass('selected-mode');
  }


  });
});

}

export {modePaiement}
