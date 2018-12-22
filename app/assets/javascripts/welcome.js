$(document).ready(function() {
  eventListeners()
})

function eventListeners() {
  document.getElementById('browse_bar').addEventListener('change', () => browseSorter(), false)
}

function browseSorter() {
  var browseValue = document.getElementById('browse_bar').value;
  let req = $.get(browseValue)
  req.done(function(response){
    $("#display_list").empty().append(response)
  })
}
