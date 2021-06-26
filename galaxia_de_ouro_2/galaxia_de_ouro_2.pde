int numero_linhas;
float raio;
float numero_aneis;
float resolucao;
float a = 0;

void setup() {
  //size(900,900);
  fullScreen();
  numero_linhas = 24;
  numero_aneis = 500;
  raio = 15;
  resolucao = 5;
  
}

void draw() {
  background(0);
  translate(width/2,height/2);
  fill(255);
  noStroke();
  for (int i = 0; i < numero_aneis; i++){
    anel(resolucao*i, i/100+a);
  }
  fill(255,0,0);
  circle(0,0,5);
  
  a += 0.1; 
  
  numero_linhas = mouseX;
  
  //noLoop();
}

void anel(float offr, float offset) {
  //fill(255);
  noStroke();
  //rotate(radians(offset));
  for (int i = 0; i < numero_linhas; i++){
    circle((raio+offr)*cos(radians((360)/numero_linhas)*i),(raio+offr)*sin(radians(360/numero_linhas)*i),3);
    //circle((raio+offr)*cos((raio+offr)*sin(radians(360/numero_linhas)*i)),(raio+offr)*sin((raio+offr)*cos(radians((360)/numero_linhas)*i)),3);
  }
}
