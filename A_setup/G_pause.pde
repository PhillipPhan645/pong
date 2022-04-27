void pause() {
  background(black);

  
  //boarder
  stroke(blue);
  strokeWeight(10);
  line(0, 0, 0, 800);
  line(0, 0, 900, 0);
  stroke(red);
  line(0, 800, 900, 800);
  line(900, 0, 900, 800);


  //resume button
  stroke(white);
  fill(black);
  strokeWeight(4);
  tactile(350, 436, 200, 125);
  rect(350, 436, 200, 125);
  textSize(70);
  tax(350, 436, 200, 125);
  text("RESUME", 450, 485);

  //Menu button
  stroke(white);
  fill(black);
  strokeWeight(4);
  tactile(350, 600, 200, 125);
  rect(350, 600, 200, 125);
  textSize(70);
  tax(350, 600, 200, 125);
  text("MENU", 450, 650);
  
  //pause text
  fill(white);
  textSize(275);
  text("Paused", width/2, height/5);

}

void pauseClicks() {
  //resume button = game frame
  if (mouseX > 350 && mouseX< 550 && mouseY > 436 & mouseY < 585) {
    mode = GAME;
  } else {
    //MENU button = intro frame
    if (mouseX > 350 && mouseX< 550 && mouseY > 600 & mouseY < 725) {
      mode = INTRO;
    }
    reset();
  }
}
