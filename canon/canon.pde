Mover[] planet = new Mover[1];

float time;

boolean mouseR;

void setup() {
  size(1440,900);
  //fullScreen();
  background(50);
  //frameRate(30);
  
  for(int i = 0; i < planet.length; i++) {
    planet[i]= new Mover();
  }
  
  time = 0;
  mouseR = false;
  
}

void draw() {
  bg();
  
  //fluido.display();
  
  for(int i = 0; i < planet.length; i++) {
    
    if(mouseR){
      planet[i].applyForce(planet[i].shot());
      mouseR = false;
    }
    
    planet[i].applyForce(planet[i].gravity(0.2));
    
    planet[i].applyForce(planet[i].friction(0.5));
    
    planet[i].update();
    planet[i].edgeB();
    planet[i].display();
  }
  
  time += 0.01;
}

void bg() {
  push();
  noStroke();
  fill(0,50);
  rect(0,0,width,height);
  pop();
}

void mouseReleased() {
  if(mouseR == false) {
    mouseR = true;
  }
  println(mouseR);
}
