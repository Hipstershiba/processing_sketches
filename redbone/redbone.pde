float raio;
float diametro;
float resolucao; // numero de pontos
float noiset;
float modX;
float modY;
float amplitude;

void setup() {
  size(900, 900, P3D);
  raio = 200;
  diametro = raio*2;
  resolucao = 360;
  noiset = 0;
  modX = 0;
  modY = 0;
  amplitude = 300;
  background(0);
}

void draw() {
  //background(0);
  bg();

  //push();
  //stroke(255, 0, 0);
  //line(width/2, 0, width/2, height);
  //stroke(0, 0, 255);
  //line(0, height/2, width, height/2);
  //stroke(0, 255, 0);
  //noFill();
  //circle(width/2, width/2, diametro);
  //pop();

  translate(width/2, height/2);
  for (float j = 0; j < 200; j+=10) {
    float prevX = (raio-j+modX) * cos(radians(360/resolucao));
    float prevY = (raio-j+modY) * sin(radians(360/resolucao));
    beginShape();
    for (float i = 0; i < resolucao; i++) {
      noFill();
      stroke(255,255-map(i,0,resolucao,255,0));
      modX = map(noise(noiset+(i/80)), 0, 1, 0, amplitude);
      modY = map(noise(noiset+(i/80)), 0, 1, 0, amplitude);
        vertex((raio-j+modX) * cos(radians(360/resolucao*i)), (raio-j+modY) * sin(radians(360/resolucao*i)), prevX, prevY);
      prevX = (raio-j+modX) * cos(radians(360/resolucao*i));
      prevY = (raio-j+modY) * sin(radians(360/resolucao*i));
      //noiset += 0.0001;
    }
    endShape();
  }

  //modX = map(noise(noiset),0,1,0,25);
  //modY = map(noise(noiset),0,1,0,25);
  noiset += 0.005;

  //noLoop();
  //saveFrame("new_frame.png");
}

void bg(){
  noStroke();
  fill(0,255);
  rect(0,0,width,height);
}
