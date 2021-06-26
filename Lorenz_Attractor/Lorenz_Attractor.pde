import peasy.*;

float x = 0.01;
float y = 0;
float z = 0;

float a = 10;
float b = 28;
float c = 8.0/3.0;
float t;

float s;

ArrayList<PVector> points = new ArrayList<PVector>();

PeasyCam cam;

void setup(){
  size(1080,720,P3D);
  colorMode(HSB);
  cam = new PeasyCam(this, 400);
  
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
  s = s + e;
}

void draw(){
  background(0);
  float dt = 0.01;
  float dx = a * (y - x) * dt;
  float dy = (x * (b - z) - y) * dt;
  float dz = (x * y - c * z) * dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  points.add(new PVector(x,y,z));
  
  translate(0,0,-20);
  //translate(width/2,height/2);
  scale(1);
  stroke(255);
  noFill();
  
  float Hu = 0;
  beginShape();
    for (PVector v : points){
      stroke(Hu,255,255);
      point(v.x,v.y,v.z);
      PVector offset = PVector.random3D();
      offset.mult(random(0.01, 0.05));
      v.add(offset);
      
      Hu += 0.1;
      if (Hu > 255) {
        Hu = 0;
      } 
    }
  endShape();
  
  println(x,y,z);
  
}
