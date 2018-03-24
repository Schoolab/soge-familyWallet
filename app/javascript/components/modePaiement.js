function modePaiement () {

$(document).ready(function(){
  $(".mode").click(function(){
    console.log("fanny")
    $(this).toggleClass("isactive");
  });
});

}

export {modePaiement}
