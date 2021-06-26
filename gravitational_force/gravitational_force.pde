Planet[] p = new Planet[1000];
Attractor[] att = new Attractor[3];

void setup() {
  //size(900,900);
  fullScreen();
  background(50);
  
  for(int i = 0; i < 100; i++) {
    p[i] = new Planet();
  }
  
  for(int i = 0; i < 3; i++) {
    att[i] = new Attractor();
  }
  
}

void draw() {
  bg();
  
  for(int j = 0; j < 3; j++) {
    att[j].display();
    for(int i = 0; i < 100; i++) {
      p[i].applyForce(p[i].gForce(10, att[j].mass, att[j].location));
      p[i].applyForce(p[i].friction(0.005));
      p[i].update();
      p[i].display();
      p[i].edge();
    }
  }
  
  for(int i = 0; i < 3; i++) {
    if(dist(mouseX,mouseY,att[i].location.x,att[i].location.y) < att[i].mass*2 && mousePressed) {
      att[i].update();
    }
  }
  
}

void bg() {
  noStroke();
  fill(0,5);
  rect(0,0,width,height);
}
