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
  
  // Doctors
  // show/hide the photo upload field and hide/show all other
  $("#switch_to_photo").click(function(event) {
    event.preventDefault();
    $(".hide_while_photo").hide();
    $("#patient_photo_form").fadeIn();
  });
  
  $("#switch_to_data").click(function(event) {
    event.preventDefault();
    $(".hide_while_photo").fadeIn();
    $("#patient_photo_form").hide();
  });
  
  $("input[type='file']").change(function() {
    $(".dots").show();
    $(".cancel").hide();
    
    $("#patient_photo_form").submit();
    return false;
  });
})