float circleX, circleY, x, y;

void setup(){
   size (800,600);
   //background(0);
   circleX = 400;
   circleY = 300;
   x = 20;
   y = 20;
}

void draw(){
  
  //draw
  noStroke();
  fill(0,0,0,5);
  rect(0,0,800,600);
  
  noStroke();
  fill(random(0,30),random(175,200),random(100,175),random(100));
  ellipse(circleX,circleY,x,y);
  
  //logic
  circleX = circleX + random(-10,10);
  circleY = circleY + random(-10,10);
  x = x + random(-1,1);
  y = x;
 
  //reset to center
  if(circleX > 800){
    circleX = 400;
  }
  if(circleY > 600){
    circleY = 300;
  }
  if(circleX < 0){
    circleX = 300;
  }
  if(circleY < 0){
    circleY = 400;
  }  
  
  
  println(circleX," / ", circleY," / ", x);
}
