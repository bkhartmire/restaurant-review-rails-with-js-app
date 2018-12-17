// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require welcome

$(document).ready(function() {
  var link = document.getElementById('reviews_button')
  link.addEventListener('click', function(e) {
    listReviews(e)
  })
})

function browseSorter() {
  var browseValue = document.getElementById('browse_bar').value;
  let req = $.get(browseValue)
  req.done(function(response){
    $("#display_list").empty().append(response)
  })
}

function listReviews(e) {
  e.preventDefault()
  debugger
  //why does this = the window and not the a#reviews_button element???
  let req = $.get(document.getElementById('reviews_button').href)
  req.done(function(response){
    $("#reviews").empty().append(response)
  })
}
