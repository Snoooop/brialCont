class bat {
  int w, h, x, y, dx;
  bat () {
    w=width*1/6;
    h=height/36;
    x=width*5/12;
    y=height*7/8;
    dx=0;
  }
  void show () {
    strokeWeight(3);
    stroke(133, 216, 246);
    fill(210, 169, 255);
    rect(x, y, w, h);
  }
  void move () {
    x=x+dx;
    if (x<=0) x=0;
    if (x>=width-w) x=width-w;
    //  if (bat.x<-10 || bat.x>width-w+10) bat.x=bat.x+bat.dx; 
    // if (bat.x==0 || bat.x==-10 || bat.x==width-w || bat.x==width-w+10);
  }
}

bat bat;


void setup() {
  fullScreen();
  bat = new bat();
}

void draw() {
  background(255);
  bat.show();
  bat.move();
}

void keyPressed() {
  if (key == 'd' || key == 'D') {
    bat.dx = 10;
  }
  if (key == 'a' || key == 'A') {
    bat.dx = -10;
  }
}

void keyReleased() {
  if (key == 'd' || key == 'D') {
    bat.dx = 0;
  }
  if (key == 'a' || key == 'A') {
    bat.dx = 0;
  }
}
