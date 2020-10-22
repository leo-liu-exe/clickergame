void intro() {

  theme.play();

  background(255);
  fill(255, 255, 0);

  rect(300, 500, 200, 90);
  rect(270, 400, 260, 90);
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("clicker game", 400, 300);
  text("options", 400, 430);
  text("start", 400, 530);


  if (mouseX>270&&mouseX<530&&mouseY>400&&mouseY<490) {
    fill(100);
    rect(270, 400, 260, 90);
    fill(255);
    text("options", 400, 430);
  } else {
    strokeWeight(1);
    fill(255);
    rect(270, 400, 260, 90);
    fill(0);
    text("options", 400, 430);
  }

  if (mouseX>300&&mouseX<500&&mouseY>500&&mouseY<590) {
    fill(100);
    rect(300, 500, 200, 90);
    fill(255);
    text("start", 400, 530);
  } else {
    strokeWeight(1);
    fill(255);
    rect(300, 500, 200, 90);
    fill(0);
    text("start", 400, 530);
  }
}

void introClicks() {
  if (mouseX>270&&mouseX<530&&mouseY>400&&mouseY<490) {
    mode = options;
  }
  if (mouseX>300&&mouseX<500&&mouseY>500&&mouseY<590) {
    mode = game;
    reset();
  }
}
