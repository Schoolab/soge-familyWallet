function accepted() {

  $(document).ready(function() {
    $('#show-3').hide();

    $(".ask-answer").click(function(e) {

      e.preventDefault();

      $(".ask-answer.isactive").removeClass("isactive");
      $(this).addClass("isactive");
      $('#show-3').fadeIn("slow");

    });

  });

}

export { accepted };
