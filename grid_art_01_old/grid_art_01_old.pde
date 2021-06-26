float r = 50;
float ang = 0;
float globalSpacing = 80;
int linhas = 1;
int colunas = 3;
int option = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  if (option==1) {
    push();
    translate(width/2, height/2);
    dot(0, 0);
    pop();
  } else if (option==2) {
    push();
    translate(width/2, height/2);
    dotAnimation(globalSpacing);
    pop();
  } else if (option==3) {
    push();
    translate(width/2-globalSpacing*(colunas-1), height/2);
    dotGrid(globalSpacing);
    pop();
  }
  angleCounter(2);
}

  void dot(float x, float y) {
    push();
    noStroke();
    fill(0);
    circle(x, y, r);
    pop();
  }

void dotAnimation(float spacing) {
  push();
  rotate(radians(ang));
  for (int i = 0; i < 2; i++) {
    dot(0, 0+(spacing*i));
  }
  pop();
}

void angleCounter(float velocity) {
  //if(option < 3) {
  ang += velocity;
}

void dotGrid(float spacing) {
  for (int linha = 0; linha < linhas; linha++) {
    for (int coluna = 0; coluna < colunas; coluna++) {
      push();
      translate((2*spacing)*coluna, 0);
      dotAnimation(spacing);
      pop();
    }
  }
}

void mouseClicked() {
  if (option < 3) {
    option++;
  } else {
    option = 0;
  }
}
