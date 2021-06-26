class Walker {
  float x;
  float y;
  float xStep;
  float yStep;
  
  Walker(){
    x = width/2;
    y = height/2;
  }
  
  Walker(float tempX, float tempY){
    x = tempX;
    y = tempY;
  }
  
  void display(float modX, float modY) {
    fill(0,25);
    noStroke();
    circle(x+modX,y+modY,10);
  }
  
  void walk() {
    int choice = int(random(100));
    
    if(choice < 25) {
      x++;
    } else if(choice < 50) {
      x--;
    } else if(choice < 75) {
      y++;
    } else if(choice < 100) {
      y--;
    }
    println(choice);
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
  
  void levFlight() {
    float r = random(1);

    if(r<0.01) {
      xStep = random(-100,100);
      yStep = random(-100,100);
    } else {
      xStep = random(-1,1)*10;
      yStep = random(-1,1)*10;
    }
    
    x += xStep;
    y += yStep;
  }
  
  void edge() {
    if(x < 0) {
      x = 0;
    } else if(x > width) {
      x = width;
    }
    
    if(y < 0) {
      y = 0;
    } else if(y > height) {
      y = height;
    }
  }
  
}
