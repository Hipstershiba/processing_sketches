class Walker {
  float walkerX;
  float walkerY;
  float prevWalkerX;
  float prevWalkerY;
  float tx;
  float ty;
  
  Walker(){
    walkerX = width/2;
    walkerY = height/2;
    tx = 0;
    ty = 10000;
  }
  
  Walker(float tempX, float tempY){
    walkerX = tempX;
    walkerY = tempY;
    tx = 0;
    ty = 10000;
  }
  
  void display(float tempSize) {
    fill(0,255);
    noStroke();
    circle(walkerX,walkerY,tempSize);
  }
  
  void displayln(float tempSize) {
    stroke(0);
    strokeWeight(tempSize);
    line(prevWalkerX,prevWalkerY,walkerX,walkerY);
  }
  
  void walk(float tempStepSize) {
    //float stepSize = random(tempStepSize);
    //float stepX = random(-stepSize,stepSize);
    //float stepY = random(-stepSize,stepSize);
    float stepX = map(noise(tx),0,1,-1,1);
    float stepY = map(noise(ty),0,1,-1,1);
    prevWalkerX = walkerX;
    prevWalkerY = walkerY;
    walkerX += stepX;
    walkerY += stepY;
    tx += 0.01;
    ty += 0.01;
    
  }
  
  void edge() {
    if(walkerX < 0) {
      walkerX = width;
    } else if (walkerX > width) {
      walkerX = 0;
    }
    
    if(walkerY < 0) {
      walkerY = height;
    } else if (walkerY > height) {
      walkerY = 0;
    }
  }
  
  void edgeConstrain() {
    if(walkerX < 0) {
      walkerX = width;
      prevWalkerX = width;
    } else if (walkerX > width) {
      walkerX = 0;
      prevWalkerX = 0;
    }
    
    if(walkerY < 0) {
      walkerY = height;
      prevWalkerY = height;
    } else if (walkerY > height) {
      walkerY = 0;
      prevWalkerY = 0;
    }
  }
  
}
