
Mover[] mover;

void setup() {
  size(900,900);
  
  for(int i = 0; i < 10; i++) {
    mover = new Mover[i];
  }
  
  for(int i = 0; i < mover.length; i++) {
    mover[i] = new Mover(random(-width/2, width/2), random(-height/2, height/2));
  }
  
  background(5, 40, 0);
}

void draw() {
  //background(255);
  bg();
  grid();
  
  translate(width/2, height/2);
  
  for(int i = 0; i < mover.length; i++) {
    mover[i].update();
    mover[i].checkEdges();
    //mover[i].edge3();
    mover[i].display();
  }
  
  
 
}

void grid() {
  push();
  translate(0,0);
  noFill();  
  stroke(0, 35, 0);
  for(int w = 0; w < width; w += width/36) {
    line(w, 0, w, height);
    for(int h = 0; h < height; h += height/36) {
      line(0, h, width, h);
    }
  }
  
  stroke(0, 50, 0);
  for(int w = 0; w < width; w += width/18) {
    line(w, 0, w, height);
    for(int h = 0; h < height; h += height/18) {
      line(0, h, width, h);
    }
  }
  
  stroke(25, 75, 0);
  for(int w = 0; w < width; w += width/6) {
    line(w, 0, w, height);
    for(int h = 0; h < height; h += height/6) {
      line(0, h, width, h);
    }
  }
  
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
  translate(0,0);
  noStroke();
  fill(5, 25, 0, 255);
  rect(0, 0, width, height);
  pop();
}
