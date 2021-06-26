class Dot {
  float x;
  float y;
  float r;

  Dot() {
    x = 0;
    y = 0;
    r = 50;
  }

  void display() {
    push();
    noStroke();
    fill(0);
    circle(x, y, r);
    pop();
  }
  
}
