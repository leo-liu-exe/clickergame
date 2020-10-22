void gameover() {
  theme.pause();
  gameovers.play();
  background(255, 0, 0);
  shadowText("GAMEOVER", 400, 300, 100);
  if(score>highscore){
  highscore=score;}
  shadowText("highscore " +highscore,400,500,80);
}


void gameoverClicks() {
  reset();
  mode = intro;
  theme.rewind();
}
