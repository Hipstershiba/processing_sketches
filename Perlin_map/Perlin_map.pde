import processing.svg.*;

Objeto[] o = new Objeto[100000];

float size;
float time;

int index;

boolean salvar;

void setup() {
  size(598,840);
  //fullScreen();
  background(255);
  //noLoop();
  beginRecord(SVG, "Generative_art_2.svg");
  
  for(int i = 0; i < o.length; i++) {
    o[i] = new Objeto();
  }
  
  size = 7;
  
  time = 0;
  
  index = 1;
  
}

void draw() {
  bg();
  
  //size = map(noise(time),0,1,5,25);
  
  //o.applyForce(o.rotationNoise(time));
  //o.update();
  drawTelaToda();
  

  index = 1;
  time += 0.004;
  
  if(salvar == true) {
    endRecord();
  }
}

void bg() {
  push();
  fill(255,255);
  noStroke();
  rect(0,0,width,height);
  pop();
}

void drawTelaToda() {
  //margem; margem; espaçamento;
  for(float y = size * 2; y < height - size * 1.5; y += size * 1.4) {
    for(float x = size * 2; x < width - size * 1.5; x += size * 1.4) {
      o[index].applyForce(o[index].perlinRotation(time + index));
      o[index].update3();
      o[index].display(x, y, size);
      index++;
    }
  }
}

void keyPressed() {
  if (key == 'r') {
    salvar = true;
  }
  salvar = false;
}
