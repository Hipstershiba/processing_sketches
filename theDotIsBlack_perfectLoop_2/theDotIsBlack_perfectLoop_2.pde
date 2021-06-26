float x = 300;
float y = 300;
float angle = 90;
float d = 20;
float hue;
boolean run;

void setup() {
  fullScreen();
  //size(900, 900);
  colorMode(HSB);
  background(30);
  //surface.setLocation(987, 70);
}

void draw() {
  //background(0);
  //hue = map(cos(radians(angle)),-1,1,0,255);
  
  fill(0,map(cos(radians(angle/5)),-1,1,10,255));
  noStroke();
  rect(0,0,width,height);
  if(run) {
    translate(width/2, height/2);
    rotate(radians(angle/0.5));
    for (float a = 0; a < 360; a += map(cos(radians(angle/0.1)),-1,1,5,60)) {
      pushMatrix();
      hue = map(cos(radians(angle/0.5)),-1,1,0,255);
      if(angle<360) rotate(radians(a)*cos(radians(angle)));
      else rotate(radians(a));
      stroke(hue, 175, 255);
      strokeWeight(map(sin(radians(angle)),-1,1,0,5));
      line(x*sin(radians(angle)), 0, 0, y-d/2);
      
      noStroke();
      //stroke(a, 175, 255);
      fill(hue, 175, 255);
      //noFill();
      ellipse(x*sin(radians(angle/0.5)), x*cos(radians(angle/1)), d*sin(radians(angle)), d*sin(radians(angle)));
      
      stroke(hue, 175, 255);
      noFill();
      ellipse(x*cos(radians(angle/0.5)), x*cos(radians(angle/0.5)), d*sin(radians(angle)), d*sin(radians(angle)));
      popMatrix();
    }
    angle++;
  }
}

void keyPressed() {
  if(run) run = false;
  else run = true;
    
}
