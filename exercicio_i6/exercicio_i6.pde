Walker khaleesi;
Walker fori;
Random r;

void setup() {
  //size(600,600);
  fullScreen();
  background(255);
  khaleesi = new Walker();
  fori = new Walker();
  r = new Random();
}

void draw() {
  khaleesi.walk(r.levyFlight(0.01));
  khaleesi.edgeConstrain();
  khaleesi.displayln(2);
  fori.walk(r.montecarlo()*5);
  fori.edgeConstrain();
  fori.displayln(2);
  
}
