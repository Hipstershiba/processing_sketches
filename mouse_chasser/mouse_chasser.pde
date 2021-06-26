Walker jone;

void setup() {
  size(600,600);
  background(255);
  jone = new Walker();
  frameRate(60);
}

void draw() {
  background(255);
  jone.display();
  //jone.randomStep();
  //jone.mouseDetection();
  //jone.mouseChasse();
  jone.graphs();
  jone.randomChasse();
  
  jone.edge();
}
