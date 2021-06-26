float x,y,h;
float strokeColorR, strokeColorG, strokeColorB;
float r, g, b;
float ex,ey,d;
void setup(){
  size(800,600);
  background(0);
  h = 30;
  x = (width/2 - h/2);
  y = (height/2 - h/2)+200;
  r = 255;
  g = 255;
  b = 255;
  ex = width/2;
  ey = height/2-100;
  d = 200;
}

void draw(){
  //bg
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  //background(0);
  
  //ellipse
  noStroke();
  fill(r,g,b,100);
  ellipse(ex,ey,d,d);
  
  //botão vermelho
  stroke(strokeColorR);
  strokeWeight(5);
  fill(255,0,0);
  rect((x-50),y,h,h);
  
  //botão verde
  stroke(strokeColorG);
  strokeWeight(5);
  fill(0,255,0);
  rect(x,y,h,h);
  
  //botão azul
  stroke(strokeColorB);
  strokeWeight(5);
  fill(0,0,255);
  rect((x+50),y,h,h);
  
  //logic
  
  //ellipse Drag
    if((mouseX > ex-d/2) && (mouseX < ex+d/2) && ( mouseY > ey-d/2) && (mouseY < ey+d/2)){
      if(mousePressed){
        ex = mouseX;
        ey = mouseY;
      }
    } 
    //else {
    //    ex = ex + random(-5,5);
    //    ey = ey + random(-5,5);
    //  }
  
  // hitbox vermelho
  if((mouseX > (x-50)) && (mouseX < (x-50) + h) && ( mouseY > y) && (mouseY < y + h)){
    strokeColorR = 255;
    if(mousePressed){
      r = 255;
      g = 0;
      b = 0;
    }
  } else {
    strokeColorR = 0;
  }
  
  // hitbox verde
  if((mouseX > x) && (mouseX < x + h) && ( mouseY > y) && (mouseY < y + h)){
    strokeColorG = 255;
    if(mousePressed){
      r = 0;
      g = 255;
      b = 0;
    }
  } else {
    strokeColorG = 0;
  }
  
  // hitbox azul
  if((mouseX > (x+50)) && (mouseX < (x+50) + h) && ( mouseY > y) && (mouseY < y + h)){
    strokeColorB = 255;
    if(mousePressed){
      r = 0;
      g = 0;
      b = 255;
    }
  } else {
    strokeColorB = 0;
  }
  
  //println("ex:",ex,"  //   ey:",ey);
  println("mouseX:",mouseX, "  /   ex-d/2:", (ex-d/2), "  /   ex+d/2:", (ex+d/2), "  //   mouseY", mouseY, "  /   ey-d/2", (ey-d/2), "  /   ey+d/2", (ey+d/2));
  
}
