Objeto[] fatia;
int t;

void setup() {
  size(900, 900, P3D);
  frameRate(60);
  t = 0;
  
  for(int i = 0; i < 20; i++) {
    fatia = new Objeto[i];
  }
    
  for(int i = 0; i < fatia.length; i++) {
    fatia[i] = new Objeto(350, 350, -90+(i*10), -90+(i*10));
    fatia[i].calc_y();
    fatia[i].calc_delta_h();
    fatia[i].calc_delta_l();
    println("y;",fatia[i].y, " // delta_h:", fatia[i].delta_h);
    //fatia[i].delta_l = 0.5*i;
    //fatia[i].delta_h = 0.5*i;
    //fatia[i].globe_line();
  }

  background(0);
}

void draw() {
  //background(0);
  bg();

  translate(width/2, height/2);

  //for( int i = 0; i < fatia.length; i++) {
  //  //noFill();
  //  fill(0);
  //  //stroke(125, 255, 25, 255 -map(fatia[i].delta_h,-90,90,0,255));
  //  stroke(125, 255, 25, 255);
  //  strokeWeight(2);
  //  fatia[i].globe_line();
  //  fatia[i].calc_delta_h();
  //  fatia[i].calc_delta_l();
  //  fatia[i].calc_y();
  //  fatia[i].delta_l += 0.2;
  //  fatia[i].delta_h += 0.2;
  //  println("y",i,":",fatia[i].y, " // delta_h",i,":", fatia[i].delta_h);
  //}
  
  for( int i = fatia.length-1; i > 0; i--) {
    fill(0);
    //stroke(125, 255, 25, 255 -map(fatia[i].delta_h,-90,90,0,255));
    stroke(125, 255, 25, 255);
    strokeWeight(2);
    fatia[i].globe_line();
    fatia[i].calc_delta_h();
    fatia[i].calc_delta_l();
    fatia[i].calc_y();
    fatia[i].delta_l += 0.2;
    fatia[i].delta_h += 0.2;
  }
  
  //println(fatia[0].y);
  //fatia.calc_y();
  //fatia.calc_delta_h();
  //fatia.calc_delta_l();

  //fatia[0].delta_l += 0.5;
  //fatia[0].delta_h += 0.5;
  
  //saveFrame("globe-######.png");
}

void bg() {
  noStroke();
  fill(5,25,0, 40);
  rect(0, 0, width, height);
}
