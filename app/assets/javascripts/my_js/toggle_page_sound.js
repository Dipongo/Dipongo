// <div class="page-sound">
//   <a class="page-sound-play" href="#">play/pause</a>
//   <audio>
//     <source src="sound.m4a" type="audio/mp3">
//   </audio>
// </div>

$('.page-sound-play').on('click', function(e) {
  e.preventDefault();
  var audio = $(this).parent().find('audio')[0];
  if (audio.paused) {
    audio.play();
  } else {
    audio.pause();
    audio.currentTime = 0;
  }
});
