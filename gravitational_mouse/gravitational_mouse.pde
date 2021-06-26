Planet[] earth = new Planet[100];

void setup() {
  //size(640,640);
  fullScreen();
  background(50);
  for(int i = 0; i < earth.length; i++) {
    earth[i] = new Planet();
  }
}

void draw() {
  //background(0,25);
  
  push();
  fill(0,15);
  noStroke();
  rect(0,0,width,height);
  pop();
  
  for(int i = 0; i < 100; i++) {
    earth[i].update(2); 
    earth[i].edges();
    earth[i].display();
  }
  
}
