float r;
float ang;
float x;
float y;
float t;
float p;

void setup() {
  size(900,900);
  background(0);
  
  r = 200;
  ang = 0;
  x = r * cos(ang);
  y = r * sin(ang);
  t = 0;
  p = 60;
  
}

void draw() {
  bg();
  
  pushMatrix();
  translate(width/2,height/2);
  
  ang = t/p*TWO_PI;
  x = r * cos(ang);
  y = r * sin(ang);
  
  circle(x,y,50);
  popMatrix();
  
  t++;
}

void bg() {
  push();
  noStroke();
  fill(0);
  rect(0,0,width,height);
  pop();
}
