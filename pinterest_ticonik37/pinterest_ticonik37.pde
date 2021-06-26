float diametro;
float raio;
float numero_linhas;

void setup() {
  size(900, 900);
  diametro = 100;
  raio = diametro/2;
  numero_linhas = 200;
  colorMode(HSB);
}

void draw() {
  background(0);
  noFill();
  //stroke(255);
  strokeWeight(1);
  translate(width/2, height/2);

  for (float i = 0; i < numero_linhas; i++) {
    //arc(((-width/2+raio)/2), 0, width/2+raio, width/2+raio,0,PI);
    //arc(raio * cos(radians(360/2*i)),raio * sin(radians(360/2*i)),width/2+raio,width/2+raio,0,PI);
    //arc(((width/2-raio)/2) * cos(radians(360/numero_linhas*i)), 1 * sin(radians(360/numero_linhas*i)), width/2+raio, width/2+raio,0+radians(360/numero_linhas*i),PI+radians(360/numero_linhas*i));
    stroke(255, 255-map(i, 0, numero_linhas, 255, 0));
    arc(((width/2-raio)/2) * cos(radians(360/numero_linhas*i)+radians(270)), ((width/2-raio)/2) * sin(radians(360/numero_linhas*i)+radians(270)), width/2+raio-50, width/2+raio-50, 0+radians(360/numero_linhas*i)+radians(270), PI+radians(360/numero_linhas*i)+radians(270));
    arc(((-width/2+raio)/2) * cos(radians(360/numero_linhas*i)+radians(90)), ((-width/2+raio)/2) * sin(radians(360/numero_linhas*i)+radians(90)), width/2+raio-50, width/2+raio-50, 0+radians(360/numero_linhas*i)+radians(90), PI+radians(360/numero_linhas*i)+radians(90));

    //arc(0,0,100,100,0+map(mouseX, 0, width, 0, TWO_PI),PI+map(mouseX, 0, width, 0, TWO_PI));
    //push();
    //fill(255);
    //noStroke();
    //circle(((width/2-raio)/2) * cos(radians(360/numero_linhas*i)), ((width/2-raio)/2) * sin(radians(360/numero_linhas*i)), 5);
    //pop();
  }

  //stroke(255, 0, 0);
  //strokeWeight(1);
  //circle(0, 0, diametro);
  //stroke(0, 255, 0);
  //circle(0, 0, (width/2)-raio);

  //stroke(255, 0, 0);
  //line(mouseX-width/2, -height, mouseX-width/2, height);
  //stroke(0, 0, 255);
  //line(-width, mouseY-height/2, width, mouseY-height/2);
  //stroke(255);
  //circle(mouseX-width/2, mouseY-height/2, 2);
  
  noLoop();
  saveFrame("pinterest_ticonik37.png");
}
