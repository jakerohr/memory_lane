$(function(){
  // set cloud name globally
  cloudinary.setCloudName('memoryln');

  // pass in user_id
  // gon gem
  // gon.user_id (on controller)

/*
$('meta[name="csrf-token"]').attr('content')

headers: {
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
  },
data:{
  partial:{
    item1:"http://..."
  }
}
// <input name="partial[item1]">
// params[:partia][:item1]
// params.require(:partial).

*/

  $('#editItemTextModal').on('hidden.bs.modal', function() {
      $(this).removeData('bs.modal');
  });

  $('#editItemTextModal').on('submit','form',function(e){
    e.preventDefault();
    var form = $(this);
    $.ajax({
      url:form.attr('action'),
      method:form.attr('method'),
      data:form.serialize()
    }).done(function(data){
      // console.log(data);
      $('#text-partial'+data.partial.id+'-item'+data.item).text(data.partial['item'+data.item]);
      $('#editItemTextModal').modal('hide');
    })
  });

  $(".upload_widget_opener").on("click", function(e) {
    e.preventDefault();
    var thisWidget = $(this);
    console.log('which picture',$(this).data('idx'));
    cloudinary.openUploadWidget({ cloud_name: 'memoryln', upload_preset: 'phzbi760', folder: gon.current_user.id, tags: ['page1','partial1','current_user']},
    function(error, result) {
      thisWidget.children('img').attr('src', result[0].secure_url);
      var url = result[0].secure_url
      var form = thisWidget.closest("form")
      //find and set hidden field
    var data = {partial:{}};
    data.partial['item'+thisWidget.data('item')]=result[0].secure_url;
    $.ajax({
      url:'/partials/'+thisWidget.data('idx'),
      method:'PATCH',
      data:data,
      headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    }).done(function(data) {

      console.log(data);
    }).error(function(err){
      console.log(err)
    })

    });
  });

// call back to add hard coded photo to spot
  //$("#upload_widget_opener").children('img').attr('src', 'http://res.cloudinary.com/memoryln/image/upload/v1431043494/1/zzlbamqfeeqklqcokfe0.jpg');

// call back for secure url path
  // $("#upload_widget_opener").children('img').attr('src', result[0].secure_url);

// Result Object structure
  // 0: Object
  // bytes: 524613
  // created_at: "2015-05-08T17:29:45Z"
  // etag: "b524eee51c2b3887743f1c987d9a1ba1"
  // format: "jpg"
  // height: 567
  // path: "v1431106185/1/msopxnvg40mg6alhyxhj.jpg"
  // public_id: "1/msopxnvg40mg6alhyxhj"
  // resource_type: "image"
  // secure_url: "https://res.cloudinary.com/memoryln/image/upload/v1431106185/1/msopxnvg40mg6alhyxhj.jpg"
  // signature: "9ffcb1a786fef6a6fc86b1c74b464c5a473f13a9"
  // tags: Array[3]
  // thumbnail_url: "http://res.cloudinary.com/memoryln/image/upload/c_limit,h_60,w_90/v1431106185/1/msopxnvg40mg6alhyxhj.jpg"
  // type: "upload"
  // url: "http://res.cloudinary.com/memoryln/image/upload/v1431106185/1/msopxnvg40mg6alhyxhj.jpg"
  // version: 1431106185
  // width: 850





})
