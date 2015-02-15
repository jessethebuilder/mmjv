function ready(){
  //main doc.ready

  //in case content does not get to bottom of the screen
  $('#page_content').css('min-height', $(window).height() - 250);
}
$(document).ready(ready);
$(document).on('page:load', ready);

