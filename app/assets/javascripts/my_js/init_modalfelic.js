$(window).on('load',function(){
  $('#myModal').modal('show');
  setTimeout(function() {$('#myModal').modal('hide');}, 7000);
});
