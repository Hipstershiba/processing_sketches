class Objeto {
  
  float x;
  float y;
  float noiseX;
  float noiseY;
  float oWidth;
  float oHeight;
  float delta_noise;
  
  Objeto() {
    x = 0;
    y = 0;
    noiseX = 0;
    noiseY = 0;
    oWidth = 625;
    oHeight = 625;
    delta_noise = 0;
  }

  void path(float vel) {
    if (x < oWidth && y == 0) {
      x+=vel;
    } else if (x == oWidth && y < oHeight) {
      y+=vel;
    } else if (x > 0 && y > 0) {
      x-=vel;
    } else if (x < oWidth && y > 0) {
      y-=vel;
    }
  }
  
  void path_noise(float t) {
    if (x < oWidth && y == 0) {
      noiseY = map(noise(t), 0, 1, -50, 50);
    } else if (x == oWidth && y < oHeight) {
      noiseX = map(noise(t), 0, 1, -50, 50);
    } else if (x > 0 && y > 0) {
      noiseY = map(noise(t), 0, 1, -50, 50);
    } else if (x < oWidth && y > 0) {
      noiseX = map(noise(t), 0, 1, -50, 50);
    }
  }
  
  void calc_noise() {
    
    delta_noise += 0.01;
  }
  
  void noise_to_center() {
    
  }
  
}
