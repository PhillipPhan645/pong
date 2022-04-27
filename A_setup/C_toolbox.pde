//tactile function (squares/rectangles)
void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(Bred);
  } else {
    stroke(white);
  }
}

//tactile function (circles)
void tact (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(Bred);
  } else {
    stroke(white);
  }
}

//tactile (words)
void tax(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(Bred);
  } else {
    fill(white);
  }
}

//tactile pause function
void Ptactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(Bred);
  } else {
    stroke(purple);
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;

  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;

  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
}

void reset() {
  leftscore = 0;
  rightscore = 0;
  timer = 80;
  lefty = height/2;
  righty = height/2;
  ballx = width/2;
  bally = height/2;
  vx = 5;
  vy = 5;
}
