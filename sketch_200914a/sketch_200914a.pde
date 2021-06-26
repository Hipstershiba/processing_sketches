float ax = 0;
float ay = 0;
float w = 1;
float h = 1;
float mod = 100;
int angulo = 0;
boolean runCheck = false;
boolean sign = false;
boolean keyR = true;

void setup() {
  size (600,600);
  //fullScreen();
  background(255);
  calc();
}

void draw() {
  //background(255);
  keyReleased();
  calc();
  if (runCheck) {
    run();
    continuar ();
  }
  //contAngulo();
  println("w:", w, " // h:", h);
  println("ax:", sin(radians(angulo*w))," //  ay:",cos(radians(angulo*w)));
}

void calc() {
  ax = map(sin(radians(angulo*w)),-1,1,0,2*mod);
  ay = map(cos(radians(angulo*h)),-1,1,0,2*mod);
}

void keyPressed() {
  if (key == 'e' && keyR == true && runCheck == false) {
    keyR = false;
    bg();
  }
  if (key == 'r' && keyR == true) {
    keyR = false;
    if (runCheck) {
      runCheck = false;
    } else {
      runCheck = true;
    }
  }
  if(key==CODED){
    if(keyCode==UP) {
      w+=0.1;
      h-=0.1;
    } else if(keyCode==DOWN) {
      w-=0.1;
      h+=0.1;
    } else if(keyCode==RIGHT) {
      h+=0.1;
    } else if(keyCode==LEFT) {
      h-=0.1;
    } else if(key==SHIFT) {
      
    }
  }
}

void keyReleased() {
  keyR = true;
}

void bg() {
  fill(255,100);
  rect(0,0,width,height);
}

void dot() {
  noStroke();
  fill(0);
  circle(ax,ay,2);
  //circle(ax+width/2,ay+height/2,3);
}

void contAngulo() {
  if (sign){
    if(angulo < 720) {
      angulo++;
    } else {
      sign = false;
    }
  } else {
    if(angulo > 0) {
      angulo--;
    } else {
      sign = true;
    }
  }
}

void run() {
  float axInicial = ax;
  float ayInicial = ay;
  for(float linha = 0; linha < 3; linha++){
    ay = ayInicial+(2*mod)*linha;
    for(float coluna = 0; coluna < 3; coluna++) {
      ax = axInicial+(2*mod)*coluna;
      dot();
    }
  }
  //dot();
  angulo++; 
}

void continuar () {
  if(sign) {
    bg();
    if (sign){
      if(h <= 1) {
        w-=0.1;
        h+=0.1;
      } else {
        sign = false;
      }
    } else {
      if(h >= 0) {
        w+=0.1;
        h-=0.1;
      } else {
        sign = true;
      }
    }
  }
}
