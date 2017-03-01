

function moveProgressBar(percent) {
  var elem = document.getElementById("progress-bar");
  var width = 0;
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= percent) {
      clearInterval(id);
    } else {
      width++;
      elem.style.width = width + '%';
      elem.innerHTML = width * 1  + '%';
    }
  }
}
