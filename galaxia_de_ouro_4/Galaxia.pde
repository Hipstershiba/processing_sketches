class Galaxy {

  float raio;
  float comprimento; // quanto maior o valor, maior o comprimento
  float resolucao; // quanto menor o valor, maior a resolução
  float numero_linhas; //potencias de 2
  float curva; // valores de 0 a 1
  float offs; // offset
  float t;

  Galaxy (float d_raio, float d_numero_linhas) {
    raio = d_raio;
    numero_linhas = d_numero_linhas;
    colorMode(HSB);
  }

  void linha_pontilhada (float offset) {
    strokeWeight(1);
    for (float i = 0; i < comprimento; i+=resolucao) {
      circle((raio+i)*cos(radians(curva)*i+offset), (raio+i)*sin(radians(curva)*i+offset), 2);
    }
  }

  //void linha_continua (float offset) {
  //  float prevX = (raio)*cos(radians(curva)+offset);
  //  float prevY = (raio)*sin(radians(curva)+offset);
  //  noFill();
  //  beginShape();
  //  for (float i = 0; i < comprimento; i+=resolucao) {
  //    vertex(prevX, prevY, (raio+i)*cos(radians(curva)*i+offset), (raio+i)*sin(radians(curva)*i+offset));
  //    prevX = (raio+i)*cos(radians(curva)*i+offset);
  //    prevY = (raio+i)*sin(radians(curva)*i+offset);
  //  }
  //  endShape();
  //}
  
  void linha_continua (float offset) {
    float prevX = (raio)*cos((radians(curva))+offset);
    float prevY = (raio)*sin((radians(curva))+offset);
    noFill();
    beginShape();
    for (float i = 0; i < comprimento; i+=resolucao) {
      vertex(prevX, prevY, (raio+i)*cos((radians(curva)*i)+offset+t), (raio+i)*sin((radians(curva)*i)+offset+t));
      prevX = (raio+i)*cos((radians(curva)*i)+offset+t);
      prevY = (raio+i)*sin((radians(curva)*i)+offset+t);
    }
    endShape();
  }

  void draw_galaxy(float d_comprimento, float d_resolucao, float weight, float d_curva, float d_offs, float dt) {
    comprimento = d_comprimento;
    resolucao = d_resolucao;
    curva = d_curva;
    offs = radians(d_offs);
    strokeWeight(weight);
    for (int i = 0; i < numero_linhas; i++) {
        stroke(225,225,175,255-map(i,0,numero_linhas,0,255));
      offs += radians(360/numero_linhas);
      //linha_pontilhada(offs);
      linha_continua(offs);
    }
    offs = 0;
    t += dt;
  }
}
