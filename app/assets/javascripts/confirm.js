$(document).ready(function(){
  $('.slot').click(function(){
    var slotid = this.id;

    if ($('#'+slotid+' > .res-info-container > .no-confirm').is(":visible")) {

      // close others
      $('.confirm').hide(0);
      $('.no-confirm').show(0);

      //open slot
      $('#'+slotid+' > .res-info-container > .no-confirm').hide(0);
      $('#'+slotid+' > .res-info-container > .confirm').slideDown(200);
    } else if (slotid == "others-slot") {
      $('.confirm').hide(0);
      $('.no-confirm').show(0);
    }
  });
});
