Objeto[] o;
float cont;

void setup() {
  size(900, 900);
  o = new Objeto[25];
  for (int i = 0; i < o.length; i++) {
    o[i] = new Objeto();
    o[i].x = i*25;
    o[i].y = i*25;
    cont = 0;
  }
}

void draw() {
  //background(5, 40, 0);
  bg();
  //translate(width/4, height/4);

  //noStroke();
  //fill(50, 125, 25);
  noFill();
  stroke(50, 125, 25);
  
  
  //for (int w = 0; w < width; w+= 100) {
  //  for (int h = 0; h < height; h+= 100) {
  //    for (int i = 0; i < o.length; i++) {
  //      circle(o[i].x + 1* w, o[i].y + 1* h, 5);
  //      o[i].path(0.01);
  //    }
  //  }
  //}

  //for (int i = 0; i < o.length; i++) {
  //  circle(o[i].x, o[i].y, 5);
  //  o[i].path(1);
  //}
  
  for (int w = 0; w < width; w+= o[0].oWidth) {
    for (int h = 0; h < height; h+= o[0].oHeight) {
      for (int i = 0; i < o.length; i++) {
        int j = i + 1;
        if( j >= o.length) {
          j = 0 + i;
        }
        println(j);
        line(o[i].x + 1 * w, o[i].y + 1 * h, o[j].x + 1 * w, o[j].y + 1 * h);
        rect(w, h, width/2, height/2);
        //circle(o[i].x, o[i].y, 5);
        o[i].path(1);
      }
    }
  }
  
  //for (int i = 0; i < o.length; i++) {
  //  int j = i + 4;
  //  if( j >= o.length) {
  //    j = 0 + i;
  //  }
  //  println(j);
  //  line(o[i].x, o[i].y, o[j].x, o[j].y);
  //  o[i].path(1);
  //}
  
  cont++;
}


void bg() {
  push();
  noStroke();
  fill(5, 40, 0, 255);
  rect(0, 0, width, height);
  pop();
}
