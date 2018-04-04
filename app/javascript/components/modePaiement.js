function modePaiement() {

  $(document).ready(function() {

    $(".col.s4 .checkbox").click(function() {

      $(".col.s4 .checkbox").removeClass('selected-mode');
      $(this).addClass('selected-mode');

    });

  });

}

export { modePaiement };
