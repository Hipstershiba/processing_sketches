class Objeto {

  PVector loc;
  PVector vel;
  PVector acc;
  float mass;

  Objeto() {
    loc = new PVector(width/2, 100);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    mass = 0;
  }

  void display() {
    noStroke();
    fill(255);
    circle(loc.x, loc.y, 25);
  }

  void applyForce() {
    loc 
  }
}
