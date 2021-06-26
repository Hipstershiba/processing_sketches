class Walker {
  float x;
  float y;
  
  Walker(){
    x = width/2;
    y = height/2;
  }
  
  Walker(float tempX, float tempY){
    x = tempX;
    y = tempY;
  }
  
  void display(float modX, float modY) {
    fill(0,50);
    noStroke();
    circle(x+modX,y+modY,1);
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
  
}
