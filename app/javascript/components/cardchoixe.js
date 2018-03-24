function cardChoice () {

$(document).ready(function(){

      $("#badge-mode-3").click(function(){
        $('.adresse-container').removeClass("hidden");
      });

      $("#badge-mode").click(function(){
        $('.adresse-container').addClass("hidden");
      });


  });




}

export {cardChoice}
