void intro() {
  
  theme.play();
  
  //background
  background(black);

  //title
  fill(white);
  textFont(magic);
  textSize(150);
  text("Pong  Game", 450, 100);
  image(neon, 100, 30, 700, 200);

  //play button
  stroke(white);
  fill(black);
  strokeWeight(4);
  tactile(350, 436, 200, 125);
  rect(350, 436, 200, 125);
  textSize(100);
  tax(350, 436, 200, 125);
  text("PLAY", 450, 485);

  //options button
  stroke(white);
  fill(black);
  strokeWeight(4);
  tactile(350, 600, 200, 125);
  rect(350, 600, 200, 125);
  textSize(70);
  tax(350, 600, 200, 125);
  text("OPTIONS", 450, 650);

  //boarder
  stroke(blue);
  strokeWeight(10);
  line(0, 0, 0, 800);
  line(0, 0, 900, 0);
  stroke(red);
  line(0, 800, 900, 800);
  line(900, 0, 900, 800);

  //net lines
  strokeWeight(8);
  stroke(blue);
  fill(white);
  circle(0, 400, 300);

  stroke(red);
  circle(900, 400, 300);

  strokeWeight(4);
  stroke(white);
  line(450, 6, 450, 435);
  line(450, 561, 450, 600);
  line(450, 725, 450, 794);
}

void introClicks() {
  //play button = game frame
  if (mouseX > 350 && mouseX< 550 && mouseY > 436 & mouseY < 585) {
    mode = GAME;
  }

  //options button = options frame
  if (mouseX > 350 && mouseX< 550 && mouseY > 600 & mouseY < 725) {
    mode = OPTIONS;
  }
}
