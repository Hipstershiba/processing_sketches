float startAngle = 0;
float angleVel = 0.0293;
float lineLength = 5;


void setup() {
  size (900,900);
  
}

void draw() {
  bg();
  
  //float lineLength = mouseY;
  
  startAngle += 0.015;
  montains();
}

void montains() {
  float angle = startAngle;
  //lineLength = mouseX/10;
    for (int x = 0; x <= width; x += 1) {
      float t = (x-450)/225;
      println(t);
      PVector y = new PVector (map(noise(angle-angleVel),-1,1,0,600),map(noise(angle),-1,1,0,600));
      println(y.x,y.y);
      stroke(25,200,75);
      strokeWeight(1);
      noFill();
      //circle(x,y.y,5);
      line(x,y.x,x+lineLength,y.y);
      angle += angleVel;
    }
}

void bg() {
  pushMatrix();
  translate(0,0);
  noStroke();
  fill(0,25);
  rect(0,0,width,height);
  popMatrix();
}
