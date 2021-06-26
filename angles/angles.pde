Objeto o;
float time;

void setup() {
  //size(900,900);
  fullScreen();
  background(0);
  frameRate(1);
  
  o = new Objeto();
  time = 0;
}

void draw() {
  //background(0);
  bg();
  for(int i = 0; i < 50000; i++) {
    o.applyForce(o.accNoise(time));
    o.update();
    o.edgeC();
    o.display();
    
    time += 0.005;
  }
}

void bg() {
  push();
  noStroke();
  fill(0,255);
  rect(0,0,width,height);
  pop();
}
