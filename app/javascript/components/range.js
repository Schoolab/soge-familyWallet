function sliderRange() {
  $(document).ready(function() {
    $('#plafond-carte-slider').on('input', function(e) {
      var value = e.target.value;
      $('#plafond-carte-value').html(value + "€");
    });
  });
}

export { sliderRange };