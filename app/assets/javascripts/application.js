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
});


function browseSorter() {
  var browseValue = document.getElementById('browseBar').value;
  let req = $.get(browseValue)
  req.done(function(response){
    $("#displayList").empty().append(response)
  })
}

// function countryAZSorter() {
//   let req = $.get('countriesAZ')
//   req.done(function(response){
//     $("#displayList").empty().append(response)
//   })
// }
//
// function countryMostSorter() {
//   let req = $.get('countriesMost')
//   req.done(function(response){
//     $("#displayList").empty().append(response)
//   })
// }
//
// function cityAZSorter() {
//   let req = $.get('cities')
//   req.done(function(response){
//     $("#displayList").empty().append(response)
//   })
// }
//
// function cityMostSorter() {
//   let req = $.get('cities')
//   req.done(function(response){
//     $("#displayList").empty().append(response)
//   })
// }
//
// function cuisineSorter() {
//   let req = $.get('cuisines')
//   req.done(function(response){
//     $("#displayList").empty().append(response)
//   })
// }
//
// function restaurantSorter() {
//   let req = $.get('restaurants')
//   req.done(function(response){
//     $("#displayList").empty().append(response)
//   })
// }
