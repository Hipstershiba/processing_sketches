float xMod;
float yMod;
float a;

void setup() {
  //size (900,900);
  frameRate(120);
  fullScreen();
  xMod = -width/2;
  a = 0;
}

void draw() {
  bg();
  translate(width/2,height/2);
  
  //stroke(0,255);
  //circles(0,0);
  
  stroke(255,255);
  circles(xMod,yMod);
  stroke(50,70,140,255);
  circles(-yMod,-xMod);
  
  stroke(220,120,10,75);
  circles(-xMod,-yMod);
  stroke(0,255,120,25);
  circles(yMod,xMod);
  
  //stroke(255,15);
  //circles(0,xMod);
  //stroke(255,15);
  //circles(xMod,0);
  
  xMod = sin(a/100)*(width);
  yMod = cos(a/100)*(height);
  a+=0.5;
  
}

void bg() {
  push();
  noStroke();
  fill(0,175);
  rect(0,0,width,height);
  pop();
}

void circles(float Xoff, float Yoff) {
  strokeWeight(150);
  //stroke(0,200);
  noFill();
  for(int i = 0; i < 25; i++) {
    circle(Xoff,Yoff, 10+(i*500));
  }
}
  
void ellipses(float Xoff, float Yoff) {
  strokeWeight(5);
  stroke(255,200);
  noFill();
  for(int i = 0; i < 200; i++) {
    ellipse(width/2+Xoff,height/2+Yoff, 10+(i*20),5+(i*20));
  }
}
