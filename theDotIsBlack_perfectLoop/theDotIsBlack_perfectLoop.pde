float x = 300;
float y = 300;
float angle = 90;
float d = 20;
boolean run;

void setup() {
  fullScreen();
  //size(900, 900);
  colorMode(HSB);
  //surface.setLocation(987, 70);
}

void draw() {
  background(0);
  if(run) {
    translate(width/2, height/2);
    rotate(radians(angle/3));
    for (float a = 0; a < 360; a += 10) {
      pushMatrix();
      if(angle<360) rotate(radians(a)*cos(radians(angle)));
      else rotate(radians(a));
      stroke(255);
      strokeWeight(3);
      line(x*sin(radians(angle)), 0, 0, y-d/2);
      
      noStroke();
      fill(255);
      ellipse(x*sin(radians(angle)), 0, d, d);
      
      stroke(255);
      noFill();
      ellipse(0, y, d, d);
      popMatrix();
    }
    angle++;
  }
}

void keyPressed() {
  if(run) run = false;
  else run = true;
    
}
