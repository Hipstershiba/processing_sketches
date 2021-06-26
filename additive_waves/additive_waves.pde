int xSpacing = 1; //distancia entre os pontos
int waveWidth;    //largura da onda
int maxWaves = 2; //numero total de ondas

float ang = 0.0;
float aAcc = 0.0;
float[] amp = new float[maxWaves]; //altura da onda
float[] dx = new float[maxWaves];  //
float[] yValues;                   //array pra guardar os valores de y

void setup() {
  //size(900,900);
  fullScreen(2);
  colorMode(HSB,255,255,255,100);
  smooth();
  waveWidth = width + 16;
  
  for(int i = 0; i < maxWaves; i++) {
    amp[i] = random(100,200);
    float period = random (100,600);
    dx[i] = (TWO_PI / period) * xSpacing;
  }
  
  yValues = new float[waveWidth/xSpacing];
}

void draw() {
  bg();
  calcWave();
  renderWave();
}

void bg() {
  pushMatrix();
  translate(0,0);
  noStroke();
  fill(255,255);
  rect(0,0,width,height);
  popMatrix();
}

void calcWave() {
  //aAcc = map(mouseX,0,width,0.02,90);
  //aAcc = 41.8721;
  aAcc = 0.023;
  println(aAcc, ang);
  ang += aAcc;
  if(ang > 200000) ang = 0;
  
  
  for (int i = 0; i < yValues.length; i++) {
    yValues[i] = 0;
  }
  
  for(int j = 0; j < maxWaves; j++) {
    float x = ang;
    for(int i = 0; i < yValues.length; i++) {
      if(j % 2 == 0) {
        yValues[i] += sin(x)*amp[j];
      } else {
        yValues[i] += cos(x)*amp[j];
      }
      x += dx[j];
    }
  }
}

void renderWave() {
  noStroke();
  fill(75,200,5);
  for(int x = 0; x < yValues.length; x++) {
    if(x > 0) {
    ellipseMode(CENTER);
    //ellipse(x*xSpacing,height/2+yValues[x],5,5);
    //ellipse((x-1)*xSpacing,height/2+yValues[x-1],2,2);
    }
    if(x > 0){
    stroke(map(x*xSpacing,0,width,70,90),175,0);
    strokeWeight(2);
    //line(x*xSpacing,height/2+yValues[x],(x-1)*xSpacing,height/2+yValues[x-1]);
    line((x)*xSpacing,height/2+yValues[x],(x-1)*xSpacing,height/2+yValues[x-1]);
    }
  }
}
