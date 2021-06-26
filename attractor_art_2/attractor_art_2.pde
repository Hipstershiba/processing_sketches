Attractor att;
Mover[] m = new Mover[20000];

float time;
int timer;

void setup() {
  //size(900,900);
  fullScreen();
  background(50);
  
  att = new Attractor();
  
  for(int i = 0; i < m.length; i++) {
    m[i] = new Mover();
  }
  
  time = 0;
  timer = 1;
}

void draw() {
  bg();
  
  for(int i = 1; i < m.length; i++) {
    m[i].applyForce(att.attraction(6,m[i]));
    //m[i].update();
    if(i > 1){
      m[i].update(m[i-1]);
    } else { m[i].update(); }
    m[i].edge(4);
    m[i].displayC();
    //m[i].displayL();
  }
  
  att.applyForce(att.perlin(time));
  att.update();
  att.rJump(timer);
  att.edge(4);
  //att.display();
  
  time += 0.1;
  timer ++;
  
}

void bg() {
  push();
  noStroke();
  fill(0,25);
  rect(0,0,width,height);
  pop();
}
