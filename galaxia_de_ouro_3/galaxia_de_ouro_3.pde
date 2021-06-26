float raio;
int comprimento; // quanto maior o valor, maior o comprimento
float resolucao; // quanto menor o valor, maior a resolução
float numero_linhas; //potencias de 2
float curva; // valores de 0 a 1
float offs; // offset
float gira_gira_giraffas;

void setup() {
  //size(900,900);
  background(0);
  fullScreen();
  //frameRate(60);
  raio = 75;
  comprimento = 1200;
  resolucao = 1;
  numero_linhas = 8;
  curva = 0.3;
  offs = 0;
  gira_gira_giraffas = 0;
}

void draw() {
  //background(0);
  bg(25);
  translate(width/2, height/2);
  fill(255);
  
  stroke(25,0,75);
  strokeWeight(50);
  raio = 50;
  resolucao = 50;
  curva = -0.5;
  for(int i = 0; i < numero_linhas; i++) {
    offs += (radians(360/numero_linhas)*i);
    //linha_pontilhada(0);
    linha_continua(offs);
  }
  
  stroke(255,0,0);
  strokeWeight(25);
  //circle(raio*cos(radians(mouseX)),raio*sin(radians(mouseX)),5);
  //curva = map(mouseX,0,width,0,2);
  //resolucao = map(mouseY,0,height,0.1,100);
  
  raio = 25;
  resolucao = 50;
  curva = 0.5;
  for(int i = 0; i < numero_linhas; i++) {
    offs += (radians(360/numero_linhas)*i);
    //linha_pontilhada(0);
    linha_continua(offs-gira_gira_giraffas);
  }
  
  stroke(0);
  strokeWeight(50);
  
  raio = 10;
  resolucao = 50;
  curva = -0.5;
  for(int i = 0; i < numero_linhas; i++) {
    //rotate(radians(360/numero_linhas)*i);
    offs += (radians(360/numero_linhas)*i);
    //linha_pontilhada(offs);
    linha_continua(offs+gira_gira_giraffas);
  }
  
  gira_gira_giraffas += 0.01;
  offs = 0;
  
  //linha(1);
  fill(255,0,0);
  noStroke();
  circle(0,0,200);
  //println(mouseX);
  //noLoop();

}

void linha_pontilhada (float offset) {
  for(float i = 0; i < comprimento; i+=resolucao) {
    circle((raio+i)*cos(radians(curva)*i+offset), (raio+i)*sin(radians(curva)*i+offset),5);
    //println(i);
  }
}

void linha_continua (float offset) {
  float prevX = (raio)*cos(radians(curva)+offset);
  float prevY = (raio)*sin(radians(curva)+offset);
  for(float i = 0; i < comprimento; i+=resolucao) {
    line(prevX, prevY, (raio+i)*cos(radians(curva)*i+offset), (raio+i)*sin(radians(curva)*i+offset));
    prevX = (raio+i)*cos(radians(curva)*i+offset);
    prevY = (raio+i)*sin(radians(curva)*i+offset);
  }
}

void bg(float alpha) {
  fill(0,alpha);
  noStroke();
  rect(0,0,width,height);
}
