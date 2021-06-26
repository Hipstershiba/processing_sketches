class Walker {
  float x;
  float y;
  float tX;
  float tY;
  PVector noise;
  boolean sign;
  
  Walker(){
    x = width/2;
    y = height/2;
    tX = 0;
    tY = 0;
    sign = true;
    noise = new PVector(0,0);
  }
  
  Walker(float tempX, float tempY){
    x = tempX;
    y = tempY;
    tX = 0;
    tY = 0;
    sign = true;
  }
  
  void display(float xMod, float yMod) {
    fill(255,255);
    noStroke();
    circle(x+xMod,y+yMod,2);
  }
  
  void walk() {
    float noiseX;
    float noiseY;
    noiseX = noise(tX);
    noiseY = noise(tY);
    noiseX = map(noiseX,0,1,-5,5);
    noiseY = map(noiseY,0,1,-5,5);
    x += noiseX;
    y += noiseY;
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);

  }
  
  void time(float tValue){
      tX += tValue;
      tY += tValue+0.005;
  }
  
}
