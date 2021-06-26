class Walker {
 
  float walkerX;
  float walkerY;
  int[] choice = new int[9];
  
  Walker() {
    walkerX = width/2;
    walkerY = height/2;
  }
  
  Walker(float tempX, float tempY) {
    walkerX = tempX;
    walkerY = tempY;
    
    }
  
  void display() {
    push();
    fill(0);
    noStroke();
    circle(walkerX, walkerY, 5);
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
    if(walkerX > width) {
      walkerX  = width;
    } else if(walkerX < 0 ) {
      walkerX = 0;
    }
    
    if(walkerY > height) {
      walkerY  = height;
    } else if(walkerX < 0 ) {
      walkerY = 0;
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
    line(walkerX,walkerY,mouseX,mouseY);
    stroke(255,0,0);
    line(walkerX,walkerY,mouseX,walkerY);
    stroke(0,0,255);
    line(mouseX,walkerY,mouseX,mouseY);
    pop();
  }
  
  void mouseChasse() {
    float soX;
    float soY;
    float sX;
    float sY;
    float velX;
    float velY;
    float t;
    
    soX = walkerX;
    soY = walkerY;
    sX = mouseX;
    sY = mouseY;
    
    if(abs(sX-soX) > abs(sY-soY)) {
      t = abs(sX-soX);
    } else {
      t = abs(sY-soY);
    }
    
    if(t == 0) {
      velX = 0;
      velY = 0;
    } else {
      velX = (sX-soX)/t;
      velY = (sY-soY)/t;
    }
    
    walkerX += velX;
    walkerY += velY;
    
    println("walkerX:", walkerX, " //  walkerY", walkerY);
    println("velX:", velX, " //  velY", velY, " //  t:", t);
    
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
