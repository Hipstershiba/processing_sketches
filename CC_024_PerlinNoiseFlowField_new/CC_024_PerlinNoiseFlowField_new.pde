// Daniel Shiffman
// http://youtube.com/thecodingtrain
// http://codingtra.in
//
// Coding Challenge #24: Perlin Noise Flow  Field
// https://youtu.be/BjoM9oKOAKY

FlowField flowfield;
ArrayList<Particle> particles;

boolean debug = false;

void setup() {
  //size(1200, 800);
  fullScreen();
  
  flowfield = new FlowField(50);
  flowfield.update();

  particles = new ArrayList<Particle>();
  for (int i = 0; i < 10000; i++) {
    PVector start = new PVector(random(width), random(height));
    particles.add(new Particle(start, random(2, 8)));
  }
  background(0);
}

void draw() {
  fill(0,map(mouseX,0,width,0,50));
  noStroke();
  //rect(0,0,width,height);
  flowfield.update();
  
  if (debug) flowfield.display();
  
  for (Particle p : particles) {
    p.follow(flowfield);
    p.run();
  }
}
