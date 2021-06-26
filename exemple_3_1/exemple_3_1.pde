Objeto o;
float ang;

void setup() {
  size(900,900);
  background(50);
  
  o = new Objeto();
  ang = 0;
}

void draw() {
  //background(0);
  push();
  noStroke();
  fill(0,255);
  rect(0,0,width,height);
  pop();
  o.display();
  o.update();
}
