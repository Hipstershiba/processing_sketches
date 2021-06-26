class Objeto {
  PVector loc;
  PVector vel;
  PVector acc;
  float ang;
  float angVel;
  float angAcc;
  
  
  Objeto() {
    loc = new PVector();
    vel = new PVector();
    acc = new PVector();
    ang = 0;
    angVel = 0;
    angAcc = 0.001;
  }
  
  void display() {
    translate(width/2,height/2);
    rotate(ang);
    stroke(255);
    strokeWeight(2);
    fill(255);
    circle(0,-50,10);
    line(0,-50,0,50);
    circle(0,50,10);
  }
  
  void update() {
    angVel += angAcc;
    ang += angVel;
  }
  
}
