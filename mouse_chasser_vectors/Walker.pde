class Walker {
  
  PVector walker;
  float walkerX;
  float walkerY;
  int[] choice = new int[9];
  
  Walker() {
    walkerX = width/2;
    walkerY = height/2;
    walker = new PVector(width/2,height/2);
  }
  
  Walker(float tempX, float tempY) {
    walkerX = tempX;
    walkerY = tempY;
    walker = new PVector(tempX,tempY);
    
    }
  
  void display() {
    push();
    fill(0);
    noStroke();
    circle(walker.x, walker.y, 5);
    pop();
  }
  
  void randomStep() {
    int r = int(random(9));
    
    if(r < 1) {
      walkerX++;
      walkerY--;
    } else if(r < 2) {
      walkerY--;
    } else if(r < 3) {
      walkerX--;
      walkerY--;
    } else if(r < 4) {
      walkerX++;
    } else if(r < 5) {

    } else if(r < 6) {
      walkerX--;
    } else if(r < 7) {
      walkerX++;
      walkerY++;
    } else if(r < 8) {
      walkerY++;
    } else if(r < 9) {
      walkerX--;
      walkerY++;
    }
    
  }
  
  void noiseStep() {
    int r = int(random(9));
    
    if(r < 1) {
      walkerX++;
      walkerY--;
    } else if(r < 2) {
      walkerY--;
    } else if(r < 3) {
      walkerX--;
      walkerY--;
    } else if(r < 4) {
      walkerX++;
    } else if(r < 5) {

    } else if(r < 6) {
      walkerX--;
    } else if(r < 7) {
      walkerX++;
      walkerY++;
    } else if(r < 8) {
      walkerY++;
    } else if(r < 9) {
      walkerX--;
      walkerY++;
    }
    
  }
  
  void edge() {
    if(walker.x > width) {
      walker.x  = width;
    } else if(walkerX < 0 ) {
      walker.x = 0;
    }
    
    if(walker.y > height) {
      walker.y  = height;
    } else if(walkerX < 0 ) {
      walker.y = 0;
    }
  }
  
  void mouseDetection() {
    if(mouseX - walkerX > 0) {
      walkerX++;
    } else if(mouseX - walkerX < 0) {
      walkerX--;
    }
    
    if(mouseY - walkerY > 0) {
      walkerY++;
    } else if(mouseY - walkerY < 0) {
      walkerY--;
    }  
  }
  
  void graphs() {
    push();
    stroke(0,255,0);
    line(walker.x,walker.y,mouseX,mouseY);
    stroke(255,0,0);
    line(walker.x,walker.y,mouseX,walker.y);
    stroke(0,0,255);
    line(mouseX,walker.y,mouseX,mouseY);
    pop();
  }
  
  void mouseChasse() {
    float sLength;
    PVector so = new PVector();
    PVector s = new PVector();
    PVector vel = new PVector();
    PVector sMag = new PVector();
    float t;
    
    so = so.set(walker);
    s = s.set(mouseX,mouseY);
    
    if(abs(s.x-so.x) > abs(s.y-so.y)) {
      t = abs(s.x-so.x);
    } else {
      t = abs(s.y-so.y);
    }
    
    if(t == 0) {
      vel = vel.set(0.0,0.0);
      sMag = PVector.sub(s,so);
      sLength = sMag.mag();
    } else {
      sMag = PVector.sub(s,so);
      sLength = sMag.mag();
      vel = PVector.div(PVector.sub(s,so),t);
    }
    
    walker = walker.add(vel);
    
    println("walkerX:", walker.x, " //  walkerY", walker.y);
    println("velX:", vel.x, " //  velY", vel.y, " //  t:", t);
    
    push();
    fill(0);
    rect(0,0,sLength,10);
    pop();
    
  }
  
  void randomChasse() {
    float r = 0.8;
    if(r > random(1)) {
      noiseStep();
    } else {
      mouseChasse();
    }
  }
  
}
