Objeto o;
float ang;

void setup() {
  size(900,900);
  background(0);
  
  o = new Objeto();
  ang = 0;
}

void draw() {
  background(0);
  translate(width/2,height/2);
  rotate(radians(ang));
  o.display();
  ang+=2;
}
