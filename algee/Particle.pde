class Particle {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float fade;
  float size;
  float maxSpeed;
  
  Particle(float tempx, float tempy) {
    
    location = new PVector(tempx,tempy);
    velocity = new PVector();
    acceleration = new PVector();
    
    fade = 255;
    size = 3;
    maxSpeed = 2;
  }
  
  void display() {
    for(int i = 0; i < 10; i++) {
      noStroke();
      fill(255,fade);
      circle(location.x,location.y,size);
      fade -= 10;
      location.y += 1;
      size -= 0.025;
    }
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void applyForce(PVector force) {
    location.add(force);
  }
  
  PVector seno(float ang) {
    float deltax = map(sin(radians(ang)),0,1,-0.5,1);
    PVector force = new PVector(deltax,0);
    return force;
  }
  
}
