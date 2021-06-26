PImage img;

void setup() {
  //size(1080,1350);
  size(540,675);
  img = loadImage("camisa-dinossauro-2.jpg");
  background(0);
}

void draw() {
  for (int i = 0 ; i < 1000; i++) {
    float x = random(img.width);
    float y = random(img.height);
    color c = img.get(int(x), int(y));
    fill(c*2,25);
    noStroke();
    //float size = random(1,5);
    ellipse(x/2,y/2,1,10);
    ellipse(x/2,y/2,10,1);
  }
}
