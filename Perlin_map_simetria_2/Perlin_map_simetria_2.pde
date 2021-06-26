Objeto o;
float timer = 0;
int ta;

void setup() {
  size (900,900);
  //fullScreen();
  ta = 0;
  o = new Objeto(ta,2);
  o.calcxy();
}

void draw() {
  bg();
  if(timer >= 60) {
    //ta = int(random(3,5));
    ta = 4;
    o = new Objeto(ta,2);
    o.calcOrientation();
    o.calcxy();
    timer = 0;
  }
  timer += 1;
  
  //translate(0,0);
  translate(width/2,height/2);
  rotate(PI/4);
  o.display();
}

void bg() {
  pushMatrix();
  noStroke();
  fill(0);
  rect(0,0,width, height);
  popMatrix();
}
