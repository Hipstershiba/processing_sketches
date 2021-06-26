
Mover[] mover;

void setup() {
  size(900,900);
  
  for(int i = 0; i < 10; i++) {
    mover = new Mover[i];
  }
  
  for(int i = 0; i < mover.length; i++) {
    mover[i] = new Mover(random(0, width), random(0, height));
  }
  
  background(5, 40, 0);
}

void draw() {
  //background(255);
  bg();
  grid();
  
  for(int i = 0; i < mover.length; i++) {
    mover[i].update();
    //mover[i].checkEdges();
    mover[i].edge3();
    mover[i].display();
  }
  
  
 
}

void grid() {
  push();
   noFill();
  stroke(0, 50, 0);
  for(int w = 0; w < width; w += width/18) {
    line(w, 0, w, height);
    for(int h = 0; h < height; h += height/18) {
      line(0, h, width, h);
    }
  }
  
  noFill();
  stroke(25, 75, 0);
  for(int w = 0; w < width; w += width/6) {
    line(w, 0, w, height);
    for(int h = 0; h < height; h += height/6) {
      line(0, h, width, h);
    }
  }
  
  noFill();
  stroke(50, 125, 25);
  for(int w = 0; w < width; w += width/2) {
    line(w, 0, w, height);
    for(int h = 0; h < height; h += height/2) {
      line(0, h, width, h);
    }
  }
  pop();
}

void bg() {
  push();
  noStroke();
  fill(5, 25, 0, 50);
  rect(0, 0, width, height);
  pop();
}
