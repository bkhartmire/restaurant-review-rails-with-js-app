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
  alert("Hi, I'm working.");
});


function browseSorter() {
  alert("HIHIHI")
  var browseValue = document.getElementById('browseBar').value;
  if (browseValue === 'countryAZ') {
    countrySorter()
  } else if (browseValue === 'cityAZ') {
    citySorter()
  } else if (browseValue === 'cuisineAZ') {
    cuisineSorter()
  } else if (browseValue === 'allAZ') {
    restaurantSorter()
  }
}

function countrySorter() {
  let req = $.get('countries')
  req.done(function(response){
    $("#displayList").empty().append(response)
  })
}

function citySorter() {
  let req = $.get('cities')
  req.done(function(response){
    $("#displayList").empty().append(response)
  })
}

function cuisineSorter() {
  let req = $.get('cuisines')
  req.done(function(response){
    $("#displayList").empty().append(response)
  })
}

function restaurantSorter() {
  let req = $.get('restaurants')
  req.done(function(response){
    $("displayList").empty().append(response)
  })
}
