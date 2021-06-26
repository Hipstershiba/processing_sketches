float x,y,l,a,h,t;

void setup(){
  size (960,720);
  background(0);
  x = width/2;
  y = height/2;
  l = 50;
  a = x;
}

void draw(){
  
  noStroke();
  fill(0,0,0,5);
  rect(0,0,width,height);
  
  //background(0);
  
  noFill();
  //strokeWeight(random(1,10));
  stroke(h,175,255);
  ellipse(x,y,a,a);
  
  noFill();
  strokeWeight(random(1,10));
  stroke(h,175,255);
  ellipse(x,y,x,a);
  
  noFill();
  //strokeWeight(random(1,10));
  stroke(h,175,255);
  ellipse(x,y,x,x);
  
  //a = mouseY;
  
  //x = x + random(-5,5);
  //y = y + random(-5,5);
  
  a = 240 + ((240) * cos(t));
  
  t = t + 0.01;
  
  if (a < 1){
    a = x;
  }
  
  println("a:", a, " //  h:", h);
  
   if (h > 255){
    h = 0;
  }
  else {
    h = h + 1;
  }
}
