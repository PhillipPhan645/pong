void game() {
  background(black);

  //boarder
  stroke(blue);
  strokeWeight(10);
  line(0, 0, 0, 800);
  line(0, 0, 900, 0);
  stroke(red);
  line(0, 800, 900, 800);
  line(900, 0, 900, 800);

  //middle line
  stroke(white);
  strokeWeight(4);
  line(450, 6, 450, 794);

  //pause button
  fill(white);
  Ptactile(20, 18, 70, 68);
  square(20, 18, 50);
  fill(black);
  stroke(black);
  rect(37, 28, 2, 30);
  rect(53, 28, 2, 30);

  //paddles
  stroke(blue);
  fill(white);
  circle(leftx, lefty, leftd);
  stroke(red);
  circle(rightx, righty, rightd);

  //scoreboard
  textSize(80);
  fill(blue);
  text(leftscore, width/4, 80);
  fill(red);
  text(rightscore, 3*width/4, 80);
  fill(white);
  text(timer, 3*width/4, 725);
  timer = timer -1;

  //move paddles
  if (wkey == true) lefty = lefty -12;
  if (skey == true) lefty = lefty +12;
  if (lefty > 700) lefty = 700;
  if (lefty < 100) lefty = 100;


  if (AI == false) {
    if (upkey == true) righty = righty -12;
    if (downkey == true) righty = righty +12;
    if (righty > 700) righty = 700;
    if (righty < 100) righty = 100;
  } else {
    if (ballx > 450) {
      if (bally > righty) righty = righty + 9;
      if (bally < righty) righty = righty - 9;
    }
    if (righty > 700) righty = 700;
    if (righty < 100) righty = 100;
  }


  //ball
  fill(white);
  stroke(purple);
  circle (ballx, bally, balld);

  //ball movement
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //rightscore
  if (ballx<0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    lefty = height/2;
    righty = height/2;
    vx = -5;
    vy = -5;
    timer = 80;
    score.play();
    score.rewind();
  }
  if (rightscore > 2) {
    gameover.play();
    gameover.rewind();
    mode = GAMEOVER;
  }


  //leftscore
  if (ballx>900) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    lefty = height/2;
    righty = height/2;
    vx = 5;
    vy = 5;
    timer = 80;
    score.play();
    score.rewind();
  }

  if (leftscore > 2) {
    gameover.play();
    gameover.rewind();
    mode = GAMEOVER;
  }

  //ball bounce
  if (bally < balld/2 ||bally > height-balld/2) {
    vy  = vy * -1;
  }

  //right paddle bounce
  if (dist(rightx, righty, ballx, bally) < rightd/2 + balld/2) {
    vx = (ballx-rightx)/10;
  }

  //left paddle bounce
  if (dist(leftx, lefty, ballx, bally) < leftd/2 + balld/2) {
    vx = (ballx-leftx)/10;
  }
}



void gameClicks() {
  if (dist(mouseX, mouseY, 20, 18)<100) {
    mode = PAUSE;
  }
}
