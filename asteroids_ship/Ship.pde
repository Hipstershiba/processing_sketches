class Ship {
  PVector loc;
  PVector vel;
  PVector acc;
  
  float mass;
  float maxSpeed;
  
  float heading;
  
  float r;
  
  boolean thrusting;
  
  Ship() {
    loc = new PVector(width/2, height/2);
    vel = new PVector();
    acc = new PVector(1,1);
    
    mass = 0.995;
    maxSpeed = 6;
    
    heading = 0;
    
    r = 6;
    thrusting = false;
  }
  
  void display() {
    pushMatrix();
    translate(loc.x, loc.y+r);
    rotate(heading);
    
    noStroke();
    fill(175);
    if(thrusting) {
      fill(255);
    }
    rect(-r/2,r,r/3,r/2);
    rect(r/2,r,r/3,r/2);
    fill(255);
    beginShape();
    vertex(-r,r);
    vertex(0,-r);
    vertex(r,r);
    endShape();
    rectMode(CENTER);
    popMatrix();
    
    thrusting = false;
  }
  
  void update() {
    vel.add(acc);
    vel.mult(mass);
    vel.limit(maxSpeed);
    loc.add(vel);
    acc.mult(0);
  }
  
  void applyForce(PVector force) {
    PVector f = force.get();
    acc.add(f);
  }
  
  void turn(float a) {
    heading += a;
  }
  
  void thrust() {
    float angle = heading - PI/2;
    PVector force = new PVector(cos(angle),sin(angle));
    force.mult(0.1);
    applyForce(force);
    thrusting = true;
  }
  
  void edge() {
    float buffer = r*2;
    if(loc.x > width + buffer) {
      loc.x = -buffer;
    } else if (loc.x < -buffer) {
      loc.x = width + buffer;
    }
    if(loc.y > height + buffer) {
      loc.y = -buffer;
    } else if (loc.y < -buffer) {
      loc.y = height + buffer;
    }
  }
  
}
