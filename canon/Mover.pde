class Mover {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float angle;
  float aVelocity;
  float aAcceleration;
  
  float mass;
  float density;
  float size;
  float speed;
  float maxSpeed;
  float normal = 1;
  
  float hue;
  
  Mover() {
    location = new PVector (0,height);
    velocity = new PVector(0,0);
    acceleration = new  PVector(0,0);
    
    angle = 0;
    aVelocity = 0;
    aAcceleration = 0;
    
    mass = int(random(15,50));
    density = 1;
    size = mass/density;
    speed = velocity.mag();
    maxSpeed = 10;
    
    colorMode(HSB);
    hue = int(random(255));
    
  }
  
  void update() {
    println(acceleration);
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
    
    aAcceleration = acceleration.x;
    aVelocity += aAcceleration;
    aVelocity = constrain(aVelocity,-5,5);
    angle += aVelocity;
    
    acceleration.mult(0.0);
  }
  
  void display() {
    pushMatrix();
    translate(location.x,location.y);
    rotate(radians(angle));
    
    push();
    fill(hue,175,355);
    noStroke();
    rectMode(CENTER);
    rect(0,0,size,-size);
    pop();
    popMatrix();
  }
  
  void applyForce(PVector force) {
    PVector a = PVector.div(force,mass);
    acceleration.add(a);
  }
  
  // forças
  PVector wind(float time, float f) {
    return new PVector(map(noise(time),0,1,-f,f), map(noise(time+10000),0,1,-f,f));
  }
  PVector downBlow(float f) {
    return new PVector(0,-f*map(location.y,0,height,0,1));
  }
  PVector gravity(float g) {
    return new PVector(0,g*mass);
  }
  
  PVector friction(float tempC) {
    PVector friction = velocity.copy();
    float c = tempC;
    float frictionMag = c*normal;
    
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMag);
    return friction;
  }
  
  PVector shot() {
    PVector mouseLoc = new PVector(mouseX, mouseY);
    PVector shot = PVector.sub(mouseLoc, location);
    shot.normalize();
    //println(shot);
    return shot.mult(10000);
  }
  
  // bordas
  void edgeless() {
    if( location.x < 0) {
      location.x = width;
    } else if(location.x > width) {
      location.x = 0;
    }
    
    if( location.y < 0) {
      location.y = height;
    } else if(location.y > height) {
      location.y = 0;
    }
  }
  
  void edge() {
    if( location.x < 0) {
      location.x = 0;
    } else if(location.x > width-size) {
      location.x = width;
    }
    
    if( location.y < 0) {
      location.y = 0;
    } else if(location.y > height) {
      location.y = height;
    }
  }
  
  void edgeB() {
    if( location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    } else if(location.x > width-size) {
      location.x = width-size;
      velocity.x *= -1;
    }
    
    if( location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    } else if(location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
  }
  
}
