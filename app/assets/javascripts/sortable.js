$(function(){

var lst, pre;

$('.pageSort').sortable({
  start:function(event, ui){
    pre = ui.item.index();
    console.log("this is the current index of the item I'm dragging:", pre)
  },
  stop: function(event,ui){
    lst = $(this).attr('id');
    console.log("what list is this:", lst)
    post = ui.item.index();
    console.log("this is the new index", post)
    other = (lst == 'list1') ? 'list2' : 'list1';
    console.log("other list?:", other)

    if (post > pre) {
      $('#'+other+ ' li:eq(' +pre+ ')').insertAfter('#'+other+ ' li:eq(' +post+ ')');
    }else{
      $('#'+other+ ' li:eq(' +pre+ ')').insertBefore('#'+other+ ' li:eq(' +post+ ')');
    }
    }

// ajax call
  // $.ajax({
  //   url: $(this).attr('href'),
  //   method:'PUT',
  //   dataType:'json'
  // }).done(function(data){
  //   console.log(data);
  //   //on success update the DOM
  //   btn.closest('tr').remove();
  // }).error(function(err){
  //   console.log(err);
  //   alert('Unable to delete item.')
  // })
}).disableSelection();

});

