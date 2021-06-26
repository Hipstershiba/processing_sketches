import processing.svg.*;

PVector[] coordenada;
float[] r;
float offset;
float t = 0;
float ang;

boolean record = false;

void setup() {
  size(900, 900);

  coordenada = new PVector[360];
  r = new float[coordenada.length];

  for (int i = 0; i < coordenada.length; i++) {
    ang = radians(map(float(i), 0, float(coordenada.length), 0, 360));
    r[i] = 200;
    coordenada[i] = new PVector(r[i]*cos(ang), r[i]*sin(ang));
  }
}

void draw() {
  background(255);

  //translate(width/2, height/2);

  if (record) {
    beginRecord(SVG, "frames/frames-######.svg");
  }

  for (int w = 0; w < 3; w++) {
    for (int h = 0; h < 4; h++) {
      t += 1.0;
      gerarForma(w * 500, h * 500);
    }
  }

  if (record == false) {
    endRecord();
  }
}

void gerarForma(float x, float y) {
  //t += 0.1;

  for (int i = 0; i < coordenada.length; i++) {
    ang = radians(map(float(i), 0, float(coordenada.length), 0, 360));
    r[i] = 100;
    coordenada[i] = new PVector(r[i]*cos(ang) + x, r[i]*sin(ang) + y);
  }

  for (int i = 0; i < coordenada.length; i+= 5) {
    ang = radians(map(float(i), 0, float(coordenada.length), 0, 360));
    offset = t + (i * 10);
    r[i] = map(noise(offset), 0, 1, 50, 150);
    coordenada[i] = new PVector(r[i]*cos(ang) + x, r[i]*sin(ang) + y);
  }

  for (int i = 0; i < coordenada.length; i+= 15) {
    ang = radians(map(float(i), 0, float(coordenada.length), 0, 360));
    offset = t + (i * 10);
    r[i] = map(noise(offset), 0, 1, 100, 200);
    coordenada[i] = new PVector(r[i]*cos(ang) + x, r[i]*sin(ang) + y);
  }

  noFill();
  stroke(0);
  beginShape();
  for (int i = 0; i < coordenada.length; i++) {
    vertex(coordenada[i].x, coordenada[i].y);
  }
  endShape(CLOSE);
}

void keyReleased() {
  if (key == 'r') {
    if (record == false) {
      record = true;
    } else if (record == true) {
      record = false;
    }
  }
}
