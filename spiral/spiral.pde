float r;
float ang;
float x;
float y;
float t;

void setup() {
  size(900,900);
  background(0);
  smooth(3);
  
  r = 0;
  ang = 0;
  x = r * cos(ang);
  y = r * sin(ang);
  
}

void draw() {
  bg();
  translate(width/2, height/2);
  rotate(radians(t));
  for(int i = 0; i < 10000; i++) {
  x = r * cos(ang);
  y = r * sin(ang);

  noStroke();
  fill(0);
  circle(x,y,20);
  r += 0.08;
  ang += 0.01;
  }
  r = 0;
  ang = 0;
  t+=10;
}

void bg() {
  push();
  noStroke();
  fill(255);
  rect(0,0,width,height);
  pop();
}
