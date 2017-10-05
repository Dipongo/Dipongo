$(document).ready(function(){
  $('#solution_photo').on('click', function(){
    $('#solution-preview').append($('.attachinary_container'))
    $('#solution-modal').modal('show');
  });
});
