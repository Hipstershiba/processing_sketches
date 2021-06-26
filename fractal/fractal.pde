float margem = 50;
float spacing = 25;
float comp;
int multx = 1;
float x;
float y = margem;

void setup() {
  size(900,900);
  background(255);

  comp = width;
  println(comp);
}

void draw() {
  
  for(int i = 0; i < multx; i++) {
    strokeWeight(5);
    //stroke(random(255),random(255),random(255));
    line(0+((2*i)*comp),y,comp+((2*i)*comp),y);
    //y += spacing;
  }
  
  y += spacing;
    //println(y);
  comp = comp/3;
  multx += multx;
  println(multx);
  println(comp);
  println(0+margem,comp+margem);
}