$(function() {
  /* magick search field */
  $(".overlay-wrap > input").attr("value", "")
  
  $(".overlay-wrap > input").focusin(function() {
		$("label[for="+ this.id +"]").addClass("focus");
	})
	.blur(function() {
		if (this.value == "") {
			$("label[for="+ this.id +"]").removeClass("focus").show();
		}		
	})
	.keypress(function() {
		if (event.keyCode == Event.KEY_TAB) return;
		$("label[for="+ this.id +"]").hide();
	});
  
  /* new service form toggle */
  $("#services tfoot #new_service_form_link").click(function(event) {
    event.preventDefault();
    
    $("#services tfoot tr#service_form").toggle();
    $("#services tfoot #new_service_form_link").toggleClass("selected");    
  });
  
})