void gameover() {
  background(black);

  //boarder
  stroke(blue);
  strokeWeight(10);
  line(0, 0, 0, 800);
  line(0, 0, 900, 0);
  stroke(red);
  line(0, 800, 900, 800);
  line(900, 0, 900, 800);

  //who won
  textSize(175);
  if (leftscore > rightscore) {
    fill(blue);
    text("Left Wins!!", 450, 150);
  } else {
    fill(red);
    text("Right WINS!!", 450, 150);
  }

  //restart
  stroke(white);
  fill(black);
  strokeWeight(4);
  tactile(350, 436, 200, 125);
  rect(350, 436, 200, 125);
  textSize(65);
  tax(350, 436, 200, 125);
  text("RESTART", 450, 485);
}

void gameoverClicks() {
  //restart button = intro frame
  if (mouseX > 350 && mouseX< 550 && mouseY > 436 & mouseY < 585) {
    mode = INTRO;
  }
  reset();
  theme.rewind();
}
