Walker[] daniel = new Walker[100];

void setup() {
  //size(600,600);
  fullScreen();
  background(255);
  frameRate(480);
  for(int n = 0; n < daniel.length; n++) {
    daniel[n] = new Walker(random(width),random(height));
  }
}

void draw() {
  for(int n = 0; n < daniel.length; n++){
    daniel[n].display(0, 0);
    daniel[n].walk();
  }
}
