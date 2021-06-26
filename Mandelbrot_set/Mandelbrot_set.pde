Complex z;
Complex c;

float prevX;
float prevY;

float zoom;

void setup() {
  size(1440,1080);
  background(255);
  frameRate(960);
  
  z = new Complex(0,0);
  //c = new Complex(0.1353916,0.620001);
  //c = new Complex(0.1353916,0.620011);
  c = new Complex(0.13539165199199,0.62000122999);
  prevX = z.x;
  prevY = z.y;
  
  //zoom = 1000; //old
  zoom = 7500;
  
}

void draw() {
  //translate(width/2,height/2);
  translate(104,613);
  rotate(radians(90));
  //translate(600,150);
  
  println(z.x,"+",z.y,"i");
  
  push();
  stroke(0,255);
  strokeWeight(1);
  point(z.x * zoom, z.y * zoom);
  pop();
  
  push();
  stroke(0,3);
  strokeWeight(1);
  //line(prevX * zoom, prevY  * zoom, z.x  * zoom, z.y  * zoom);
  pop();
  prevX = z.x;
  prevY = z.y;
  z = z.cSq();
  z = z.cAdd(c);

  
}
