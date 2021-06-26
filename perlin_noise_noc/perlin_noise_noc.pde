Walker amoshibas;
float a;

void setup() {
  //size(600,600);
  fullScreen();
  background(50);
  amoshibas = new Walker();

}

void draw() {
  push();
  noStroke();
  fill(0,255);
  if(a > 10*60){
    rect(0,0,width,height);
    a = 0;
  }
  pop();
  a++;
  for(int i = 0; i < 1; i++) {
    amoshibas.walk();
    amoshibas.time(0.01);
    //amoshibas.edge();
    amoshibas.displayln();
    //amoshibas.display();
  }
}
