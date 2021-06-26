class Walker {
 
  float walkerX;
  float walkerY;
  float r;
  float g;
  float b;
  float alpha;
  boolean sign;
  
  Walker() {
    walkerX = width/2;
    walkerY = height/2;
    r = 0;
    g = 0;
    b = 0;
    alpha = 255;
    sign = true;
  }
  
  Walker(float tempX, float tempY) {
    walkerX = tempX;
    walkerY = tempY;
    r = 0;
    g = 0;
    b = 0;
    alpha = 255;
  }
  
  void display(float tempR, float tempG, float tempB, float tempAlpha) {
    r = tempR;
    g = tempG;
    b = tempB;
    alpha = tempAlpha;
    noStroke();
    fill(r,g,b,alpha);
    ellipse(walkerX,walkerY,10,10);
  }
  
  void display() {
    noStroke();
    fill(r,g,b,alpha);
    ellipse(walkerX,walkerY,10,10);
  }
  
  void step() {
    float r = int(random(9));
    float s = random(1);
    
    if(r < 1) {
      walkerX += -s;
      walkerY += s;
    } else if(r < 2){
      walkerX += 0;
      walkerY += s;
    } else if(r < 3){
      walkerX += s;
      walkerY += s;
    } else if(r < 4){
      walkerX += -s;
      walkerY += 0;
    } else if(r < 5){
      walkerX += 0;
      walkerY += 0;
    } else if(r < 6){
      walkerX += s;
      walkerY += 0;
    } else if(r < 7){
      walkerX += -s;
      walkerY += -s;
    }  else if(r < 8){
      walkerX += 0;
      walkerY += -s;
    } else if(r < 9){
      walkerX += s;
      walkerY += -s;
    }
    
  }
  
  void step2() {
    walkerX = 50 * randomGaussian() + width/2;
    walkerY = 50 * randomGaussian() + height/2;
  }
  
  void totalR() {
   walkerX = 25 * randomGaussian() + mouseX; 
   walkerY = 25 * randomGaussian() + mouseY; 
  }
  
  
  void edge() {
    walkerX = constrain(walkerX,0,width);
    walkerY = constrain(walkerY,0,height);
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
  
  void rChasser() {
    if(mousePressed) {
      mouseChasse();
    } else {
      step2();
    }
  }
  
}
