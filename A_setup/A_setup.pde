import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound varibles
Minim minim;
AudioPlayer score, bump, theme, gameover;




//color palette
color red = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green = #CAFFBF;
color blue = #A0C4FF;
color purple = #BDB2FF;
color white = #FFFFFC;
color black = #000000;
color pink = #FFC6FF;
color brown = #cb997e;
color grey = #5e6472;
color Bred = #EE4B2B;



//font
PFont magic;

//images
PImage neon;

//framwork
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int OPTIONS = 5;

//paddle variables
float leftx, lefty, leftd, rightx, righty, rightd; 

//ball varibles
float ballx, bally, balld;
float vx, vy;

//keyboard variables 
boolean wkey, skey, upkey, downkey;

//target variables
int leftscore, rightscore, timer;

//single plater
boolean AI;

void setup() {
  size(900, 800);
  mode = INTRO;
  AI = false;
  textAlign(CENTER, CENTER);

  //font
  magic = createFont("magic.otf", 200);
  
  //images
  neon = loadImage("neon.png");
  
  //paddle setup
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //ball setup
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = 5;//random (-5,5);
  vy = 5;//random (-5,5);
  
 //keyboard setup
  wkey = skey = upkey = downkey = false;
  
  //score
  rightscore = leftscore = 0;
  timer = 80;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  bump = minim.loadFile("bump.mp3");
  score = minim.loadFile("score.wav");
  gameover = minim.loadFile("winner.wav");
  
 
}

void draw () {
  //coordinates
  println(mouseX + "," + mouseY);

  //frame work
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Mode error;" + mode);
  }
}
