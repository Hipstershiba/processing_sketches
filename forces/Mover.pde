class Mover {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float mass;
  float density;
  float size;
  float speed;
  float maxSpeed;
  float normal = 1;
  
  float hue;
  
  Mover() {
    location = new PVector (random(width),random(height));
    velocity = new PVector(0,0);
    acceleration = new  PVector(0,0);
    
    mass = int(random(14,25));
    density = 1;
    size = mass/density;
    speed = velocity.mag();
    maxSpeed = 10;
    
    colorMode(HSB);
    hue = int(random(255));
    
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void display() {
    fill(hue,175,355);
    noStroke();
    circle(location.x,location.y,size);
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
  
  boolean isInside(Fluid f) {
    if (location.x>f.x && location.x<f.x+f.w && location.y>f.y && location.y<f.y+f.h) {
      return true;
    } else {
      return false;
    }   
  }
  
  PVector drag (Fluid f) {
    PVector drag = velocity.copy();
    float c = f.c;
    speed = velocity.mag();
    float dragMag = c * (speed * speed);
    
    drag.mult(-1);
    drag.normalize();
    drag.mult(dragMag);
    println(drag);
    return drag;
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
  
}
