Objeto o;
float raio;
float a;
float theta;
float lado;
float cont;

float som;
float frame = 0;

void setup() {
  size(900, 900, P3D);
  //fullScreen();
  
  colorMode(HSB);
  
  a = 0;
  theta = 0.1;
  lado = 90;
  raio = sqrt((pow(lado, 2))/2);
  cont = 0;
}

void draw() {

  
  if (cont % 2 == 0) {
    background(60,155,100);
    noStroke();
    fill(60,155,50);
    //stroke(60,155,200);
    //noFill();
    int n = 0;

    for (float x = lado/2; x < width; x += lado*2) {
      for (float y = lado/2; y < height; y += lado) {
        n++;
        if (n % 2 == 0) {
          beginShape(); 
          a = 45;
          for (int i = 0; i < 4; i++) {
            vertex(x+lado+((raio) * cos(radians(a + theta))), y+((raio) * sin(radians(a + theta))));
            a += 90;
          }
          endShape(CLOSE);
        } else {
          beginShape(); 
          a = 45;
          for (int i = 0; i < 4; i++) {
            vertex(x+((raio) * cos(radians(a + theta))), y+((raio) * sin(radians(a + theta))));
            a += 90;
          }
          endShape(CLOSE);
        }
      }
    }
  } else {
    background(60,155,50);
    noStroke();
    fill(60,155,100);
    //stroke(60,155,200);
    //noFill();
    int n = 0;

    for (float x = lado/2; x < width; x += lado*2) {
      for (float y = lado/2; y < height; y += lado) {
        n++;
        if (n % 2 == 0) {
          beginShape(); 
          a = 45;
          for (int i = 0; i < 4; i++) {
            vertex(x+((raio) * cos(radians(a + theta))), y+((raio) * sin(radians(a + theta))));
            a += 90;
          }
          endShape(CLOSE);
        } else {
          beginShape(); 
          a = 45;
          for (int i = 0; i < 4; i++) {
            vertex(x+lado+((raio) * cos(radians(a + theta))), y+((raio) * sin(radians(a + theta))));
            a += 90;
          }
          endShape(CLOSE);
        }
      }
    }
  }

  //faz girar
  theta = som;
  //som = 90 * (pow (sin (radians (frame) / 2), 4));
  //som = 90 * (pow (sin (frame / 38), 4));
  som = 90*(pow(sin(radians(frame/2)), 2));
  
  frame +=3;
  if ( frame >= 181) {
    frame = 0;
  }
  
  if (theta >= 90) {
    theta = 0.1;
    som = 0;
    cont++;
  }
  
  println(cont, "//", som, "//", frame, "//", theta);
  
  if (cont == 2) {
    //noLoop();
  }
}
