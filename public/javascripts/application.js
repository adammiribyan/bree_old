$(function() {
  // PJAX stuff
  $("a[data-pjax]").pjax();
  $('#content')
    .bind('start.pjax', function() { $('#loading').show() })
    .bind('end.pjax', function() { $('#loading').hide() })
  
  /* magic search field */
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
  $("#services tfoot #new_service_form_link").live("click", function(event) {
    event.preventDefault();
    
    $("#services tfoot tr#service_form").toggle();
    $("#services tfoot #new_service_form_link").toggleClass("selected");    
  });
  
  // Doctors
  // show/hide the photo upload field and hide/show all other
  $("#switch_to_photo").click(function(event) {
    event.preventDefault();
    $(".hide_while_photo").hide();
    $("#doctor_photo_form").fadeIn();
  });
  
  $("#switch_to_data").click(function(event) {
    event.preventDefault();
    $(".hide_while_photo").fadeIn();
    $("#doctor_photo_form").hide();
  });
  
  $("#doctor_photo").change(function() {
    $(".dots").show();
    $(".cancel").hide();
    
    $("#doctor_photo_form").submit();
    return false;
  });
  
  // Patient's profile file
  // show progress dots and hide the file field on submit
  $("#patient_profile").change(function() {
    $(".dots").show();
    
    $("#patient_profile_form").submit();
    return false;
  });
})