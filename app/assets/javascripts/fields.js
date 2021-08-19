$(function(){
  $(document).on('click', '.remove_fields', function (e) {
    console.log("entrou")
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('.fields').hide()
    e.preventDefault()
  });

  $(".add_fields" ).on('click', function (e){
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    e.preventDefault()
  })
})
