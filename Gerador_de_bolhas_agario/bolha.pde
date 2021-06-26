class Bolha {
  float x;
  float y;
  float size;
  float popSize;
  int R, G, B;
  boolean p;
  
  Bolha(float x0, float tempSize, int tempR, int tempG, int tempB) {
    x = x0;
    y = height/2;
    size = tempSize;
    p = false;
    popSize = tempSize;
    R = tempR;
    G = tempG;
    B = tempB;
  }
  
  void ascend() {
    y += random(-5,5);
    x += random(-5,5);
  }
  
  void overlaps(Bolha other) {
    float d = dist(x,y,other.x,other.y);
    if (d < size/2 + other.size/2) {
      if(size > 0 && other.size > 0){
        size--;
        other.size++;
        println("size:", size, " // other.size:",other.size);
      }
    }
  }
  
  void display() {
    noFill();
    stroke(R,G,B);
    strokeWeight(2);
    circle(x,y,size);
  }
  
  void top() {
    if(y <= size/2) {
      y = size/2;
      if (size != 0) {
        p = true;
      }
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
