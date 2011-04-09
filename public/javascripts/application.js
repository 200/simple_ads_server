// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

jQuery.fn.submitWithAjax = function() {
  this.submit(function() {
    $.post(this.action, $(this).serialize(), null, "script");
    return false;
  })
  return this;
};

$(document).ready(function() {
  $("#editBoxForm").submitWithAjax();
})


//function will show edit box on edit zone page 
//function should also automatically enter appropriate data to inputs like name, desc or banner_id

function showEditBox(zone_id) {
	//get the name of zone
	var name  = document.getElementById(zone_id + "_name").childNodes[0].textContent;
	
	//get the description of zone
	var description = document.getElementById(zone_id + "_desc").childNodes[0].textContent;
	
	//get the default_banner_id
	var banner_id = document.getElementById(zone_id + "_banner_id").childNodes[0].textContent;
	
	
	//filling inputs with data
	
	var name_input = document.getElementById("name_input");
	name_input.setAttribute("value", name);

	
	var banner_id_input = document.getElementById("banner_id_input");
	banner_id_input.setAttribute("value", banner_id);
	
	var desc_input = document.getElementById("desc_input");
	desc_input.appendChild(document.createTextNode(description));
	
    //get the id number of zone
	var id = document.getElementById("id");
	id.setAttribute("value", zone_id);
	
	//show a box 
	var box = document.getElementById("editBox");
	box.style.display = "";
	
}
