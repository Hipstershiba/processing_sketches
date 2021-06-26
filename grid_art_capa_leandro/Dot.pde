class Dot {
  float x;
  float y;
  float r;
  float orbitSpacing;
  float ang;
  float velocity;
  float xOffset;
  float yOffset;
  float velOffset;

  Dot(float xOffsetTrans, float yOffsetTrans, float velOffsetTrans) {
    xOffset = xOffsetTrans;
    yOffset = yOffsetTrans;
    velOffset = velOffsetTrans;
    x = 0 + xOffset;
    y = 0 + yOffset;
    r = 25;
    orbitSpacing = r + (r/2);
    ang = 0;
    velocity = 2 + velOffset;
    
  }

  void center() {
    push();
    noStroke();
    fill(0,255);
    circle(x, y, r);
    pop();
  }
  
  void orbit(float alpha, float offang) {
    push();
    noStroke();
    fill(0,alpha);
    rotate(radians(ang - offang));
    circle(orbitSpacing, 0, r);
    pop();
  }
  
  void rotation() {
    ang += velocity;
  }
  
  void acceleration() {
    
  }
  
}
