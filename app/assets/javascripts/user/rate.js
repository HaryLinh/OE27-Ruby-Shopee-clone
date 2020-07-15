$(document).on('turbolinks:load', function() {
  $("#rating").on("click", "label", function(event){
    debugger;
  let star = $(this).prev(":radio").val();
  let product_id = $('#product_id').val();
  let url = $(".data-link").data('url');
  $.ajax({
      method: 'GET',
      dataType: 'json',
      url: url,
      data: {
        star: star,
        product_id: product_id
      }
     });
  });
})
