$(document).on('turbolinks:load', function() {
  $(document).ready(function(){
    $(document).on('input', '#form-search', function(e) {
      $("#say_hi").submit();
    });
  });
})
