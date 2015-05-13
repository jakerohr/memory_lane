$(function(){

  var lst, pre;

  $('.pageSort').sortable({
    start:function(event, ui){
      pre = ui.item.index();
      console.log("this is the current index of the item I'm dragging:", pre)
    },
    stop: function(event,ui){
      lst = $(this).attr('id');
      // console.log("what list is this:", lst)
      post = ui.item.index();
      console.log("this is the new index", post)
      other = (lst == 'list1') ? 'list2' : 'list1';
      // console.log("other list?:", other)

      if (post > pre) {
        $('#'+other+ ' li:eq(' +pre+ ')').insertAfter('#'+other+ ' li:eq(' +post+ ')');
      }else{
        $('#'+other+ ' li:eq(' +pre+ ')').insertBefore('#'+other+ ' li:eq(' +post+ ')');
      }
    },
    update: function(){
      var sorted = $(this).sortable('serialize');
      // console.log(sorted);
      $.ajax({
        url: '/pages/edit',
        method: 'put',
        data: sorted,
        complete: function(data){
          console.log(data);
        }
      });
    }
  });
});

