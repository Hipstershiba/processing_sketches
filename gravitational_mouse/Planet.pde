class Planet {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  float hue;
  float planetSize;
  
  Planet() {
    colorMode(HSB);
    hue = random(255);
    planetSize = int(random(16,25));
    location = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void update(float maxSpeed) {
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,location);
    float gravitationalAcc = (6*planetSize)/dir.magSq();;
    dir.normalize();
    dir.mult(gravitationalAcc);
    acceleration = dir;
    
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    
    location.add(velocity);
  }
  
  void display() {
    noStroke();
    fill(hue,255,255);
    circle(location.x,location.y,planetSize);
  }
  
  void edges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
 
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
  
}
