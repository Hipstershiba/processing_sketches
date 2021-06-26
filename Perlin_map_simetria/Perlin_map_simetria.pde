Objeto o;
float timer = 0;

void setup() {
  size (900,900);
  //fullScreen();
  o = new Objeto(20,2);
  o.calcOrientation();
}

void draw() {
  bg();
  if(timer >= 60) {
    o.calcOrientation();
    timer = 0;
  }
  timer += 1;
  
  //translate(width/2,-180);
  //rotate(PI/4);
  //translate(0,0);
  o.display();
}

void bg() {
  pushMatrix();
  noStroke();
  fill(0);
  rect(0,0,width, height);
  popMatrix();
}
