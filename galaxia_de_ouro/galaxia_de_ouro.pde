int numero_linhas;
float raio;
float numero_aneis;
float resolucao;
float a = 0;

void setup() {
  //size(900,900);
  fullScreen();
  numero_linhas = 45;
  numero_aneis = 200;
  raio = 25;
  resolucao = 2;
  
}

void draw() {
  background(0);
  translate(width/2,height/2);
  fill(255);
  noStroke();
  for (int i = 0; i < numero_aneis; i++){
    fill(random(255),random(255),random(255));
    anel(resolucao*i, i+a);
  }
  fill(255,0,0);
  circle(0,0,5);
  
  a += 0.01;
  
  //noLoop();
}

void anel(float offr, float offset) {
  //fill(255);
  noStroke();
  for (int i = 0; i < numero_linhas; i++){
    circle((raio+offr)*cos(radians(360/numero_linhas+offset)*i),(raio+offr)*sin(radians(360/numero_linhas+offset)*i),2);
  }
}
