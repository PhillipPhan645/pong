void options() {
  background(black);

  //boarder
  stroke(blue);
  strokeWeight(10);
  line(0, 0, 0, 800);
  line(0, 0, 900, 0);
  stroke(red);
  line(0, 800, 900, 800);
  line(900, 0, 900, 800);

  //title
  fill(white);
  textFont(magic);
  textSize(150);
  text("[OPTIONS]", 450, 100);

  //return button
  stroke(white);
  fill(black);
  strokeWeight(4);
  tactile(350, 600, 200, 125);
  rect(350, 600, 200, 125);
  textSize(70);
  tax(350, 600, 200, 125);
  text("RETURN", 450, 650);

  //single player button
  stroke(white);
  fill(black);
  strokeWeight(4);
  tactile(50, 425, 200, 125);
  rect(50, 425, 200, 125);
  textSize(80);
  tax(50, 425, 200, 125);
  text("Single", 150, 475);

  //double player buttons
  stroke(white);
  fill(black);
  strokeWeight(4);
  tactile(650, 425, 200, 125);
  rect(650, 425, 200, 125);
  textSize(75);
  tax(650, 425, 200, 125);
  text("Doubles", 755, 475);
}

void optionClicks() {
  //return button = intro
  if (mouseX > 350 && mouseX< 550 && mouseY > 600 & mouseY < 725) {
    mode = INTRO;
  }

  //single button
  if (mouseX > 50 && mouseX< 250 && mouseY > 425 & mouseY < 550) {
    AI = true;
    mode = INTRO;
  }

  //doubles button
  if (mouseX > 650 && mouseX< 850 && mouseY > 425 & mouseY < 550) {
    AI = false;
    mode = INTRO;
  }
}
