float desvio;
float media;
void setup() {
  size(600,600);
  background(255);
  desvio = 5;
  media = 300;
}

void draw() {
  //background(255);
  if(mousePressed){
    for(int i = 0; i < 10; i++) {
      float x = desvio * randomGaussian() + mouseX;
      float y = (desvio*2) * randomGaussian() + mouseY;
      noStroke();
      fill(0,2 * randomGaussian() + 5);
      ellipse(x,y,25,25);
    }
  }
}
