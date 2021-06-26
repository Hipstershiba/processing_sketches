Oscilator[] osc = new Oscilator[10];


void setup() {
  fullScreen(P3D);
  background(50);
  
  for(int i = 0; i < osc.length; i++){
    osc[i] = new Oscilator();
  }
}

void draw() {
  bg();

  //translate(osc[0].loc.x,osc[0].loc.y);
  for(int i = 0; i < osc.length; i++) {
    osc[i].oscilate();
    osc[i].display();
  }
}

void bg() {
  pushMatrix();
  noStroke();
  fill(0,5);
  rect(0,0,width,height);
  popMatrix();
}
