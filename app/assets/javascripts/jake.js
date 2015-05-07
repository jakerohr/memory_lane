$(function(){
  // set cloud name globally
  cloudinary.setCloudName('memoryln');

  document.getElementById("upload_widget_opener").addEventListener("click", function() {
    cloudinary.openUploadWidget({ cloud_name: 'memoryln', upload_preset: 'phzbi760', folder: 'test_images', tags: ['page1','partial1','current_user']},
    function(error, result) { console.log(error, result) });
  }, false);

  // cloudinary.applyUploadWidget(document.getElementById('opener'),
  //   { upload_preset: 'phzbi760', folder: 'test_images', tags: ['page1','partial1','current_user'] },
  //   function(error, result) {console.log(error, result)});





})
