Walker[] daniel = new Walker[6000];
float moveX;
float moveY;
float scaleX;
float ang;
boolean run = true;
boolean record = false;

void setup() {
  size(1600,1600);
  //fullScreen();
  background(255);
  frameRate(60);
  moveX = width/2;
  moveY = height/2;
  ang = 0;
  frameRate(120);
  for(int n = 0; n < daniel.length; n++) {
    //daniel[n] = new Walker();
    daniel[n] = new Walker(0,0);
    //daniel[n] = new Walker(random(width),random(height));
  }
}

void draw() {
  //background(255);
  if(run){
    fill(5,5);
    //rect(0,0,width,height);
    translate(moveX, moveY);
    pushMatrix();
    //rotate(radians(ang));
    for(int n = 300; n < daniel.length; n++){
      rotate(radians(ang));
      daniel[n].display(0,0);
      daniel[n].walk();
      daniel[n].time(0.0003*n);
    }
    popMatrix();
    ang += 0.00001;
  }
  
  if(record) {
    saveFrame("run_16/frame_######.png");
  }
  
  if (frameCount > 5500) {
    record = true;
  }
  
  println(frameCount);
}

//void keyPressed() {
//  if(key=='r') {
//    if(run) {
//      run = false;
//    } else {
//      run = true;
//    }
//  }
//  if(key==CODED) {
//    if(keyCode==LEFT) {
//      moveX += 5;
//    } else if(keyCode==UP) {
//      moveY += 5;
//    } else if(keyCode==RIGHT) {
//      moveX -= 5;
//    } else if(keyCode==DOWN) {
//      moveY -= 5;
//    }
//  }
//}
