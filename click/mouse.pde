void mouseReleased() {
  if (mode==intro) {
    introClicks();
  } else if (mode==game) {
    gameClicks();
  } else if (mode==pause) {
    pauseClicks();
  } else if (mode==gameover) {
    gameoverClicks();
  } else if (mode==options) {
    optionsClicks();
  } else {
    println("error:mode"+ mode);
  }
}
