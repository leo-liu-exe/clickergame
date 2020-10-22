import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



int mode;
final int intro=0;
final int game=1;
final int pause=2; 
final int gameover=3;
final int options =4;

float x, y, d;
float vx, vy;
int score, lives, highscore;
float sliderY;

PFont comicSans;

Minim minim;
AudioPlayer theme, coin, bump, gameovers;

PImage face_pepe, face_oof, face_selected;


void setup() {
  size(800, 800);
  mode=intro;
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);

  x=width/2;
  y=height/2;
  d=100;
  vx= random(-5, 5);
  vy= random(-5, 5);
  score=0;
  lives=3;

  //comicSans = loadFont("comicsans.ttf");
  face_pepe = loadImage("pepe.jpg");
  face_oof = loadImage("oof.jpg");
  face_selected=face_pepe;

  minim= new Minim(this);
  theme=minim.loadFile("mario bros theme.mp3");
  coin=minim.loadFile("coin.wav");
  bump=minim.loadFile("bump.wav");
  gameovers=minim.loadFile("gameover.wav");
  //textFont(comicSans);
  highscore =0;
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else if (mode==options) {
    options();
  } else {
    println("error:mode"+ mode);
  }
}
