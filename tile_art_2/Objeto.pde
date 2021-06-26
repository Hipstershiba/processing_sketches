class Objeto {
  
  float x;
  float y;
  float oWidth;
  float oHeight;
  
  Objeto() {
    x = 0;
    y = 0;
    oWidth = width/2;
    oHeight = height/2;
  }
  
  void path(float vel) {
    if (x <= oWidth && y <= 0) {
      x+=vel;
    } else if (x >= oWidth && y < oHeight) {
      y+=vel;
    } else if (x > 0 && y > 0) {
      x-=vel;
    } else if (x < oWidth && y > 0) {
      y-=vel;
    }
  }
  
}
