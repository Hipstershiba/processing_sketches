Attractor[] att = new Attractor[3];
Mover[] m = new Mover[4];

float time;
int timer;

void setup() {
  size(900,900);
  surface.setResizable(true);
  //fullScreen();
  background(50);
  
  for(int i = 0; i < att.length; i++) {
    att[i] = new Attractor();
  }
  
  for(int i = 0; i < m.length; i++) {
    m[i] = new Mover();
  }
  
  time = 0;
  timer = 1;
}

void draw() {
  bg();
  
  for(int j = 0; j < att.length; j++) {
    for(int i = 1; i < m.length; i++) {
      m[i].applyForce(att[j].attraction(6,m[i]));
      //m[i].update();
      if(i > 1){
        m[i].update(m[i-1]);
      } else { m[i].update(); }
      m[i].edge(3);
      //m[i].displayC();
      m[i].displayL();
      vertex(m[i].location.x,m[i].location.y);
    }
    att[j].applyForce(att[j].perlin(time));
    att[j].update();
    att[j].rJump(timer);
    att[j].edge(4);
    //att.display();
  }
  
  time += 0.1;
  timer ++;
  
}

void bg() {
  push();
  noStroke();
  fill(0,0);
  rect(0,0,width,height);
  pop();
}

void keyPressed() {
  if(key == 'r') {
    push();
  noStroke();
  fill(50,255);
  rect(0,0,width,height);
  pop();
  }
}
