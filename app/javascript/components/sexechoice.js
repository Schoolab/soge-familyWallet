function sexChoice() {

  $(document).ready(function() {

    $(".btn-checkboxe").click(function(e) {

      e.preventDefault();

      $(".btn-checkboxe.isactive").removeClass("isactive");
      $(this).addClass("isactive");

    });

  });

}

export { sexChoice };
