Walker[] daniel = new Walker[10000];
float moveX;
float moveY;
float scaleX;
float ang;
boolean run = false;

void setup() {
  //size(600,600);
  fullScreen();
  background(75);
  frameRate(60);
  moveX = width/2;
  moveY = height/2;
  ang = 0;
  for(int n = 0; n < daniel.length; n++) {
    //daniel[n] = new Walker();
    daniel[n] = new Walker(0,0);
    //daniel[n] = new Walker(random(width),random(height));
  }
}

void draw() {
  if(run){
    fill(5,255);
    rect(0,0,width,height);
    translate(moveX,moveY);
    pushMatrix();
    rotate(radians(ang));
    for(int n = 0; n < daniel.length; n++){
      rotate(radians(ang));
      daniel[n].display(0,0);
      daniel[n].walk();
      daniel[n].time(0.0000002*n);
    }
    popMatrix();
    ang+=0.02;
  }
}

void keyPressed() {
  if(key=='r') {
    if(run) {
      run = false;
    } else {
      run = true;
    }
  }
  if(key==CODED) {
    if(keyCode==LEFT) {
      moveX += 5;
    } else if(keyCode==UP) {
      moveY += 5;
    } else if(keyCode==RIGHT) {
      moveX -= 5;
    } else if(keyCode==DOWN) {
      moveY -= 5;
    }
  }
}
