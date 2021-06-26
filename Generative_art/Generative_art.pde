import processing.svg.*;

float angle = 0;
float raio = 150;



Linha[] linha = new Linha[1000];

void setup() {
  size(900,900);
  background(25);
  noLoop();
  beginRecord(SVG, "Generative_art_2.svg");
  
  for (int i = 0; i < 360; i += 1){
    linha[i] = new Linha(angle, raio);
    linha[i].update();
    angle += 1;
  }
  
}

void draw() {
  background(0);
  for (int i = 0; i < 360; i +=1) {
    pushMatrix();
      linha[i].update();
      linha[i].drawLine();
    popMatrix();
  }
  endRecord();
}

void keyPressed() {
  
}
