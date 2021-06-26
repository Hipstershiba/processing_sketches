Random r = new Random();
float x;
float y;
float prevx;
float prevy;

void setup() {
  size(600,600);
  background(255);
  x = width/2;
  y = height/2;
  prevx = width/2;
  prevy = height/2;
}

void draw() {  
  //x += r.levyFlight(0.01);
  //y += r.levyFlight(0.01);
  x += r.montecarlo();
  y += r.montecarlo();
  line(prevx,prevy,x,y);
  prevx = x;
  prevy = y;
  println(r.montecarlo());
}
