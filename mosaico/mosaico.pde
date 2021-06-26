//var
float x,y,d,v,h,n;

//setup
void setup(){
  size (800,600);
  background(0);
  colorMode(HSB);
  //d = round(random(5,30)); // diametro
  //v = round(random(1,10)); // velocidade
  d = 4;
  v = 4;
  h = 0;                   // hue
  n = 256 / ( width / v ); // variação do hue
  x = d/2;                 //
  y = d/2;
}

//draw
void draw(){
  //shape
  //background(0);
  noStroke();
  fill(h,255,255);
  ellipse(x,y,d,d);
  
  //logic
  //psosição do objeto:
  if (x > width-d/2-1){
    println("reset x");
    println("reset hue");
    x = d/2;
    h = 0;
    if (y > height-d/2-1){
      println("reset Y");
      y = d/2;
    }
    else {
    y = y + v;
    }
  }
  else {
    x = x + v;
  }
  println("x:", x, " //  y:", y, " //   Hue:",h);
  
  //cores
  h = random(150,200);
  //if (h < 255){
  //  h = h + n;
  //}
  //else {
  //  h = 0;
  //}
}
