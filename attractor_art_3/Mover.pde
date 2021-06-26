class Mover {
  
  PVector location;
  PVector prevLocation;
  PVector velocity;
  PVector acceleration;
  
  float mass;
  float size;
  float maxSpeed;
  float hue;
  
  Mover() {
    location = new PVector(random(width),random(height));
    prevLocation = new PVector();
    prevLocation.add(location);
    velocity = new PVector(-1,0);
    acceleration = new PVector();
    
    mass = 50;
    size = 3;
    maxSpeed = 10;
    hue = random(255);
    
    colorMode(HSB);
    
  }
  
  void displayC() {
    push();
    noStroke();
    fill(hue,175,255,255);
    circle(location.x,location.y,size);
    pop();
  }
  
  void displayL() {
    push();
    noFill();
    stroke(hue,175,255,5);
    strokeWeight(size);
    line(prevLocation.x,prevLocation.y,location.x,location.y);
    pop();
  }
  
  void update(Mover m) {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    prevLocation.set(m.location);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    prevLocation.set(location);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void applyForce(PVector force) {
    PVector a = PVector.div(force,mass);
    acceleration.add(a);
  }
  
  void edge(int i) {
    switch(i) {
      default:
        if(location.x < 0) {
          location.x = width;
        } else if(location.x > width) {
          location.x = 0;
        }
        
        if(location.y < 0) {
          location.y = height;
        } else if(location.y > height) {
          location.y = 0;
        }
      case 2:
        if(location.x < 0) {
          location.x = 0;
        } else if(location.x > width) {
          location.x = width;
        }
        
        if(location.y < 0) {
          location.y = 0;
        } else if(location.y > height) {
          location.y = height;
        }
      case 3:
        if(location.x < 0) {
          location.x = 0;
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
        case 4:
        if(location.x < 0) {
          location.x = random(width);
          location.y = random(height);
          prevLocation.x = location.x;
          prevLocation.y = location.y;
          velocity.mult(0);
        } else if(location.x > width) {
          location.x = random(width);
          location.y = random(height);
          prevLocation.x = location.x;
          prevLocation.y = location.y;
          velocity.mult(0);
        }
        
        if(location.y < 0) {
          location.x = random(width);
          location.y = random(height);
          prevLocation.x = location.x;
          prevLocation.y = location.y;
          velocity.mult(0);
        } else if(location.y > height) {
          location.x = random(width);
          location.y = random(height);
          prevLocation.x = location.x;
          prevLocation.y = location.y;
          velocity.mult(0);
        }
    }
  }
  
}
