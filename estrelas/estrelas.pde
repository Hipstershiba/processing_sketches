int starSize = 97;
float x = 0, y = 0;
float a = 0, b = 0;
int xSign = 1, ySign = 1;

void setup() {
  size(800, 600);
  frameRate(1);
}

void draw() {
  background(51);
  //for (int h = 0; h < height; h = h + starSize) {
  //  for (int w = 0; w < width; w = w + starSize) {
  //    star(w, h);
  //  }
  //}
  println("Star 1:");
  starMove(1, 1);
  star (x, y);
  println("Star 2:");
    starMove(10, 10);
  star (x, y);
  //println("Star 4:");
  //star (x, y);
  //starMove(5, 10);
  //println("Star 4:");
  //star (x, y);
  //starMove(3, 10);
  println("end");
}

void star(float x, float y) {
  fill(127);
  stroke(255);
  strokeWeight(2);
  //shape
  beginShape();
  vertex(50 + x, 0 + y);
  vertex(64 + x, 30 + y);
  vertex(97 + x, 35 + y);
  vertex(73 + x, 57 + y);
  vertex(79 + x, 90 + y);
  vertex(50 + x, 75 + y);
  vertex(21 + x, 90 + y);
  vertex(27 + x, 57 + y);
  vertex(3 + x, 35 + y);
  vertex(36 + x, 30 + y);
  endShape(CLOSE);
  println("star: x:", x,"/ y:", y);
}

void starMove(float xSpeed, float ySpeed) {
  if (800 < x)
    {
    xSign = -1;
    }
  if (0 > x)
    {
    xSign = 1;
    }
  if (600 < y)
    {
    ySign = -1;
    }
  if (0 > y)
    {
    ySign = 1;
    }
  x += xSpeed * xSign;
  y += ySpeed * ySign;
  println("starMove: xSpeed: ", xSpeed, "/ ySpeed:",ySpeed);
  
}
