class Mover {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float mass;
  float maxSpeed;
  float angle;
  float aVelocity;
  float aAcceleration;
  
  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector();
    acceleration = new PVector();
    
    mass = 10;
    maxSpeed = 5;
    angle = 0;
    aVelocity = 0;
    aAcceleration = 0;
  }
  
  void display() {
    float theta = velocity.heading();
    
    pushMatrix();
    push();
    translate(location.x,location.y);
    rotate(theta);
    rectMode(CENTER);
    fill(255,255);
    noStroke();
    //line(0,0,mass,0);
    triangle(mass,0,0,-mass/2,0,mass/2);
    //circle(0,0,mass);
    pop();
    popMatrix();
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
    
    acceleration.mult(0);
  }
  
  void applyForce(PVector force) {
    acceleration.add(force);
  }
  
  PVector accNoise(float time) {
    PVector accNoise = new PVector(map(noise(time),0,1,-1,1),map(noise(time+1000),0,1,-1,1));
    return accNoise;
  }
  
  void edge() {
    if (location.x < 0) {
      location.x = width;
    } else if (location.x > width) {
      location.x = 0;
    }
    
    if (location.y < 0) {
      location.y = height;
    } else if (location.y > height) {
      location.y = 0;
    }
  }
}
