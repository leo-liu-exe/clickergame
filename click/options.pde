void options() {
  background(255, 255, 0);
  strokeWeight(1);
  //back 
  if (mouseX > 100 && mouseX < 700 && mouseY > 640 && mouseY< 770) {
    fill(100);
    rect(100, 640, 600, 130);
    fill(255);
    text("back", 400, 700);
  } else {
    fill(255);
    rect(100, 640, 600, 130);
    fill(0);
    text("back", 400, 700);
  }

  if (mouseX > 100 && mouseX < 230 && mouseY > 490 && mouseY< 620) {
    strokeWeight(10);
    fill(255);
    rect(100, 490, 130, 130);
    image(face_pepe, 101, 491, 128, 128);
  } else {
    strokeWeight(1);
    fill(255);
    rect(100, 490, 130, 130);
    image(face_pepe, 101, 491, 128, 128);
  }

  if (mouseX > 570 && mouseX < 700 && mouseY > 490 && mouseY< 620) {
    strokeWeight(10);
    fill(255);
    rect(570, 490, 130, 130);
    image(face_oof, 571, 491, 128, 128);
  } else {
    strokeWeight(1);
    fill(255);
    rect(570, 490, 130, 130);
    image(face_oof, 571, 491, 128, 128);
  }

}
void optionsClicks() {
  //back
  if (mouseX > 100 && mouseX < 700 && mouseY > 640 && mouseY< 770) {
    mode = intro;
  }
  // facepepe
  if (mouseX > 100 && mouseX < 230 && mouseY > 490 && mouseY< 620) {
    face_selected= face_pepe;
  }
  // face oof
   if (mouseX > 570 && mouseX < 700 && mouseY > 490 && mouseY< 620) {
    face_selected=face_oof;
  }
}
