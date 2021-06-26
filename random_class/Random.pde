class Random {
  
  Random() {
    
  }
  
  float montecarlo() {
    while(true) {
      float r1 = random(1);
      float probability = r1;
      float r2 = random(1);
      if(r2 < probability) {
        return r1;
      }
    }
  }
  
  float levyFlight(float prob) {
    float r = random(1);
    float value;
    
    if(r < prob) {
      value = random(-100,100);
    } else {
      value = random(-1,1);
    }
    return value;
  }
  
}
