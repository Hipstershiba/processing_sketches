float h, x, y, a, l;

void setup() {
  size(960, 720);
  background(0);
  colorMode(HSB);
  h = 0;
  x = width/2;
  y = height/2;
  a = 100;
  l = 100;
}

void draw() {
  noStroke();
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);

  //background(0);

  //noStroke();
  //fill(h,175,255);
  noFill();
  //strokeWeight(random(1,10));
  stroke(h, 175, 255);
  ellipse(x, y, l, a);

  //noStroke();
  //fill(h,175,255);
  noFill();
  //strokeWeight(random(1,10));
  stroke(h, 175, 255);
  ellipse(x, y, a, l);

  //noStroke();
  //fill(h,175,255);
  noFill();
  //strokeWeight(random(1,10));
  stroke(h, 175, 255);
  ellipse(x, y, l, l);

  //noStroke();
  //fill(h,175,255);
  noFill();
  //strokeWeight(random(1,10));
  stroke(h, 175, 255);
  ellipse(x, y, a, a);

  //x = x + random(-5,5);
  //y = y + random(-5,5);

  //x = mouseX;
  //y = mouseY;

  //l = (x+1)/5;
  //a = (y +1) / 5;

  l = l + random(-10, 10);
  a = a + random(-10, 10);

  //l = mouseX;
  //a = mouseY;

  if (x > width) {
    x = width/2;
  }
  if (y > height) {
    y = height/2;
  }

  if (h > 255) {
    h = 0;
  } else {
    h = h + 1;
  }
}
