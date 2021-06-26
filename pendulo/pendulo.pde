//Pendulum[] p = new Pendulum[2];
Pendulum p;
//float index = 1;

void setup(){
  //size(900,900);
  fullScreen(2);
  background(1);
  frameRate(60);
  //for(int i = 0; i < p.length; i++) {
  //  p[i] = new Pendulum(0, 300 + index);
  //  index += 1;
  //}
  p = new Pendulum(0, 300);
  
}

void draw(){
  bg();
  
  //for(int i = 0; i < p.length; i++) {
  //  p[i].applyForce(p[i].gravidade());
  //  p[i].update();
  //  p[i].display();
  //  //stroke(70,200,25);
  //  //strokeWeight(5);
  //  //line(p[i].location.x,p[i].location.y,p[i-1].location.x,p[i-1].location.y);
  //}
  
  p.applyForce(p.gravidade());
  p.update();
  p.display();
  //println(p.location.x+p.mass,"/",mouseX);
  if (mouseX < p.location.x+(p.mass/2) && mouseY < p.location.y+(p.mass/2) && mouseX > p.location.x-(p.mass/2) && mouseY > p.location.y-(p.mass/2)) {
      println("yes");
  } else { println("no"); }
  
}

void bg() {
  pushMatrix();
  noStroke();
  fill(0,255);
  rect(0,0,width,height);
  popMatrix();
}

void mousePressed() {
    if (mouseX < p.location.x+(p.mass/2) && mouseY < p.location.y+(p.mass/2) && mouseX > p.location.x-(p.mass/2) && mouseY > p.location.y-(p.mass/2)) {
      println("yessss");
      p.go = false;
      p.ang = radians(map(mouseX,0,width,-10000,10000));      
    }
}

void mouseReleased() {
  p.go = true;
}
