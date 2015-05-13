$(function(){

  $('.delete-partial-x, .remove-partial-sidebar').on('click', function(){
    var delButton = $(this)
    var partialId = delButton.data('idx');

    if ( delButton.hasClass('delete-partial-x') ) {
      var partial = $(this).parent('div');
      partial.hide(1000).remove()
      partial.parent('li').hide().remove();
      $('#partial_'+partialId).hide(1000).remove();
    } else if ( delButton.hasClass('remove-partial-sidebar') ) {
      var partial = $('#content_partial_'+partialId);
      partial.hide(1000).remove()
      delButton.parent().hide(1000).remove();
    }

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

  $('.add-partial').on('click', function(e){
    e.preventDefault();

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