function identBancaire () {
  $(document).ready(function(){
    $("#toshow").hide();

     $('#identifiants').click(function(){
      if ($(this).hasClass("isactive")){

        $(this).removeClass("isactive");
        $("#toshow").fadeOut("slow");

      } else {

        $(this).addClass("isactive");
        $("#toshow").fadeIn("slow");
      };


     });

  });

}

export {identBancaire}
