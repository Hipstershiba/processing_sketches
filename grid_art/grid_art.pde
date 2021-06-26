float x;
float y;
float cont;

void setup() {
  size(900, 900);
  x = 0;
  y = 0;
  cont = 0;
}

void draw() {
  background(0);

  tile_1();

  x+=5;
  if (x > width) {
    x = 0;
    cont++;
  }
}

void tile_1() {
  if (cont % 2 == 0) {
    noStroke();
    fill(255);
    beginShape();
    vertex(0, 0);
    vertex(x, 0);
    vertex(x, height);
    vertex(0, height);
    endShape(CLOSE);
  } else {
    noStroke();
    fill(255);
    beginShape();
    vertex(0, x);
    vertex(width, x);
    vertex(width, height);
    vertex(0, height);
    endShape(CLOSE);
  }
}
