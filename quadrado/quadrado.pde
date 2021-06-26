Objeto o = new Objeto();
float a = 0;
float prevX = 100;
float prevY = 100;

void setup() {
  size(900, 900);
  background(25);
}

void draw() {
  //background(0);
  bg();

  //o.path(10);
  //o.path_noise(a);

  //noStroke();
  stroke(255);
  strokeWeight(5);
  //fill(255);
  //noiseDetail(2, 8);

  //circle(o.x + o.noiseX + 100, o.y + o.noiseY + 100, 3);
  beginShape();
  for (int i = 0; i < 10; i++) {
    o.path(1);
    o.path_noise(a);
    //line(o.x + o.noiseX + 100, o.y + o.noiseY + 100, prevX, prevY);
    vertex(o.x + o.noiseX + 100, o.y + o.noiseY + 100);
    prevX = o.x + o.noiseX + 100;
    prevY = o.y + o.noiseY + 100;
    a += 0.005;
  }
  endShape();

  //a += 0.05;



  println("x:", o.x, " // y:", o.y);
  //noLoop();
}

void bg() {
  fill(0, 0);
  noStroke();
  rect(0, 0, width, height);
}
