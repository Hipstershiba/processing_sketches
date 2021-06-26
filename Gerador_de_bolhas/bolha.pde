class Bolha {
  float size;
  float x;
  float y;
  float popSize;
  float R, G, B;
  boolean p;
  
  Bolha(float tempSize, float tempR, float tempG, float tempB) {
    size = tempSize;
    x = random(tempSize/2, width - tempSize/2);
    y = height-15;
    popSize = tempSize;
    p = false;
    R = tempR;
    G = tempG;
    B = tempB;
  }
  
  void ascend() {
    y -= random(0,2);
    x += random(-1,1);
  }
  
  boolean overlaps(Bolha other) {
    float d = dist(x,y,other.x,other.y);
    if (d < size/2 + other.size/2) {
      return true;
    } else {
      return false;
    }
  }
  
  void display() {
    noFill();
    stroke(R,G,B);
    strokeWeight(2);
    circle(x,y,size);
  }
  
  void top() {
    if(y < size/2) {
      y = size/2;
    }
  }
  
  void topLoop() {
    if(y < -size/2) {
      y = height + size;
    }
  }
  
  void pop() {
    if(mouseY > y - size/2 && mouseY < y + size/2) {
      if(mouseX > x - size/2 && mouseX < x + size/2) {
        p = true;
      }
    } else {
      p = false;
    }
  }
  
  void popAnimation() {
    if(p == true) {
      size += 5;
      if (size >= popSize + 10) {
        p = false;
        size = 0;
      }
    }
  }
  
}
