Planet[] p = new Planet[2];
Attractor[] att = new Attractor[3];

void setup() {
  //size(900,900);
  fullScreen();
  background(50);

  for(int i = 0; i < p.length; i++) {
    p[i] = new Planet();
  }
  
}

void draw() {
  bg();
  
  for(int i = 0; i < p.length; i++) {
    for(int j = 0; j < p.length; j++) {
      if(i != j) {
        PVector force = p[j].gForce(p[i]);
        p[i].applyForce(force);
      }
    }
    p[i].update();
    p[i].edge();
    p[i].display();
  }

}

void bg() {
  noStroke();
  fill(0,5);
  rect(0,0,width,height);
}
