int pixelSize;

void setup() {
  size (800,600);
  background(0);
  pixelSize = 20;
  stroke(2);
  //noFill();
  frameRate(60);
}

void draw() {
  //background(0,10);
  for (int y = 0; y < height; y = y + pixelSize) {
    for (int x = 0; x < width; x = x + pixelSize) {
      float d = dist(x+pixelSize/2, y+pixelSize/2, mouseX, mouseY);
      stroke(map(d,0,255,255,0));
      fill(0);
      rect(x, y, pixelSize, pixelSize);
    }
  }
}
