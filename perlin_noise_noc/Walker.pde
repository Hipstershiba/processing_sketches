class Walker {
  float walkerX;
  float walkerY;
  float tx;
  float ty;
  float prevx;
  float prevy;
  
  Walker(){
    tx = 0;
    ty = 10000;
    walkerX = map(noise(tx),0,1,0,width);
    walkerY = map(noise(ty),0,1,0,height);
  }
  
  Walker(float tempX, float tempY){
    walkerX = tempX;
    walkerY = tempY;
    tx = 0;
    ty = 10000;
  }
  
  void display() {
    //fill(0,255);
    //noStroke();
    noFill();
    stroke(255,25);
    strokeWeight(1);
    circle(walkerX,walkerY,100);
  }
  
  void displayln() {
    begin
    stroke(255,30);
    strokeWeight(5);
    line(prevx,prevy,walkerX,walkerY);
  }
  
  void walk() {
    prevx = walkerX;
    prevy = walkerY;
    walkerX = map(noise(tx),0,1,0,width);
    walkerY = map(noise(ty),0,1,0,height);
  }
  
  void time(float dt) {
    tx += dt;
    ty += dt;
  }
  
  void edge() {
    if(walkerX < 0) {
      walkerX = width;
    } else if (walkerX > width) {
      walkerX = 0;
    }
    
    if(walkerY < 0) {
      walkerY = height;
    } else if (walkerY > height) {
      walkerY = 0;
    }
  }
  
}
