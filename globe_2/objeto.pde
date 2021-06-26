class Objeto {

  float l;
  float delta_l;
  float h;
  float delta_h;

  float y;
  float raio_l;
  float raio_h;

  Objeto(float templ, float temph, float inicial_delta_l, float inicial_delta_h) {
    l = templ;
    delta_l = inicial_delta_l;
    h = temph;
    delta_h = inicial_delta_h;
  }

  void globe_line() {
    //noFill();
    //stroke(125, 255, 25, 255);
    //strokeWeight(2);
    //fill(255);

    ellipse(0, y, raio_l, raio_h);

    //delta_l += 1;
    //delta_h += 1;

    //if (delta_h >= 90) {
    //  delta_l = -90;
    //  delta_h = -90;
    //}
  }
  
  void calc_y() {
    y = l*sin(radians(delta_h));
     //if (delta_h >= 90) {
      //y = -90;
    //}
  }
  
  void calc_delta_h() {
   raio_h = map(cos(radians(delta_h)), 0, 1, 0, h);
   if (delta_h >= 90) {
      delta_h = -90;
    }
  }
  
  void calc_delta_l() {
    raio_l = map(cos(radians(delta_l)), 0, 1, 0, l*2);
    if (delta_l >= 90) {
      delta_l = -90;
    }
  }
  
}
