float a = 0;
float b = 0;
void setup(){
  //size(900,900);
  fullScreen();
}

void draw(){
  background(25,25,50);
  translate(width/2,height/2);
  rotate(a);
  bwCircle(0,0,height,height);
  pushMatrix();
  translate(height/4,0);
  rotate(b);
  bwCircle2(0,0,height/2,height/2);
  popMatrix();
  pushMatrix();
  translate(-height/4,0);
  rotate(b);
  bwCircle2(0,0,height/2,height/2);
  popMatrix();
  a -= 0.01;
  b += 0.02;
}

void bwCircle(float x, float y, float w, float h){
  noStroke();
  pushMatrix();
  fill(255);
  rotate(radians(180));
  arc (x,y,w,h,0,PI);
  popMatrix();
  fill(0);
  arc (x,y,w,h,0,PI);
}

void bwCircle2(float x, float y, float w, float h){
  noStroke();
  pushMatrix();
  fill(255);
  rotate(radians(180));
  arc (x,y,w,h,0,PI);
  popMatrix();
  fill(0);
  arc (x,y,w,h,0,PI);
  fill(255);
  circle(h/4,0,h/2);
  fill(0);
  circle(-h/4,0,h/2);
  fill(0);
  circle(h/4,0,h/6);
  fill(255);
  circle(-h/4,0,h/6);
}
