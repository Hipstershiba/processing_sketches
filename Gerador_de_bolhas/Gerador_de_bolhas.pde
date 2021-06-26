int n = 0;
Bolha []b = new Bolha[100];

void setup() {
  size(800, 600, P2D);
  //for (int i = 0; i < b.length; i++) {
    //println (i);
    //b[i] = new Bolha(50,random(255),random(255),random(255));  
  //}
}

void draw() {
  background(0);
  //println("1:", n);
  b[n] = new Bolha(50,n,random(255),random(255));
  //println("2:", n);
  for (int i = 0 ; i < n && i < b.length; i++) {
    b[i].ascend();
    b[i].display();
    b[i].topLoop();
    b[i].popAnimation();
    println(b[i].R);
  }
}

void mousePressed() {
  if (n < b.length-1) {
    n++;
  }
  for (int i = 0; i < n && i < b.length; i++) {
    b[i].pop();
    println(b[i].p);
  }
}
