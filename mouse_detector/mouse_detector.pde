//var
float h, r;

//setup
void setup(){
  size(800,600);
  background(0);
  colorMode(HSB);
  r = 100;
}

void draw(){
  //draw
  noStroke();
  fill(h,255,255);
  ellipse(width/2,height/2,r,r);
  
  //logic
  h = 0;
  if (mouseX > 350){
    if(mouseX < 450){
      if(mouseY > 250){
        if(mouseY < 350){
          h = 96;
        }
      }
    }
  }
}
