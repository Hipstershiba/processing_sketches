Objeto fatia;

void setup() {
  size(900, 900, P3D);
    fatia = new Objeto(350, 150);
    

  background(0);
}

void draw() {
  //background(0);
  bg();

  translate(width/2, height/2);

  fatia.globe_line();
  fatia.calc_y();
  fatia.calc_delta_h();
  fatia.calc_delta_l();

  fatia.delta_l += 0.5;
  fatia.delta_h += 0.5;
}

void bg() {
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);
}
