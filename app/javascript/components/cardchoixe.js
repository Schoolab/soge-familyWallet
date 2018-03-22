function cardChoice () {

$(document).ready(function(){

      $("#badge-mode-3").click(function(){

        $('.adresse-container').removeClass("hidden");
        console.log('coucou')

        });

      $("#badge-mode").click(function(){

        $('.adresse-container').addClass("hidden");
        console.log('courone')

        });


  });




}

export {cardChoice}
