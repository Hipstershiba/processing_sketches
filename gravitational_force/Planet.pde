class Planet {
  
  float mass;
  float maxSpeed;
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Planet() {
    mass = random(8,16);
    maxSpeed = 5;
    location = new PVector(random(width),random(height));
    velocity = new PVector();
    acceleration = new PVector();
  }
  
  void display() {
    noStroke();
    fill(255);
    circle(location.x,location.y,2);
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void applyForce(PVector f) {
    PVector a = PVector.div(f,mass);
    acceleration.add(a);
  }
  
  PVector gForce(float G, float attMass, PVector attLocation) {
    PVector force = PVector.sub(attLocation,location);
    float distance = force.mag();
    distance = constrain(distance,attMass,sq(attMass));
    force.normalize();
    float forceMag = (G * attMass * mass)/(distance * distance);
    return force.mult(forceMag);
  }
  
  PVector friction(float tempC) {
    PVector friction = velocity.copy();
    float c = tempC;
    float frictionMag = c*1;
    
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMag);
    return friction;
  }
  
  void edge() {
    if(location.x < 0) {
      location.x =  width;
    } else if(location.x > width) {
      location.x = 0;
    }
    
    if(location.y < 0) {
      location.y = height;
    } else if(location.y > height) {
      location.y = 0;
    }
  }
  
}
