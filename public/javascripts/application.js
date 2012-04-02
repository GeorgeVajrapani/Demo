// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
	$("form select#contact_state_id").change(function (event){
		var id = $("form select#contact_state_id").find(':selected').val();
			//alert('state_id' + id);
			$("form select#contact_municipality_id").load('/municipalities.js?state_id='+id);
			});
		});
		