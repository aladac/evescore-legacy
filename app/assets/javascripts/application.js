// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
	$('.ttp').tooltip({ placement: 'top', html: true});
	$('.typeahead').typeahead();
// $('#search').typeahead({                              
//   name: 'character-search',                                                        
//   prefetch: '/character/all.json',
// 	valueKey: 'char_id',
//   template: [
// 		'<p><img src="http://image.eveonline.com/Character/{{id}}_64.jpg" style="margin-right: 20px" class="img-rounded">',
// 		'{{name}}'
//     // '<p class="character-name">{{name}}</p>',                              
//     // '<p class="character-id">{{id}}</p>',                                      
//   ].join(''),                                                                 
//   engine: Hogan                                                               
// });

});

