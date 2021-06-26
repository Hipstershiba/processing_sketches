Walker[] fori = new Walker[100];
Walker[] raquete = new Walker [100];
float n;
float angle;

void setup() {
  size(600,600);
  background(255);
  n = 100;
  for(int i = 0; i < n; i++) {
    fori[i] = new Walker();
    raquete[i] = new Walker();
  }
  //frameRate(1);
}

void draw() {
  //background(255);
  push();
  noStroke();
  fill(255,255,255,25);
  rect(0,0,width,height);
  pop();
  for(int i = 0; i < 1; i++) {
    for(int index = 0; index < n; index++) {
      fori[index].display(0,200,255,5);
      //fori[index].mouseChasse();
      fori[index].rChasser();
      fori[index].edge();
      raquete[index].display(255,0,137,5);
      //raquete[index].mouseChasse();
      raquete[index].rChasser();
      raquete[index].edge();
    }
  }
}
