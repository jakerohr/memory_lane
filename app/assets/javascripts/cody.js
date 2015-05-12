$(function(){

  $('.delete-partial-x').on('click', function(){
    var delButton = $(this)
    var partial = $(this).parent('div')
    partial.hide(1000)
    var data = {partial:{}};
    $.ajax({
      url:'/partials/'+delButton.data('idx'),
      method:'DELETE',
      data:data,
      headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    }).done(function(data) {
      partial.remove()
      console.log(data);
    }).error(function(err){
      console.log(err)
    })
  })

})