PVector origin;
PVector bob;
float len;

float angle = PI/4;
float aVel = 0;
float aAcc = 0;

float g = -0.01;

void setup() {
  size(900,900);
  
  len = 420;
  origin = new PVector(width/2,0);
  bob = new PVector(width/2,len);
}

void draw() {
  bg();
  
  bob.x = origin.x + len * sin(angle);
  bob.y = origin.y + len * cos(angle);
  
  stroke(70,200,25);
  fill(70,200,25);
  line(origin.x,origin.y,bob.x,bob.y);
  ellipse(bob.x,bob.y,32,32);
  
  aAcc = g * sin(angle);
  aVel += aAcc;
  angle += aVel;
  aVel *= 0.99;
}

void bg() {
  pushMatrix();
  noStroke();
  fill(0,25);
  rect(0,0,width,height);
  popMatrix();
}
