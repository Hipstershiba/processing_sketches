Bolha b1,b2,b3;
//float a,b,c;

void setup() {
  size(800, 600);
  //a = random(10,100);
  //b = random(10,100);
  //c = random(10,100);
  
  b1 = new Bolha(350, 30,0,0,255);
  
  b2 = new Bolha(450, 30,0,255,0);
  
  b3 = new Bolha(400, 30,255,0,0);
}

void draw() {
  background(0);
  
  b1.overlaps(b2);
  b2.overlaps(b3);
  b3.overlaps(b1);
  
  b1.ascend();
  b1.display();
  b1.top();
  b1.popAnimation();
  
  b2.ascend();
  b2.display();
  b2.top();
  b2.popAnimation();
  
  b3.ascend();
  b3.display();
  b3.top();
  b3.popAnimation();
}

void mousePressed() {
  b1.pop();
  
  b2.pop();
  
  b3.pop();
}
