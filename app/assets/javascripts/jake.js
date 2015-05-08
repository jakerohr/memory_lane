$(function(){
  // set cloud name globally
  cloudinary.setCloudName('memoryln');

  // pass in user_id
  // gon gem
  // gon.user_id (on controller)

  document.getElementById("upload_widget_opener").addEventListener("click", function() {
    cloudinary.openUploadWidget({ cloud_name: 'memoryln', upload_preset: 'phzbi760', folder: gon.current_user.id, tags: ['page1','partial1','current_user']},
    function(error, result) { $("#upload_widget_opener").children('img').attr('src', 'http://res.cloudinary.com/memoryln/image/upload/v1431043494/1/zzlbamqfeeqklqcokfe0.jpg');
    });
  }, false);
  // ajax post to the database
  // this.scr = new result

//$('#picture').attr('src', 'images/short.png'); $(this).children("img")


  // cloudinary.applyUploadWidget(document.getElementById('opener'),
  //   { upload_preset: 'phzbi760', folder: 'test_images', tags: ['page1','partial1','current_user'] },
  //   function(error, result) {console.log(error, result)});





})
