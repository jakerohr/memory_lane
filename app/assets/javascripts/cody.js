$(function(){

  $('.delete-partial-x, .remove-partial-sidebar').on('click', function(){
    var delButton = $(this)
    var partialId = delButton.data('idx');



    var data = {partial:{}};
    $.ajax({
      url:'/partials/'+delButton.data('idx'),
      method:'DELETE',
      data:data,
      headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    }).done(function(data) {
      if ( delButton.hasClass('delete-partial-x') ) {
        var partial = delButton.parent('div');
        // partial.hide(1000).remove()
        partial.parent('li').remove();
        $('#partial_'+partialId).remove();
      } else if ( delButton.hasClass('remove-partial-sidebar') ) {
        var partial = $('#content_partial_'+partialId);
        // partial.hide(1000).remove()
        partial.parent('li').remove();
        delButton.parent().remove();
      }
      console.log(data);
    }).error(function(err){
      console.log(err)
    })
  })

  $('.new_partial').on('submit', function(e){
    e.preventDefault();
    var form = $(this)
    var data = {partial:{}};
    $.ajax({
      url:form.attr('action'),
      method:form.attr('method'),
      data:form.serialize(),
      headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    }).done(function(data) {

      // var myLi = $('<li>').html(data);
      // $('#list2').append(myLi);
      // var pid=999
      // $('#list1').append('<li id="partial_'+pid+'" class="pointerSidebar">My new partial</li>')

      // console.log(data);
      $('#newPartialModal').modal('hide');
      // add loading dialog
      window.location.reload(true)
    }).error(function(err){
      console.log(err)
    })
  })

})