class Pendulum {
  
  PVector origem;
  PVector location;
  
  float r;
  float ang;
  float aAcceleration;
  float aVelocity;
  
  float mass;
  float maxSpeed;
  
  boolean go = true;
  
  Pendulum(float a, float len) {
    
    r = len;
    ang = radians(a);
    aAcceleration = 0;
    aVelocity = 0;
    mass = 25;
    maxSpeed = 0.01;
    
    origem = new PVector(width/2,0);
    location = new PVector(width/2,r*cos(ang));
    
  }
  
  void update() {
      aVelocity += aAcceleration;
      ang += aVelocity;
      location.x = origem.x + r * sin(ang);
      location.y = origem.y + r * cos(ang);
      aVelocity *= 0.99;
      aAcceleration = 0;
  }
  
  void display() {
    push();
    stroke(70,200,25);
    strokeWeight(2);
    line(location.x,location.y,origem.x,origem.y);
    pop();
    
    push();
    fill(70,200,25);
    noStroke();
    circle(location.x,location.y,mass);
    pop();
  }
  
  void drawLine() {
    
  }
  
  void applyForce(float force) {
    aAcceleration = (force/r) * sin(ang);
  }
  
  float gravidade() {
    float gravidadeForce = -1;
    return gravidadeForce;
  }
  
}
