function accepted() {

  $(document).ready(function() {

    $(".ask-answer").click(function(e) {

      e.preventDefault();

      $(".ask-answer.isactive").removeClass("isactive");
      $(this).addClass("isactive");

    });

  });

}

export { accepted };
