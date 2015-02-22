// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require foundation
//= require jquery.countdown
//= require_tree .
$(function() {
	$(document).foundation();
	
	var ready;
	ready = function() {
		equalHeight('.equalHeight');

		showStart = new Date(2015, 2-1, 22, 18, 30)
		$(".countdown").countdown({until: $.countdown.UTCDate(-7, showStart), format: 'HMS'});
	};

	var maxHeight = 0;

  function equalHeight(col) {
	//Get all the element with class = col
	col = $(col);
	
    //Loop all the col
    col.each(function() {        
	
	//Store the highest value
	if($(this).height() > maxHeight) {
            maxHeight = $(this).height();;
        }
    });
	
    //Set the height
    col.height(maxHeight);
	}

	$(document).ready(ready)
	$(document).on('page:load', ready)
});
