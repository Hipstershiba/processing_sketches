class Linha {
  
  float ax = 0;
  float ay = 0;
  float bx = 0;
  float by = 0;
  float a = 0;
  float r = 0;

  Linha(float tempA, float tempR) {
    
   a = tempA;
   r = tempR;
   
  }
  
  void drawLine() {
    
    pushMatrix();
    translate(width/2,height/2);
    stroke(255);
    line (ax, ay, bx, by);
    popMatrix();
    
  }
  
  void update() {
    
    ax = map(sin(radians(a*2)),-1,1,-r,r);
    ay = map(cos(radians(a*2)),-1,1,-r,r);
    bx = map(sin(radians(a*2)),-1,1,-r*2,r*2);
    by = map(cos(radians(a*4)),-1,1,-r*2,r*2);
    
  }
  
}
