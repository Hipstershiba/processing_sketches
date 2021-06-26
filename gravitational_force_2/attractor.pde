class Attractor {
  
  float mass;
  PVector location;
 
  Attractor() {
    location = new PVector(random(width),random(height));
    mass = random(16,32);
  }
  
  void display() {
    push();
    noStroke();
    fill(255,5);
    circle(location.x,location.y,mass*2);
    pop();
  }
  
  void update() {
    location.set(mouseX,mouseY);
  }
  
}
