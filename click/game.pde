void game() {

  //visuals
  background(0, 255, 255);

  //pause
  stroke(0);
  fill(255, 255, 0);
  circle(100, 100, 100);


  //display target
  fill(0);
  textSize(32);
  text("score: " +score, width/2, 50);
  text("lives:"+lives, width/2, 120);
  fill(255);
  stroke(0);
  strokeWeight(5);
  
  
  circle(x, y, d);
  fill(0);
  text("pause",100,100);
  //moving
  x=x+vx;
  y=y+vy;

  if (x < d/2 ||x > width-d/2) {
    vx=vx*-1;
  }
  if (y < d/2 ||y > height-d/2) {
    vy=vy*-1;
  }
  imageMode(CENTER);
  image(face_selected,x,y,d*0.6,d*0.6);
   imageMode(CORNER);
  
}

void gameClicks() {
  
  if (dist(mouseX, mouseY, x, y)<d/2) {
    score=score+1;
    vx=vx * 1.1;
    vy=vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100)<50) {
    mode=pause;
  } else {
    lives=lives-1;
    if (lives==0)mode= gameover;
    bump.rewind();
    bump.play();

    gameovers.rewind();
  }
}
