class Fluid {
  
  float x,y,w,h;
  float c;
  
  Fluid(float x_, float y_, float w_, float h_, float c_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    c = c_;
  }
  
  void display() {
    push();
    colorMode(RGB);
    noStroke();
    fill(0,127,255,50);
    rect(x,y,w,h);
    pop();
  }
  
}
