function dropDown () {

var elem = document.querySelector('select');
var instance = M.FormSelect.init(elem);

$(document).ready(function(){
  $("#paiement-new").click(function(){
    console.log("yaya");
  });
});
}
export {dropDown}



