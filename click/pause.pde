void pause() {
  theme.pause();
  background(255);

  textSize(72);
  text("paused", 400, 400);
  fill(255, 0, 255);
  rect(220, 500, 360, 90);
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("continue?", 400, 530);
}
void pauseClicks() {
  if (mouseX>220&&mouseX<580&&mouseY>500&&mouseY<590) mode = game;
}
