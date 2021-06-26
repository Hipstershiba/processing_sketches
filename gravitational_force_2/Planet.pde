class Planet {
  
  float mass;
  float maxSpeed;
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float hue;
  
  Planet() {
    colorMode(HSB);
    
    mass = random(5,25);
    maxSpeed = 5;
    location = new PVector(random(width),random(height));
    velocity = new PVector();
    acceleration = new PVector();
    
    hue = random(255);
  }
  
  void display() {
    noStroke();
    fill(hue,175,225);
    circle(location.x,location.y,mass);
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
  
  PVector gForce(Planet p) {
    PVector force = PVector.sub(location,p.location);
    float distance = force.mag();
    distance = constrain(distance,p.mass,sq(p.mass));
    force.normalize();
    float forceMag = (6 * p.mass * mass)/(distance * distance);
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
  
  void edge2() {
    if(location.x < 0) {
      location.x =  0;
    } else if(location.x > width) {
      location.x = width;
    }
    
    if(location.y < 0) {
      location.y = 0;
    } else if(location.y > height) {
      location.y = height;
    }
  }
  
  void edge3() {
    if(location.x < 0) {
      location.x =  0;
      velocity.mult(-1);
    } else if(location.x > width) {
      location.x = width;
      velocity.mult(-1);
    }
    
    if(location.y < 0) {
      location.y = 0;
      velocity.mult(-1);
    } else if(location.y > height) {
      location.y = height;
      velocity.mult(-1);
    }
  }
  
}
