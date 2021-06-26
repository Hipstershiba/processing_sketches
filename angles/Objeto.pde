class Objeto {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float mass;
  float maxSpeed;
  
  float angle;
  float aVelocity;
  float aAcceleration;
  
  
  Objeto() {
    location = new PVector(width/2,height/2);
    //location = new PVector();
    velocity = new PVector();
    acceleration = new PVector();
    
    mass = 10;
    maxSpeed = 1;
    
    angle = 0;
    aVelocity = 0;
    aAcceleration = 0.001;
  }
  
  void display() {
    pushMatrix();
    translate(location.x,location.y);
    rotate(angle);
    
    stroke(255,5);
    strokeWeight(2);
    fill(255,0);
    //circle(0,-50,mass);
    line(0,-mass*5,0,mass*5);
    //circle(0,50,mass);
    popMatrix();
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
    
    aAcceleration = acceleration.x/100;
    aVelocity += aAcceleration;
    aVelocity = constrain(aVelocity,-0.1,0.1);
    angle += aVelocity;
    
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
    if( location.x < 0) {
      location.x = 0;
    } else if(location.x > width) {
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
    } else if(location.x > width) {
      location.x = width;
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
  
  void edgeC() {
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
  
}
