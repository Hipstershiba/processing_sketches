class Attractor {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float mass;
  float maxSpeed;
  
  Attractor() {
    location = new PVector(width/2,height/2);
    velocity = new PVector();
    acceleration = new PVector();
    
    mass = 100;
    maxSpeed = 2;
  }
  
  void display() {
    push();
    noStroke();
    fill(0,10);
    circle(location.x,location.y,25);
    pop();
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void rJump(float time) {
    if((time%560) == 0) {
      println(time, time%120);
      location.set(random(width),random(height));
    }
  }
  
  void applyForce(PVector force) {
    PVector a = PVector.div(force,mass);
    acceleration.add(force);
  }
  
  PVector perlin(float time) {
    PVector force = new PVector(map(noise(time),0,1,-1,1),map(noise(time+1000),0,1,-1,1));
    return force;
  }
  
  PVector attraction(float g, Mover m) {
    PVector force =  PVector.sub(location,m.location);
    float distance = force.mag();
    distance = constrain(distance,mass,sq(mass));
    force.normalize();
    float strength = (g * m.mass * mass)/(distance * distance);
    
    return force.mult(strength);
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
          velocity.mult(0);
        } else if(location.x > width) {
          location.x = random(width);
          velocity.mult(0);
        }
        
        if(location.y < 0) {
          location.y = random(height);
          velocity.mult(0);
        } else if(location.y > height) {
          location.y = random(height);
          velocity.mult(0);
        }
    }
  }
}
