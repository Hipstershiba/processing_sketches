float a = 0;
float x = 0;
float y = 0;
float prevX = x;
float prevY = y;
float modX = 0;
float modY = 0;

void setup() {
  size(900, 900);
  //background(5, 25, 0, 25);
  bg();
  grid();
}

void draw() {

  if (a >=360) {
    strokeWeight(1);
    bg();
    grid();
    a = 0;
  }
  //radialGrid();
  a+=0.5;
  float ang = radians(a);
  
  modX = cos(ang*1);
  modY = sin(ang*2);
  
  translate(width/2, height/2);

  float r = (pow(cos(ang), 2) + pow(sin(ang), 3)) * height/2;
  
  strokeWeight(2);
  stroke(125, 225, 25);
  fill(125, 225, 25);
  //line(0, 0, r * cos(radians(a)),r * sin(radians(a)));
  x = r * modX;
  y = r * modY;
  //circle(x, y, 2);
  line(prevX, prevY, x, y);
  prevX = x;
  prevY = y;
}


void radialGrid() {
  push();
  translate(width/2, height/2);
  float r = sqrt(pow(width, 2)+pow(height, 2))/2;

  //11,25
  stroke(0, 35, 0);
  for (float a = 360/32; a < 360; a += 11.250000) {
    line(0, 0, r * cos(radians(a)), r * sin(radians(a)));
  }

  //22,5
  stroke(0, 50, 0);
  for (float a = 360/16; a < 360; a += 360/8) {
    line(0, 0, r * cos(radians(a)), r * sin(radians(a)));
  }

  //45
  stroke(25, 75, 0);
  for (float a = 360/8; a < 360; a += 360/4) {
    line(0, 0, r * cos(radians(a)), r * sin(radians(a)));
  }

  //90
  stroke(50, 125, 25);
  for (float a = 0; a < 360; a += 360/4) {
    line(0, 0, r * cos(radians(a)), r * sin(radians(a)));
  }

  //ponteiro
  stroke(50, 125, 25);
  line(0, 0, r * cos(radians(a)), r * sin(radians(a)));
  pop();
}

void grid() {
  push();
  translate(0, 0);
  noFill();  
  stroke(0, 35, 0);
  for (int w = 0; w < width; w += width/36) {
    line(w, 0, w, height);
    for (int h = 0; h < height; h += height/36) {
      line(0, h, width, h);
    }
  }

  stroke(0, 50, 0);
  for (int w = 0; w < width; w += width/18) {
    line(w, 0, w, height);
    for (int h = 0; h < height; h += height/18) {
      line(0, h, width, h);
    }
  }

  stroke(25, 75, 0);
  for (int w = 0; w < width; w += width/6) {
    line(w, 0, w, height);
    for (int h = 0; h < height; h += height/6) {
      line(0, h, width, h);
    }
  }

  stroke(50, 125, 25);
  for (int w = 0; w < width; w += width/2) {
    line(w, 0, w, height);
    for (int h = 0; h < height; h += height/2) {
      line(0, h, width, h);
    }
  }
  pop();
}

void bg() {
  push();
  translate(0, 0);
  noStroke();
  fill(5, 25, 0, 255);
  rect(0, 0, width, height);
  pop();
}
