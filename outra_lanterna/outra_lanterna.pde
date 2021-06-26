int pixelSize;

void setup() {
  size (800,600);
  background(0);
  pixelSize = 50;
  stroke(2);
  //noFill();
  frameRate(12);
}

void draw() {
  background(0);
  for (int y = 0; y < height; y = y + pixelSize) {
    for (int x = 0; x < width; x = x + pixelSize) {
      float d = dist(x+pixelSize/2, y+pixelSize/2, mouseX, mouseY);
      stroke(255);
      noFill();
      if (d > pixelSize) {
        d = pixelSize;
      }
      ellipse(x + pixelSize/2, y + pixelSize/2, pixelSize*2-d, pixelSize*2-d);
    }
  }
}
