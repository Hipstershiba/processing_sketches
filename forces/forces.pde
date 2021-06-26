Mover[] planet = new Mover[100];
Fluid fluido;

float time;
float fanSpeed;

void setup() {
  //size(640,640);
  fullScreen();
  background(50);
  //frameRate(30);
  
  for(int i = 0; i < planet.length; i++) {
    planet[i]= new Mover();
  }
  
  fluido = new Fluid(0,height-200,width,200,0.5);
  
  time = 0;
  fanSpeed = 0;
  
}

void draw() {
  bg();
  //slows();
  
  //fluido.display();
  
  for(int i = 0; i < planet.length; i++) {
    
    if(mousePressed){
      planet[i].applyForce(planet[i].wind(time,0));
      planet[i].applyForce(planet[i].downBlow(10*time));  
    }
    
    planet[i].applyForce(planet[i].gravity(0.2));
    
    planet[i].applyForce(planet[i].friction(0.2));
    
    // fluido
    //if (planet[i].isInside(fluido)) {
    //  planet[i].applyForce(planet[i].drag(fluido));
    //}
    
    planet[i].update();
    planet[i].edgeB();
    planet[i].display();
  }
  
  time += 0.01;
}

void bg() {
  push();
  noStroke();
  fill(0,25);
  rect(0,0,width,height);
  pop();
}

void slows() {
  push();
  colorMode(RGB);
  noStroke();
  fill(255,0,0,50);
  rect(mouseX-50,mouseY-50,100,100);
  pop();
}
