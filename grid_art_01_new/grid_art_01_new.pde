Dot[] dot = new Dot[int(sq(9))];
int count;
float angle;

void setup() {
  //size(600, 600);
  fullScreen();
  for(int i = 0; i < dot.length; i++) {
    dot[i] = new Dot(1, 1, 0.005*(i+1));
  }
}

void draw() {
  count = 0;
  //background(255);
  fill(255,50);
  rect(0,0,width,height);
  push();
  translate(width/2,height/2);
  for(int linha = 0; linha < sqrt(dot.length) ; linha++) { 
    for (int coluna = 0; coluna < sqrt(dot.length); coluna++) {
      push();
      translate((dot[count].orbitSpacing*2)*(coluna-((sqrt(dot.length)-1)/2)),(dot[count].orbitSpacing*2)*(linha-((sqrt(dot.length)-1)/2)));
      dot[count].center();
      dot[count].orbit();
      dot[count].rotation();
      pop();
        count++;
    }
  }
  pop();
}
