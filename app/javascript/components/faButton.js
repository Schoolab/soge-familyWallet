function faButton () {

  console.log("mercy")

  var elem = document.querySelector('.fixed-action-btn');

  var instance = M.FloatingActionButton.init(elem, {
    direction: 'left',
    hoverEnabled: false
  });

}

export {faButton}
