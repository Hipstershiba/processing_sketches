Flock flock;
boolean play;
void setup() {
  //size(960, 720);
  fullScreen();
  surface.setResizable(true);
  flock = new Flock();
  for (int i = 0; i < 0; i++) {
    flock.addBoid(new Boid(width/2,height/2));
    //flock.addBoid(new Boid(0,0));
  }
  background(25);
}

void draw() {
  noStroke();
  fill(0,5);
  rect(0,0,width,height);
  if (play) {
  flock.run();
  }
}

void mousePressed() {
  for(int i = 0; i < 10; i++) {
    flock.addBoid(new Boid(mouseX, mouseY));
  }
}

void keyPressed() {
  if (play){
    play = false;
  } else {
    play = true;
  }
}
